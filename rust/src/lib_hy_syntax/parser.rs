use std::comm::Receiver;
use token::Token;
use ast::{Expr, ExprData, Stmt, StmtData};

pub struct Parser {
    tokens : Receiver<Token>,
    peek_tok : Option<Token>
}

impl Parser {
    pub fn new(toks : Receiver<Token>) -> Parser {
        let peek = match toks.recv_opt() {
            Ok(tok) => Some(tok),
            Err(_)  => None
        };

        Parser {
            tokens : toks,
            peek_tok : peek
        }
    }

    // fn next(&mut self) -> Token {
    //     //for when it should fail if there is not another token
    // }

    fn next_opt(&mut self) -> Option<Token> {
        //for when the next token can be optional
        None
    }
}