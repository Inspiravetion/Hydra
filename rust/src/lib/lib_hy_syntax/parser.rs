use std::comm::Receiver;
use token::*;
use ast::*;
use std::from_str::from_str;
use scanner;

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
    tokens   : Receiver<Token>,
    peek_tok : Option<Token>,
    tok      : Token
}

pub struct SyncParser {
    tokens : Vec<Token>,
    tok_idx : uint
}

pub trait HydraParser : HydraBaseParser {
    fn parse(&mut self) -> Vec<Box<Stmt>> {
        self.program_stmts()
    }  
}

trait HydraBaseParser {
    
    ///Returns the current token
    fn tok(&mut self) -> Token;

    ///Returns the next token or None if at EOF
    fn peek(&mut self) -> Option<Token>;

    ///Consumes the next token and returns true if
    ///possible, otherwise returns false if at EOF
    fn next_opt(&mut self) -> bool;

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
        let mut not_at_eof = true;
        loop {
            if not_at_eof {
                let stmt = match self.tok().typ {
                    For => self.for_in_loop(),
                    _   => fail!(
                            "Statement at {}:{} not allowed at top level", 
                            self.tok().line,
                            self.tok().col
                        )
                };
                stmts.push(stmt);
            } else {
                return stmts;
            }
            not_at_eof = self.next_opt();
        } 
    }

    fn for_in_loop(&mut self) -> Box<Stmt> {
        let start = self.tok();//use to make span

        let bound_vars = self.idents();
        self.expect(In);

        let generator = self.expr();
        let stmts = self.do_block();

        ForInLoop::new(bound_vars, generator, stmts)
    }

    fn property_path(&mut self) -> Vec<Ident> {
        let mut idents = Vec::new();

        idents.push(self.ident());

        loop {

            if !self.next_is(Period) {
                break;
            }

            idents.push(self.ident());
        }

        return idents
    }

    fn func_call(&mut self) -> Box<Expr> {
        let prop_path = self.property_path();
        self.expect(Lparen);
        let params = self.exprs();
        self.expect(Rparen);

        FuncCall::new(prop_path, params)
    }

    fn stmt_opt(&mut self) -> Option<Box<Stmt>> {
        match self.peek() {
            Some(tok) => {
                match tok.typ {
                    Identifier => {
                        let expr = self.func_call();
                        let stmt = ExprStmt::new(expr);
                        Some(stmt)
                    },
                    For => {
                        self.next();
                        let stmt = self.for_in_loop();
                        Some(stmt)
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
            Add_Op | Min_Op | Mult_Op | Div_Op | Mod_Op | Power_Op => true,
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

        if presidence(op1.typ) >= presidence(op2.typ) {
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
                        self.next();
                        Some(IdentExpr::new(tok.text))
                    }
                    _ => None
                }
            },
            None => None
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
            Ok(t) => t,
            Err(_)  => fail!("Created parser with empty input")
        };

        let peek = match toks.recv_opt() {
            Ok(t) => Some(t),
            Err(_)  => None
        };

        AsyncParser {
            tokens   : toks,
            peek_tok : peek,
            tok      : first
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

                self.tok = tok;
                true
            },
            None => false
        }
    }

    fn peek(&mut self) -> Option<Token> {
        self.peek_tok.clone() 
    }

    fn tok(&mut self) -> Token {
        self.tok.clone()
    }
}

impl SyncParser {
    pub fn new(toks : Vec<Token>) -> SyncParser {
        if toks.is_empty() {
            fail!("Created parser with empty input");
        }

        SyncParser {
            tokens : toks,
            tok_idx : 0
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
        self.tokens.get(idx).clone()
    }
}

fn presidence(typ : TokenType) -> int {
    match typ {
        Mod_Op => 1,
        Add_Op | Min_Op => 2, 
        Mult_Op | Div_Op  => 3,
        Power_Op => 4,
        _ => 0
    }
}
