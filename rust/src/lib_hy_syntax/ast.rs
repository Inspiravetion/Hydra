use jit::codegen::{CodeGenerator, Builder};
use token::Token;
use std::vec::Vec;
use std::owned::Box;

pub trait Node : CodeGenerator {
    
}

///Identifier expressions, variable names etc.
pub type Ident = ~str;

pub enum ExprData {
    ///A call to a function including its qualifying path and passed parameters
    FuncCall(Vec<Ident>, Vec<Expr>),
    ///An inclusive range 0...10 or 0 through 10
    InclusiveRange(Expr, Expr),
    ///An exclusive range 0..10 or 0 upto 10
    ExclusiveRange(Expr, Expr),
    ///An integer expression
    Int(int),
    ///An identifier
    IdentExpr(Ident),
    ///A binary expression
    BinaryExpr(Expr, Token, Expr)
}

pub enum StmtData {
    ///A stmt that is also an expression, function calls and var++/-- etc.
    ExprStmt(Expr),
    ///For in loop bound variables, generator expression, and block of stmts
    ForInLoop(Vec<Ident>, Expr, Vec<Stmt>),
    ///While loop condition expression and block of stmts
    WhileLoop(Expr, Vec<Stmt>)
}

pub struct Expr {
    pub data : Box<ExprData>
}

pub struct Stmt {
    pub data : StmtData
}

impl Expr {
    pub fn new(expr : ExprData) -> Expr {
        Expr { data : box expr }
    }
}

impl Node for Expr {
    
}

impl CodeGenerator for Expr {
    fn gen_code(&mut self, builder : &Builder){

    }
}

impl Stmt {
    pub fn new(stmt : StmtData) -> Stmt {
        Stmt { data : stmt }
    }
}

impl Node for Stmt {

}

impl CodeGenerator for Stmt {
    fn gen_code(&mut self, builder : &Builder){

    }
}