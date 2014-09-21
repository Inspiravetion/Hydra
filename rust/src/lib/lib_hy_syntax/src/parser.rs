use std::comm::{channel, Receiver};
use token::*;
use ast::*;
use std::from_str::from_str;
use scanner;
use std::collections::hashmap::HashMap;

pub type AST       = Vec<Box<Stmt>>;
pub type ASTStream = Receiver<Box<Stmt>>;

///Scan and Parse a file in parallel producing an AST
pub fn parse_file_async(path : &str) -> AST {
    let tokens = scanner::stream_from_file(path);
    AsyncParser::new(tokens).parse_sync()
}

///Scan and then Parse a file producing an AST
pub fn parse_file_sync(path : &str) -> AST {
    let tokens = scanner::tokenize_file(path);
    SyncParser::new(tokens).parse_sync()
}

///Scan and Parse a string in parallel producing an AST
pub fn parse_str_async(code : &str) -> AST {
    let tokens = scanner::stream_from_str(code);
    AsyncParser::new(tokens).parse_sync()
}

///Scan and then Parse a string producing an AST
pub fn parse_str_sync(code : &str) -> AST {
    let tokens = scanner::tokenize_str(code);
    SyncParser::new(tokens).parse_sync()
}

///Scan and Parse a file in parallel producing a stream of top level AST nodes
pub fn parse_and_stream_file_async(path : &str) -> ASTStream {
    let (sendr, recvr) = channel();
    let path = path.to_string();

    spawn(proc(){
        let tokens = scanner::stream_from_file(path.as_slice());
        AsyncParser::new(tokens).parse_async(sendr);
    });

    recvr
}

///Scan and then Parse a file producing a stream of top level AST nodes
pub fn parse_and_stream_file_sync(path : &str) -> ASTStream {
    let (sendr, recvr) = channel();
    let path = path.to_string();

    spawn(proc(){
        let tokens = scanner::tokenize_file(path.as_slice());
        SyncParser::new(tokens).parse_async(sendr);
    });

    recvr
}

///Scan and Parse a string in parallel producing a stream of top level AST nodes
pub fn parse_and_stream_str_async(path : &str) -> ASTStream {
    let (sendr, recvr) = channel();
    let path = path.to_string();

    spawn(proc(){
        let tokens = scanner::stream_from_str(path.as_slice());
        AsyncParser::new(tokens).parse_async(sendr);
    });

    recvr
}

///Scan and then Parse a string producing a stream of top level AST nodes
pub fn parse_and_stream_str_sync(path : &str) -> ASTStream {
    let (sendr, recvr) = channel();
    let path = path.to_string();

    spawn(proc(){
        let tokens = scanner::tokenize_str(path.as_slice());
        SyncParser::new(tokens).parse_async(sendr);
    });

    recvr
}

pub struct AsyncParser {
    tokens      : Receiver<Token>,
    presidences : HashMap<Ident, int>,
    peek_tok    : Option<Token>,
    tok         : Option<Token>,
    parsing_gen : bool
}

pub struct SyncParser {
    tokens      : Vec<Token>,
    presidences : HashMap<Ident, int>,
    tok_idx     : int, 
    parsing_gen : bool
}

pub trait HydraParser : HydraBaseParser {
    fn parse_sync(&mut self) -> AST {
        let mut stmts = Vec::new();

        self.for_each_stmt(|stmt : Box<Stmt>|{
            stmts.push(stmt);
        });

        stmts
    }  

    fn parse_async(&mut self, sendr : Sender<Box<Stmt>>) {
        self.for_each_stmt(|stmt : Box<Stmt>|{
            sendr.send(stmt);
        });
    }
}

///abc or abc.def or a.b.c, d.e.f
///TODO: merge prop_path and prop_paths to return one of these so 
///prefix...and eventually postfix...unary operators can be parsed
enum IdentPrefix {
    SingleIdent(Ident),
    SingleIdentList(Vec<Ident>),
    MultiIdentList(Vec<Vec<Ident>>)
}

trait HydraBaseParser {
    
    ///Returns the current token
    fn tok(&mut self) -> Token;

    ///Returns the next token or None if at EOF
    fn peek(&mut self) -> Option<Token>;

    ///Consumes the next token and returns true if
    ///possible, otherwise returns false if at EOF
    fn next_opt(&mut self) -> bool;

    ///Returns a tokens presidence
    fn get_presidence(&mut self, &Token) -> int;

    ///Sets the presidence for a token
    fn set_presidence(&mut self, &Token, int);

    ///Returns whether or not parser is currently parsing a generator
    ///definition
    fn parsing_generator(&self) -> bool;

    ///Let Parser know it is parsing a generator definition
    fn start_gen_parsing(&mut self);

    ///Let Parser know it is no longer parsing a generator definition
    fn end_gen_parsing(&mut self);

    ///Advance to next token or fail! if at EOF
    fn next(&mut self) {
        if !self.next_opt() {
            fail!("Unexpected end of input")
        };
    }

    ///If the next token is the passed token type, then consume it and return 
    ///true, otherwise false
    fn next_is(&mut self, typ : TokenType) -> bool {
        match self.peek() {
            Some(tok) => {
                if tok.typ == typ {
                    self.next();
                    true
                } else {
                    false
                }
            },
            None => false
        }
    }

    ///Consume the next token if it is of the expected token type, otherwise fail!
    fn expect(&mut self, typ : TokenType){
        if !self.next_is(typ) {
            let tok = self.tok();
            fail!(
                "\n\nExpected {:?} at '{}' => {}:{}\n\n",
                typ,
                tok.text,
                tok.line, 
                tok.col
            );
        }
    }

    fn for_each_stmt(&mut self, cb : |Box<Stmt>|) {
        loop {
            let stmt = match self.program_stmt() {
                Some(s) => s,
                None    => return
            };
            cb(stmt);
        }
    }

    fn program_stmt(&mut self) -> Option<Box<Stmt>> {
        match self.peek() {
            Some(tok) => {
                let stmt = match tok.typ {
                    For => {
                        self.next();
                        self.for_in_loop()
                    },
                    While => {
                        self.next();
                        self.while_loop()
                    },
                    Var => { 
                        self.next();
                        self.var_decl()
                    },
                    Identifier => {
                        self.func_call_or_assignment_stmt()
                    },
                    If => {
                        self.next();
                        self.if_else_stmt()
                    },
                    Function => {
                        self.next();
                        self.function_def()
                    },
                    Operator => {
                        self.next();
                        self.operator_def()
                    },
                    Generator => {
                        self.next();
                        self.expect(Function);
                        self.start_gen_parsing();
                        self.function_def()
                    }, 
                    NewLine => {
                        self.next();
                        match self.program_stmt() {
                            Some(stmt) => stmt,
                            None => return None
                        }
                    },
                    _   => fail!(
                            "Statement at {}:{} not allowed at top level", 
                            self.tok().line,
                            self.tok().col
                        )
                };
                Some(stmt)
            },
            None => {
                None
            }
        }
    }

    fn function_def(&mut self) -> Box<Stmt> {
        self.expect(Identifier);
        let func_name = self.tok().text.to_string();

        self.expect(Lparen);
        //TODO: this should be opt_idents();
        let params = self.idents();
        self.expect(Rparen);

        let stmts = self.block(); //TODO: this should also be optional

        if self.parsing_generator() {
            self.end_gen_parsing();
            GeneratorDef::new(func_name, params, stmts)
        } else {
            FunctionDef::new(func_name, params, stmts)
        }
    }

    fn operator_def(&mut self) -> Box<Stmt> {
        self.expect(Lbracket);
        
        if !self.next_is(Int_Literal) {
            fail!("Expected Int for operator presidence");
        }

        let pres = from_str::<int>(self.tok().text.as_slice()).unwrap();

        self.expect(Rbracket);

        match self.peek() {
            Some(tok) => {
                if tok.typ != Identifier {
                    fail!("Expected Identifier at {}:{}", tok.line, tok.col);
                }

                self.set_presidence(&tok, pres);
            },
            None => fail!("Unexpected end of input")
        };

        self.function_def()
    }

    fn var_decl(&mut self) -> Box<Stmt> {
        let vars = self.idents();

        if self.next_is(Assign) {
            let vals = self.exprs();

            self.expect(Semicolon);

            VarAssign::new(vars, vals)
        } else {
            self.expect(Semicolon);
            VarDecl::new(vars)
        }
    }

    fn while_loop(&mut self) -> Box<Stmt> {
        let cond = self.expr();
        let stmts = self.do_block();

        WhileLoop::new(cond, stmts)
    }

    fn for_in_loop(&mut self) -> Box<Stmt> {
        let start = self.tok();//use to make span

        let bound_vars = self.idents();
        self.expect(In);

        let generator = self.expr();
        let stmts = self.do_block();

        ForInLoop::new(bound_vars, generator, stmts)
    }

    fn if_else_stmt(&mut self) -> Box<Stmt> {
        let mut branches = Vec::new();

        let if_cond = self.expr();
        self.expect(Then);
        let if_stmts = self.stmts();

        branches.push(IfElseBranch::new(Some(if_cond), if_stmts));

        loop {
            if self.next_is(End){
                break;
            }

            self.expect(Else);

            if self.next_is(If) {
                let else_if_cond = self.expr();
                self.expect(Then);
                let else_if_stmts = self.stmts();

                branches.push(IfElseBranch::new(Some(else_if_cond), else_if_stmts));
            } else {
                let else_stmts = self.stmts();
                branches.push(IfElseBranch::new(None, else_stmts));
            }
        }

        IfElseStmt::new(branches)
    }

    fn ident_prefix(&mut self) -> Vec<Ident> {
        let mut idents = Vec::new();

        idents.push(self.ident());

        loop {

            if !self.next_is(Period) {
                break;
            }

            idents.push(self.ident());
        }

        idents
    }

    fn stmt_ident_prefixs(&mut self) -> IdentPrefix {
        let first = self.ident_prefix();

        if self.next_is(Comma) {
            let mut prop_paths = Vec::new();
            prop_paths.push(first);
            prop_paths.push(self.ident_prefix());

            loop {
                if !self.next_is(Comma) {
                    break;
                }
                
                prop_paths.push(self.ident_prefix());
            }

            MultiIdentList(prop_paths)
        } else {
            if first.len() == 1 {
                SingleIdent(first[0].to_string())
            } else {
                SingleIdentList(first)
            }
        }
    }

    fn expr_ident_prefixs(&mut self) -> IdentPrefix {
        let prefix = self.ident_prefix();

        if prefix.len() == 1 {
            SingleIdent(prefix[0].to_string())
        } else {
            SingleIdentList(prefix)
        }
    }

    fn func_call(&mut self, prop_path : Vec<Ident>) -> Box<Expr> {
        self.expect(Lparen);
        let params = self.exprs();
        self.expect(Rparen);

        FuncCall::new(prop_path, params)
    }

    fn func_call_stmt(&mut self, prop_paths : Vec<Ident>) -> Box<Stmt> {
        self.expect(Lparen);
        let params = self.exprs();
        self.expect(Rparen);
        self.expect(Semicolon);

        let expr = FuncCall::new(prop_paths, params);
        ExprStmt::new(expr)
    }

    fn assignment_stmt(&mut self, prop_paths : Vec<Vec<Ident>>) -> Box<Stmt> {
        self.expect(Assign);
        let rhs = self.exprs();
        self.expect(Semicolon);

        AssignStmt::new(prop_paths, rhs)
    }

    fn func_call_or_assignment_stmt(&mut self) -> Box<Stmt> {
        let prop_paths = self.stmt_ident_prefixs();

        match self.peek() {
            Some(tok) => {
                match tok.typ {
                    Assign => {
                        match prop_paths {
                            SingleIdentList(path) => {
                                self.assignment_stmt(vec!(path))
                            },
                            MultiIdentList(paths) => {
                                self.assignment_stmt(paths)
                            },
                            SingleIdent(prefix) => {
                                self.assignment_stmt(vec!(vec!(prefix)))
                            }
                        }
                    },
                    Lparen => {
                        match prop_paths {
                            SingleIdentList(path) => {
                                self.func_call_stmt(path)
                            },
                            MultiIdentList(paths) => {
                                fail!("Function calls need to be their own statement")
                            },
                            SingleIdent(prefix) => {
                                self.func_call_stmt(vec!(prefix))
                            }
                        }
                    },
                    _ => fail!("Useless stmt at {}:{}", tok.line, tok.col)
                }
            },
            None => { 
                let tok = self.tok();
                fail!("Useless stmt at {}:{}", tok.line, tok.col)
            }
        }
    }

    fn stmt_opt(&mut self) -> Option<Box<Stmt>> {
        match self.peek() {
            Some(tok) => {
                match tok.typ {
                    Identifier => {
                        Some(self.func_call_or_assignment_stmt())
                    },
                    For => {
                        self.next();
                        Some(self.for_in_loop())
                    },
                    While => {
                        self.next();
                        Some(self.while_loop())
                    },
                    Var => { 
                        self.next();
                        Some(self.var_decl())
                    },
                    Break => {
                        self.next();
                        let stmt = LoopControlStmt::new(Break);
                        self.expect(Semicolon);

                        Some(stmt)
                    },
                    Continue => {
                        self.next();
                        let stmt = LoopControlStmt::new(Continue);
                        self.expect(Semicolon);

                        Some(stmt)
                    },
                    If => {
                        self.next();
                        Some(self.if_else_stmt())
                    },
                    Return => {
                        if self.parsing_generator() {
                            fail!("Return statements are not allowed in generator defninitions");
                        }

                        self.next();
                        //TODO: this should be optional...you should be able to return early
                        let ret_val = self.expr();

                        self.next_is(Semicolon);

                        Some(ReturnStmt::new(ret_val))
                    },
                    Yield => {
                        if !self.parsing_generator() {
                            fail!("Yield statements are only allowed in generator defninitions");
                        }

                        self.next();
                        let yield_vals = self.exprs();
                        self.expect(Semicolon);
                        Some(YieldStmt::new(yield_vals))
                    },
                    NewLine => {
                        self.next();
                        self.stmt_opt()
                    }
                    _ => None
                }
            },
            None => None
        }
    }

    fn stmt(&mut self) -> Box<Stmt> {
        match self.stmt_opt() {
            Some(stmt) => stmt,
            None => fail!("Expected statement at {}:{}", self.tok().line, self.tok().col)
        }
    }

    fn incl_range(&mut self, start : Box<Expr>) -> Box<Expr> {
        let end = self.expr();
        InclusiveRange::new(start, end)
    }

    fn excl_range(&mut self, start : Box<Expr>) -> Box<Expr> {
        let end = self.expr();
        ExclusiveRange::new(start, end)
    }

    fn is_binary_op(&self, typ : TokenType) -> bool {
        match typ {
            Add_Op | Min_Op | Mult_Op | Div_Op | Mod_Op | Power_Op | 
            Less_Than | Greater_Than | Less_Than_Eq | Greater_Than_Eq | Equal | Bang_Eq => true,
            Identifier => true, //binary operators that are words
            _ => false
        }
    }

    fn resolve_bin_expr(&mut self, expr1 : Box<Expr>) -> Box<Expr> {
        let op1 = self.tok();
        
        let expr2 = match self.basic_expr_opt(){
            Some(e) => e, 
            None => fail!(
                "Trailing {:?} at {}:{}",
                op1.typ,
                op1.line, 
                op1.col
            )
        };

        let op2 = self.peek();

        match op2 {
            Some(ref op) => {
                if !self.is_binary_op(op.typ) {
                    return BinaryExpr::new(expr1, op1.text, expr2);
                }
            },
            None => {
                return BinaryExpr::new(expr1, op1.text, expr2);
            }
        };

        let op2 = op2.unwrap();

        self.next();

        let op1_pres = self.get_presidence(&op1);
        let op2_pres = self.get_presidence(&op2);

        if op1_pres >= op2_pres {
            let expr_tmp = BinaryExpr::new(expr1, op1.text, expr2);
            self.resolve_bin_expr(expr_tmp)
        } else {
            let expr_tmp = self.resolve_bin_expr(expr2);
            BinaryExpr::new(expr1, op1.text, expr_tmp)
        }
    }

    fn basic_expr_opt(&mut self) -> Option<Box<Expr>> {
        match self.peek() {
            Some(tok) => {
                match tok.typ {
                    True => {
                        self.next();
                        Some(Bool::new(true))
                    }, 
                    False => {
                        self.next();
                        Some(Bool::new(false))
                    },
                    Int_Literal => {
                        self.next();
                        let num = from_str::<int>(self.tok().text.as_slice()).unwrap();
                        Some(Int::new(num))
                    },
                    Identifier => {
                        Some(self.ident_or_func_call())
                    }
                    _ => None
                }
            },
            None => None
        }
    }

    fn ident_or_func_call(&mut self) -> Box<Expr> {
        let prop_paths = self.expr_ident_prefixs();

        match prop_paths {
            SingleIdentList(path) => {
                match self.peek() {
                    Some(tok) => {
                        if tok.typ == Lparen {
                            self.func_call(path)
                        } else {
                            //TODO this will change when objects get support
                            //this will actually never get called until i have things like
                            //myobj.prop.name as valid expressions
                            IdentExpr::new(path[0].to_string())
                        }
                    },
                    None => {
                        //TODO: removing this and returning another identexpr will
                        //remove the need for a semicolon...hmmm unless the semicolon
                        //is checked by the caller
                        let tok = self.tok();
                        fail!("Expected Expression at {}:{}", tok.line, tok.col);
                    }
                }
            },
            SingleIdent(ident) => {
                match self.peek() {
                    Some(tok) => {
                        if tok.typ == Lparen {
                            self.func_call(vec!(ident))
                        } else {
                            match self.expr_opt() {
                                Some(expr) => {
                                    PrefixUnaryExpr::new(ident, expr)
                                },
                                None => IdentExpr::new(ident)
                            }
                        }
                    },
                    None => {
                        IdentExpr::new(ident)
                    }
                }
            },
            MultiIdentList(paths) => {
                //this should never happen as this function should be returning basic
                //expressions not lists of them
                fail!("PARSER ERROR: THIS SHOULD BE UNREACHABLE");
            }
        }
    }

    fn expr_opt(&mut self) -> Option<Box<Expr>> {
        //integers and binary exp
        let expr_opt = self.basic_expr_opt();

        if expr_opt.is_none() {
            return None
        }

        match self.peek() {
            Some(tok) => {
                match tok.typ {
                    //'start()...end()' or '0 + 2 - 1 through end'
                    Incl_Range | Through => {
                        self.next();
                        Some(self.incl_range(expr_opt.unwrap()))
                    }, 
                    //'start()..end()' or '0 + 2 - 1 upto end'
                    Excl_Range | Upto => {
                        self.next();
                        Some(self.excl_range(expr_opt.unwrap()))
                    }, 
                    // 2 * 2 + 4 = 8 ------- 2 + 2 * 4 = 10
                    // TODO:change this call to take a full token and tell you if it could be a binary op including identifiers
                    _ if self.is_binary_op(tok.typ) => {
                        self.next();
                        Some(self.resolve_bin_expr(expr_opt.unwrap()))
                    },
                    _ => expr_opt
                }
            },
            None => expr_opt
        }
    }

    fn expr(&mut self) -> Box<Expr> {
        match self.expr_opt() {
            Some(expr) => expr,
            None => fail!("Expected expr at {}:{}", self.tok().line, self.tok().col)
        }
    }

    fn ident_opt(&mut self) -> Option<Ident> {
        if self.next_is(Identifier) {
            Some(self.tok().text)
        } else {
            None
        }
    }

    fn ident(&mut self) -> Ident {
        self.expect(Identifier);
        self.tok().text
    }

    //always optional
    fn stmts(&mut self) -> AST {
        let mut stmts = Vec::new();

        loop {
            match self.stmt_opt() {
                Some(stmt) => {
                    stmts.push(stmt);
                },
                None => break
            }
        };

        stmts
    }

    fn exprs(&mut self) -> Vec<Box<Expr>> {
        let mut exprs = Vec::new();

        match self.expr_opt() {
            Some(e) => {
                exprs.push(e);
                loop {

                    if !self.next_is(Comma) {
                        break;
                    }

                    exprs.push(self.expr());
                };
            },
            None => {}
        };

        return exprs
    }

    fn idents(&mut self) -> Vec<Ident> {
        let mut idents = Vec::new();

        idents.push(self.ident());

        loop {

            if !self.next_is(Comma) {
                break;
            }

            idents.push(self.ident());
        }

        return idents
    }

    fn block(&mut self) -> AST {
        self.expect(Lcurly);
        let stmts = self.stmts();
        self.expect(Rcurly);

        stmts
    }

    fn do_block(&mut self) -> AST {
        self.expect(Do);
        let stmts = self.stmts();
        self.expect(End);

        stmts
    }
}

impl AsyncParser {
    pub fn new(toks : Receiver<Token>) -> AsyncParser {
        let first = match toks.recv_opt() {
            Ok(t) => Some(t),
            Err(_)  => fail!("Created parser with empty input")
        };

        AsyncParser {
            tokens      : toks,
            presidences : new_presidence_map(),
            peek_tok    : first,
            tok         : None,
            parsing_gen : false
        }
    }
}

impl HydraParser for AsyncParser {}

impl HydraBaseParser for AsyncParser {

    fn next_opt(&mut self) -> bool {
        match self.peek() {
            Some(tok) => {
                self.peek_tok = match self.tokens.recv_opt() {
                    Ok(peek) => Some(peek),
                    Err(_)  => None
                };

                self.tok = Some(tok);
                true
            },
            None => false
        }
    }

    fn peek(&mut self) -> Option<Token> {
        self.peek_tok.clone() 
    }

    fn tok(&mut self) -> Token {
        match self.tok {
            Some(ref t) => t.clone(),
            None => fail!("Tried to get token before advancing")
        }
    }

    fn get_presidence(&mut self, tok : &Token) -> int {
        match self.presidences.find(&tok.text) {
            Some(pres) => *pres,
            None => fail!("Must define {} operator before it can be used", tok.text)
        }
    }

    fn set_presidence(&mut self, tok : &Token, pres : int) {
        self.presidences.insert(tok.text.to_string(), pres);
    }

    fn parsing_generator(&self) -> bool {
        self.parsing_gen
    }

    fn start_gen_parsing(&mut self) {
        self.parsing_gen = true;
    }

    fn end_gen_parsing(&mut self) {
        self.parsing_gen = false;
    }
}

impl SyncParser {
    pub fn new(toks : Vec<Token>) -> SyncParser {
        if toks.is_empty() {
            fail!("Created parser with empty input");
        }

        SyncParser {
            tokens      : toks,
            presidences : new_presidence_map(),
            tok_idx     : -1,
            parsing_gen : false
        }
    }
}

impl HydraParser for SyncParser {}

impl HydraBaseParser for SyncParser {

    fn next_opt(&mut self) -> bool {
        match self.peek() {
            Some(tok) => {
                self.tok_idx += 1;
                true
            },
            None => false
        }
    }

    fn peek(&mut self) -> Option<Token> {
        if self.tok_idx >= ((self.tokens.len() as int) - 1) {
            None
        } else {
            let peek_idx = (self.tok_idx + 1) as uint;
            Some(self.tokens[peek_idx].clone())
        }
    }

    fn tok(&mut self) -> Token {
        let idx = self.tok_idx;

        if idx < 0 {
            fail!("Tried to get token before advancing");
        }

        self.tokens[idx as uint].clone()
    }

    fn get_presidence(&mut self, tok : &Token) -> int {
        match self.presidences.find(&tok.text) {
            Some(pres) => *pres,
            None => fail!("Must define {} operator before it can be used", tok.text)
        }
    }

    fn set_presidence(&mut self, tok : &Token, pres : int) {
        self.presidences.insert(tok.text.to_string(), pres);
    }

    fn parsing_generator(&self) -> bool {
        self.parsing_gen
    }

    fn start_gen_parsing(&mut self) {
        self.parsing_gen = true;
    }

    fn end_gen_parsing(&mut self) {
        self.parsing_gen = false;
    }
}

fn new_presidence_map() -> HashMap<Ident, int> {
    let mut map = HashMap::new();

    map.insert("%".to_string(), 1);

    map.insert("+".to_string(), 2);
    map.insert("-".to_string(), 2);
    
    map.insert("*".to_string(), 3);
    map.insert("/".to_string(), 3);
    
    map.insert("^".to_string(), 4);

    map
}

////////////////////////////////////////////////////////////////////////////////
//                                    Tests                                   //
////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////
//            Expressions            //
///////////////////////////////////////

macro_rules! check_expr(
    ($code:expr -> $expr_lit:expr) => ({
        let tokens = scanner::stream_from_str($code);
        let expr   = AsyncParser::new(tokens).expr();
        assert!(expr == $expr_lit);        
    });
)

#[test]
fn int_expr(){
    check_expr!("123" -> Int::new(123));
}

#[test]
fn ident_expr(){
    check_expr!("abc" -> IdentExpr::new("abc".to_string()));
}

#[test]
fn basic_func_call_expr(){
    check_expr!("abc()" -> FuncCall::new(vec!("abc".to_string()), vec!()));
}

#[test]
fn func_call_expr_with_params(){
    check_expr!("abc(1, def)" -> FuncCall::new(
        vec!("abc".to_string()), 
        vec!(Int::new(1), IdentExpr::new("def".to_string()))
    ));
}

#[test]
fn inclusive_range_expr(){
    check_expr!("0 through 10" -> InclusiveRange::new(Int::new(0), Int::new(10)));
}

#[test]
fn dotted_inclusive_range_expr(){
    check_expr!("0...10" -> InclusiveRange::new(Int::new(0), Int::new(10)));
}

#[test]
fn exclusive_range_expr(){
    check_expr!("0 upto 10" -> ExclusiveRange::new(Int::new(0), Int::new(10)));
}

#[test]
fn dotted_exclusive_range_expr(){
    check_expr!("0..10" -> ExclusiveRange::new(Int::new(0), Int::new(10)));
}

#[test]
fn basic_bin_expr(){
    check_expr!("1 + ten" -> BinaryExpr::new(
        Int::new(1),
        "+".to_string(),
        IdentExpr::new("ten".to_string())
    ));
}

#[test]
fn complex_bin_expr(){
    check_expr!("1 + 2 * 3 - 4 / 5" -> 
        BinaryExpr::new(
            Int::new(1),
            "+".to_string(),
            BinaryExpr::new(
                BinaryExpr::new(
                    Int::new(2),
                    "*".to_string(),
                    Int::new(3)
                ),
                "-".to_string(),
                BinaryExpr::new(
                    Int::new(4),
                    "/".to_string(),
                    Int::new(5)
                ),
            )
        )
    );
}

#[test]
fn prefix_unary_expr(){
    check_expr!("double 1 + 1" -> PrefixUnaryExpr::new(
        "double".to_string(),
        BinaryExpr::new(
            Int::new(1),
            "+".to_string(),
            Int::new(1)            
        )
    ));
}

///////////////////////////////////////
//            Statements             //
///////////////////////////////////////

macro_rules! check_stmt(
    ($code:expr -> $stmt_lit:expr) => ({
        let tokens = scanner::stream_from_str($code);
        let stmts  = AsyncParser::new(tokens).parse_sync();
        assert!(stmts.get(0) == &$stmt_lit);        
    });
)

#[test]
fn expr_stmt(){
    check_stmt!("abc(1, def);" -> ExprStmt::new(
        FuncCall::new(
            vec!("abc".to_string()), 
            vec!(
                Int::new(1), 
                IdentExpr::new("def".to_string())
            )
        )
    ));
}

#[test]
fn single_var_decl(){
    check_stmt!("var a;" -> VarDecl::new(
        vec!(
            "a".to_string()
        )
    ));
}

#[test]
fn multi_var_decl(){
    check_stmt!("var a, b, c;" -> VarDecl::new(
        vec!(
            "a".to_string(),
            "b".to_string(),
            "c".to_string()
        )
    ));
}

#[test]
fn single_var_assign(){
    check_stmt!("var a = 1;" -> VarAssign::new(
        vec!(
            "a".to_string()
        ),
        vec!(
            Int::new(1)
        )
    ));
}

#[test]
fn multi_var_assign(){
    check_stmt!("var a, b, c = 1, hy, dra();" -> VarAssign::new(
        vec!(
            "a".to_string(),
            "b".to_string(),
            "c".to_string()
        ),
        vec!(
            Int::new(1),
            IdentExpr::new("hy".to_string()),
            FuncCall::new(
                vec!("dra".to_string()),
                vec!()
            )
        )
    ));
}

#[test]
fn uneven_var_assign(){
    check_stmt!("var a, b, c = 1;" -> VarAssign::new(
        vec!(
            "a".to_string(),
            "b".to_string(),
            "c".to_string()
        ),
        vec!(
            Int::new(1)
        )
    ));
}

#[test]
fn single_assign(){
    check_stmt!("a = 1;" -> AssignStmt::new(
        vec!(vec!("a".to_string())),
        vec!(Int::new(1))
    ));
}


#[test]
fn multiple_assign(){
    check_stmt!("a, b = 1, 2;" -> AssignStmt::new(
        vec!(
            vec!("a".to_string()), 
            vec!("b".to_string())
        ),
        vec!(
            Int::new(1),
            Int::new(2)
        )
    ));
}

#[test]
fn if_branch(){
    check_stmt!("if cond then something(); end" -> IfElseStmt::new(
        vec!(
            IfElseBranch::new(
                Some(IdentExpr::new("cond".to_string())),
                vec!(
                    ExprStmt::new(
                        FuncCall::new(
                            vec!("something".to_string()),
                            vec!()
                        )
                    )
                )
            )
        )
    ));
}

#[test]
fn if_else_branch(){
    check_stmt!("if cond then something(); else something_else(); end" -> IfElseStmt::new(
        vec!(
            IfElseBranch::new(
                Some(IdentExpr::new("cond".to_string())),
                vec!(
                    ExprStmt::new(
                        FuncCall::new(
                            vec!("something".to_string()),
                            vec!()
                        )
                    )
                )
            ),
            IfElseBranch::new(
                None,
                vec!(
                    ExprStmt::new(
                        FuncCall::new(
                            vec!("something_else".to_string()),
                            vec!()
                        )
                    )
                )
            )
        )
    ));
}

#[test]
fn if_elseif_branch(){
    check_stmt!("if cond then something(); else if cond2 then something_else(); end" -> IfElseStmt::new(
        vec!(
            IfElseBranch::new(
                Some(IdentExpr::new("cond".to_string())),
                vec!(
                    ExprStmt::new(
                        FuncCall::new(
                            vec!("something".to_string()),
                            vec!()
                        )
                    )
                )
            ),
            IfElseBranch::new(
                Some(IdentExpr::new("cond2".to_string())),
                vec!(
                    ExprStmt::new(
                        FuncCall::new(
                            vec!("something_else".to_string()),
                            vec!()
                        )
                    )
                )
            )
        )
    ));
}

#[test]
fn if_elseif_else_branch(){
    check_stmt!("if cond then something(); else if cond2 then something_else(); else nothing(); end" -> IfElseStmt::new(
        vec!(
            IfElseBranch::new(
                Some(IdentExpr::new("cond".to_string())),
                vec!(
                    ExprStmt::new(
                        FuncCall::new(
                            vec!("something".to_string()),
                            vec!()
                        )
                    )
                )
            ),
            IfElseBranch::new(
                Some(IdentExpr::new("cond2".to_string())),
                vec!(
                    ExprStmt::new(
                        FuncCall::new(
                            vec!("something_else".to_string()),
                            vec!()
                        )
                    )
                )
            ),
            IfElseBranch::new(
                None,
                vec!(
                    ExprStmt::new(
                        FuncCall::new(
                            vec!("nothing".to_string()),
                            vec!()
                        )
                    )
                )
            )
        )
    ));
}

#[test]
fn for_in_loop_single_var(){
    check_stmt!("for i in 0..10 do break; end" -> ForInLoop::new(
        vec!(
            "i".to_string()
        ),
        ExclusiveRange::new(
            Int::new(0),
            Int::new(10)
        ),
        vec!(
            LoopControlStmt::new(Break)
        )
    ));
}

#[test]
fn for_in_loop_multi_var(){
    check_stmt!("for i, j in positions do continue; end" -> ForInLoop::new(
        vec!(
            "i".to_string(),
            "j".to_string()
        ),
        IdentExpr::new("positions".to_string()),
        vec!(
            LoopControlStmt::new(Continue)
        )
    ));
}

#[test]
fn while_loop(){
    check_stmt!("while cond do break; continue; end" -> WhileLoop::new(
        IdentExpr::new("cond".to_string()),
        vec!(
            LoopControlStmt::new(Break),
            LoopControlStmt::new(Continue)
        )
    ));
}

#[test]
fn func_def_no_params(){
    //CURRENTLY FAILS AS PARAMS AREN'T OPTIONAL
    check_stmt!("function abc(){ stuff(); }" -> FunctionDef::new(
            "abc".to_string(),
            vec!(),
            vec!(
                ExprStmt::new(    
                    FuncCall::new(
                        vec!("stuff".to_string()),
                        vec!()
                    )
                )
            )
        )
    );
}

#[test]
fn func_def_single_param(){
    check_stmt!("function abc(a){ stuff(); }" -> FunctionDef::new(
            "abc".to_string(),
            vec!(
                "a".to_string()
            ),
            vec!(
                ExprStmt::new(    
                    FuncCall::new(
                        vec!("stuff".to_string()),
                        vec!()
                    )
                )
            )
        )
    );
}

#[test]
fn func_def_multi_param(){
    check_stmt!("function abc(a, b, c){ return a; }" -> FunctionDef::new(
            "abc".to_string(),
            vec!(
                "a".to_string(),
                "b".to_string(),
                "c".to_string()
            ),
            vec!(
                ReturnStmt::new(
                    IdentExpr::new("a".to_string())      
                )
            )
        )
    );
}

#[test]
fn gen_func_def_no_params(){
    //CURRENTLY FAILS AS PARAMS AREN'T OPTIONAL
    check_stmt!("gen function abc(){ stuff(); }" -> GeneratorDef::new(
            "abc".to_string(),
            vec!(),
            vec!(
                ExprStmt::new(    
                    FuncCall::new(
                        vec!("stuff".to_string()),
                        vec!()
                    )
                )
            )
        )
    );
}

#[test]
fn gen_func_def_single_param(){
    check_stmt!("gen function abc(a){ yield a; }" -> GeneratorDef::new(
            "abc".to_string(),
            vec!(
                "a".to_string()
            ),
            vec!(
                YieldStmt::new(
                    vec!(
                        IdentExpr::new("a".to_string())
                    )
                )
            )
        )
    );
}

#[test]
fn gen_func_def_multi_param(){
    check_stmt!("gen function abc(a, b, c){ yield a, b, c; }" -> GeneratorDef::new(
            "abc".to_string(),
            vec!(
                "a".to_string(),
                "b".to_string(),
                "c".to_string()
            ),
            vec!(
                YieldStmt::new(
                    vec!(
                        IdentExpr::new("a".to_string()),
                        IdentExpr::new("b".to_string()),
                        IdentExpr::new("c".to_string())
                    )
                )
            )
        )
    );
}

#[test]
#[should_fail]
fn func_def_yield_fail() {
    let tokens = scanner::stream_from_str("function abc(a, b, c){ yield a; }");
    AsyncParser::new(tokens).parse_sync();
}

#[test]
#[should_fail]
fn gen_func_def_yield_fail() {
    let tokens = scanner::stream_from_str("gen function abc(a, b, c){ return a; }");
    AsyncParser::new(tokens).parse_sync();
}

#[test]
#[should_fail]
fn break_top_level_fail() {
    let tokens = scanner::stream_from_str("break");
    AsyncParser::new(tokens).parse_sync();
}

#[test]
#[should_fail]
fn continue_top_level_fail() {
    let tokens = scanner::stream_from_str("continue");
    AsyncParser::new(tokens).parse_sync();
}

#[test]
#[should_fail]
fn return_top_level_fail() {
    let tokens = scanner::stream_from_str("return");
    AsyncParser::new(tokens).parse_sync();
}

#[test]
#[should_fail]
fn yield_top_level_fail() {
    let tokens = scanner::stream_from_str("yield");
    AsyncParser::new(tokens).parse_sync();
}