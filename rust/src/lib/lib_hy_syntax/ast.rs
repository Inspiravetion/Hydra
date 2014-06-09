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
    fn gen_code(self, builder : &Builder){

    }
}

impl Stmt {
    pub fn new(stmt : StmtData) -> Stmt {
        Stmt { data : stmt }
    }

    fn gen_for_in_loop(self, builder : &Builder) {
        let (vars, range, stmts) = match self.data {
            ForInLoop(ref v, ref r, ref s) => (v, r, s),
            _ => fail!("Called gen_for_in_loop on Stmt that is not a for in loop")
        };
        //1.init and resolve range...for objects make sure they have a function called 'for_in'
        //2.open scope with the builder...make local variables for the vars and set them to the result of the yield
        //3. call gen_code(builder) on all ths stmts
    }
}

impl Node for Stmt {

}

impl CodeGenerator for Stmt {
    fn gen_code(self, builder : &Builder){
        match self.data {
            ForInLoop(_, _, _) => self.gen_for_in_loop(builder),
            _ => {}
        };
    }
}