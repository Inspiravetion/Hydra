use std::comm::Receiver;
use token::*;
use ast::*;
use std::from_str::from_str;
use scanner;

///Scan and Parse a file in parallel
pub fn parse_file_async(path : &str) -> Vec<Stmt> {
    let tokens = scanner::stream_from_file(path);
    AsyncParser::new(tokens).parse()
}

///Scan and then Parse a file
pub fn parse_file_sync(path : &str) -> Vec<Stmt> {
    let tokens = scanner::tokenize_file(path);
    SyncParser::new(tokens).parse()
}

///Scan and Parse a string in parallel
pub fn parse_str_async(code : &str) -> Vec<Stmt> {
    let tokens = scanner::stream_from_str(code);
    AsyncParser::new(tokens).parse()
}

///Scan and then Parse a string
pub fn parse_str_sync(code : &str) -> Vec<Stmt> {
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
    fn parse(&mut self) -> Vec<Stmt> {
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

    fn program_stmts(&mut self) -> Vec<Stmt> {
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

    fn for_in_loop(&mut self) -> Stmt {
        let start = self.tok();//use to make span

        let bound_vars = self.idents();
        self.expect(In);

        let generator = self.expr();
        let stmts = self.do_block();

        let for_in_loop = ForInLoop(bound_vars, generator, stmts);

        Stmt::new(for_in_loop)
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

    fn func_call(&mut self) -> Expr {
        let prop_path = self.property_path();
        self.expect(Lparen);
        let params = self.exprs();
        self.expect(Rparen);

        let func_call = FuncCall(prop_path, params);

        Expr::new(func_call)
    }

    fn stmt_opt(&mut self) -> Option<Stmt> {
        match self.peek() {
            Some(tok) => {
                match tok.typ {
                    Identifier => {
                        let expr = self.func_call();
                        let stmt = Stmt::new(ExprStmt(expr));
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

    fn stmt(&mut self) -> Stmt {
        match self.stmt_opt() {
            Some(stmt) => stmt,
            None => fail!("Expected statement at {}:{}", self.tok().line, self.tok().col)
        }
    }

    fn incl_range(&mut self, start : Expr) -> Expr {
        let end = self.expr();
        let range = InclusiveRange(start, end);
        Expr::new(range)   
    }

    fn excl_range(&mut self, start : Expr) -> Expr {
        let end = self.expr();
        let range = ExclusiveRange(start, end);
        Expr::new(range)   
    }

    fn expr_opt(&mut self) -> Option<Expr> {
        //integers and binary exp
        let expr_opt = match self.peek() {
            Some(tok) => {
                match tok.typ {
                    Int_Literal => {
                        self.next();
                        let num = from_str::<int>(self.tok().text).unwrap();
                        Some(Expr::new(Int(num)))
                    },
                    Identifier => {
                        self.next();
                        Some(Expr::new(IdentExpr(tok.text)))
                    }
                    _ => None
                }
            },
            None => None
        };

        if expr_opt.is_none() {
            return None
        }

        match self.peek() {
            Some(tok) => {
                match tok.typ {
                    Incl_Range | Through => {
                        self.next();
                        Some(self.incl_range(expr_opt.unwrap()))
                    }, 
                    Excl_Range | Upto => {
                        self.next();
                        Some(self.excl_range(expr_opt.unwrap()))
                    }, 
                    _ => expr_opt
                }
            },
            None => None
        }
    }

    fn expr(&mut self) -> Expr {
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
    fn stmts(&mut self) -> Vec<Stmt> {
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

    fn exprs(&mut self) -> Vec<Expr> {
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

    fn block(&mut self) -> Vec<Stmt> {
        self.expect(Lcurly);
        let stmts = self.stmts();
        self.expect(Rcurly);

        stmts
    }

    fn do_block(&mut self) -> Vec<Stmt> {
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
