use jit::codegen::{CodeGenerator, Builder};
use std::vec::Vec;

pub trait Node : CodeGenerator {
    
}

///Identifier expressions, variable names etc.
pub type Ident = ~str;

pub enum ExprData {
    ///A call to a function including its qualifying path and passed parameters
    FuncCall(Vec<Ident>, Vec<Expr>),
    ///An inclusive range 0...10 or 0 through 10
    InclusiveRange(int, int),
    ///An exclusive range 0..10 or 0 upto 10
    ExlusiveRange(int, int)
}

pub enum StmtData {
    ///A stmt that is also an expression, function calls and var++/-- etc.
    StmtExpr(Expr),
    ///For in loop bound variables, generator expression, and block of stmts
    ForInLoop(Vec<Ident>, Expr, Vec<Stmt>),
    ///While loop condition expression and block of stmts
    WhileLoop(Expr, Vec<Stmt>)
}

pub struct Expr {
    pub data : ExprData
}

pub struct Stmt {
    pub data : StmtData
}

impl Expr {
    fn new(expr : ExprData) -> Expr {
        Expr { data : expr }
    }
}

impl Node for Expr {
    
}

impl CodeGenerator for Expr {
    fn gen_code(&mut self, builder : &Builder){

    }
}

impl Stmt {
    fn new(stmt : StmtData) -> Stmt {
        Stmt { data : stmt }
    }
}

impl Node for Stmt {

}

impl CodeGenerator for Stmt {
    fn gen_code(&mut self, builder : &Builder){

    }
}