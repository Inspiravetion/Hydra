use std::comm::Receiver;
use token::*;
use ast::*;
use std::from_str::from_str;

pub struct Parser {
    tokens   : Receiver<Token>,
    peek_tok : Option<Token>,
    tok      : Token
}

pub trait HydraParser : ParserBase {
    fn parse(&mut self) -> Vec<Stmt> {
        self.program_stmts()
    }  
}

trait ParserBase {
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

    //if the next token is the passed token type then shift it to self.tok
    //and return true, otherwise false
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

    ///If the next token is of the expected token type, run the callback,
    ///otherwise fail!
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

impl Parser {
    pub fn new(toks : Receiver<Token>) -> Parser {
        let first = match toks.recv_opt() {
            Ok(t) => t,
            Err(_)  => fail!("Created parser with empty input")
        };

        let peek = match toks.recv_opt() {
            Ok(t) => Some(t),
            Err(_)  => None
        };

        Parser {
            tokens   : toks,
            peek_tok : peek,
            tok      : first
        }
    }
}

impl HydraParser for Parser {}

impl ParserBase for Parser {
    ///Try to advance to next token. If at EOF return false, otherwise true
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

    ///Return the next token pr none if at EOF
    fn peek(&mut self) -> Option<Token> {
        self.peek_tok.clone() 
    }

    fn tok(&mut self) -> Token {
        self.tok.clone()
    }
}