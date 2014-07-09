use std::comm::Receiver;
use token::*;
use ast::*;
use std::from_str::from_str;
use scanner;
use collections::hashmap::HashMap;


///Scan and Parse a file in parallel
pub fn parse_file_async(path : &str) -> Vec<Box<Stmt>> {
    let tokens = scanner::stream_from_file(path);
    AsyncParser::new(tokens).parse()
}

///Scan and then Parse a file
pub fn parse_file_sync(path : &str) -> Vec<Box<Stmt>> {
    let tokens = scanner::tokenize_file(path);
    SyncParser::new(tokens).parse()
}

///Scan and Parse a string in parallel
pub fn parse_str_async(code : &str) -> Vec<Box<Stmt>> {
    let tokens = scanner::stream_from_str(code);
    AsyncParser::new(tokens).parse()
}

///Scan and then Parse a string
pub fn parse_str_sync(code : &str) -> Vec<Box<Stmt>> {
    let tokens = scanner::tokenize_str(code);
    SyncParser::new(tokens).parse()
}

pub struct AsyncParser {
    tokens      : Receiver<Token>,
    presidences : HashMap<Ident, int>,
    peek_tok    : Option<Token>,
    tok         : Option<Token>
}

pub struct SyncParser {
    tokens      : Vec<Token>,
    presidences : HashMap<Ident, int>,
    tok_idx     : uint
}

pub trait HydraParser : HydraBaseParser {
    fn parse(&mut self) -> Vec<Box<Stmt>> {
        self.program_stmts()
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

    fn program_stmts(&mut self) -> Vec<Box<Stmt>> {
        let mut stmts = Vec::new();
        loop {
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
                            self.function_def(false)
                        },
                        Operator => {
                            self.next();
                            self.operator_def()
                        },
                        Generator => {
                            self.next();
                            self.expect(Function);
                            self.function_def(true)
                        }
                        _   => fail!(
                                "Statement at {}:{} not allowed at top level", 
                                self.tok().line,
                                self.tok().col
                            )
                    };
                    stmts.push(stmt);
                },
                None => {
                    return stmts
                }
            };
        } 
    }

    fn function_def(&mut self, generator : bool) -> Box<Stmt> {
        self.expect(Identifier);
        let func_name = self.tok().text.to_owned();

        self.expect(Lparen);
        //TODO: this should be opt_idents();
        let params = self.idents();
        self.expect(Rparen);

        let stmts = self.block(); //TODO: this should also be optional

        if generator {
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

        let pres = from_str::<int>(self.tok().text).unwrap();

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

        self.function_def(false)
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

    fn ident_prefixs(&mut self) -> IdentPrefix {
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
                SingleIdent(first.get(0).to_owned())
            } else {
                SingleIdentList(first)
            }
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
        let prop_paths = self.ident_prefixs();

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
                        self.next();
                        let ret_val = self.expr();
                        Some(ReturnStmt::new(ret_val))
                    },
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

    fn is_binary_op(&mut self, typ : TokenType) -> bool {
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
                    return BinaryExpr::new(expr1, op1, expr2);
                }
            },
            None => {
                return BinaryExpr::new(expr1, op1, expr2);
            }
        };

        let op2 = op2.unwrap();

        self.next();

        let op1_pres = self.get_presidence(&op1);
        let op2_pres = self.get_presidence(&op2);

        if op1_pres >= op2_pres {
            let expr_tmp = BinaryExpr::new(expr1, op1, expr2);
            self.resolve_bin_expr(expr_tmp)
        } else {
            let expr_tmp = self.resolve_bin_expr(expr2);
            BinaryExpr::new(expr1, op1, expr_tmp)
        }
    }

    fn basic_expr_opt(&mut self) -> Option<Box<Expr>> {
        match self.peek() {
            Some(tok) => {
                match tok.typ {
                    Int_Literal => {
                        self.next();
                        let num = from_str::<int>(self.tok().text).unwrap();
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
        let prop_paths = self.ident_prefixs();

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
                            IdentExpr::new(path.get(0).to_owned())
                        }
                    },
                    None => {
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
                        let tok = self.tok();
                        fail!("Expected Expression at {}:{}", tok.line, tok.col);
                    }
                }
            },
            MultiIdentList(paths) => {
                //this is a tuple
                fail!("Tuples are supported yet!");
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
                    //TODO...if this is an identifier...try to make it a binary operator
                }
            },
            None => None
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
    fn stmts(&mut self) -> Vec<Box<Stmt>> {
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

    fn block(&mut self) -> Vec<Box<Stmt>> {
        self.expect(Lcurly);
        let stmts = self.stmts();
        self.expect(Rcurly);

        stmts
    }

    fn do_block(&mut self) -> Vec<Box<Stmt>> {
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
            tok         : None
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
        self.presidences.insert(tok.text.to_owned(), pres);
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
            tok_idx     : -1
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
        if self.tok_idx >= (self.tokens.len() - 1) {
            None
        } else {
            let peek_idx = self.tok_idx + 1;
            Some(self.tokens.get(peek_idx).clone())
        }
    }

    fn tok(&mut self) -> Token {
        let idx = self.tok_idx;

        if idx < 0 {
            fail!("Tried to get token before advancing");
        }

        self.tokens.get(idx).clone()
    }

    fn get_presidence(&mut self, tok : &Token) -> int {
        match self.presidences.find(&tok.text) {
            Some(pres) => *pres,
            None => fail!("Must define {} operator before it can be used", tok.text)
        }
    }

    fn set_presidence(&mut self, tok : &Token, pres : int) {
        self.presidences.insert(tok.text.to_owned(), pres);
    }
}

fn new_presidence_map() -> HashMap<Ident, int> {
    let mut map = HashMap::new();

    map.insert("%".to_owned(), 1);

    map.insert("+".to_owned(), 2);
    map.insert("-".to_owned(), 2);
    
    map.insert("*".to_owned(), 3);
    map.insert("/".to_owned(), 3);
    
    map.insert("^".to_owned(), 4);

    map
}
