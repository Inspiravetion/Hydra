use std::fmt::{Show, Formatter, Result};
use token::*;

pub type Ident  = String;
pub type Idents = Vec<Ident>;
pub type Exprs  = Vec<Box<Expr>>;


#[deriving(PartialEq)]
pub struct Expr {
    pub node : Expr_ 
}

impl Show for Expr {
    fn fmt(&self, f: &mut Formatter) -> Result {
        write!(f, "{}", self.node)
    }
}

#[deriving(PartialEq)]
pub struct Stmt {
    pub node : Stmt_ 
}

impl Show for Stmt {
    fn fmt(&self, f: &mut Formatter) -> Result {
        write!(f, "{}", self.node)
    }
}

#[deriving(Show, PartialEq)]
pub enum Expr_ {

    //1.prop_path, 2.params
    FuncCall(Idents, Exprs),

    //1.start, 2.end
    InclusiveRange(Box<Expr>, Box<Expr>),

    //1.start, 2.end
    ExclusiveRange(Box<Expr>, Box<Expr>),

    //1.value
    Int(int),

    //1.value
    Float(f64),

    //1.value
    Bool(bool),

    //1.value
    StringLit(String),

    //1.value
    ArrayLit(Exprs),

    //1.keys, 2.values
    MapLit(Exprs, Exprs),

    //1.value
    IdentExpr(Ident),

    //1.lhs, 2.op, 3.rhs
    BinaryExpr(Box<Expr>, String, Box<Expr>),

    //1.op, 2.expr
    PrefixUnaryExpr(Ident, Box<Expr>)
}

pub mod FuncCall {
    use self::super::{Expr, Ident, FuncCall, Idents, Exprs};

    pub fn new(prop_path : Idents, params : Exprs) -> Box<Expr> {
        box Expr {
            node : FuncCall(prop_path, params)
        }
    }
}

pub mod InclusiveRange {
    use self::super::{Expr, InclusiveRange};

    pub fn new(start : Box<Expr>, end : Box<Expr>) -> Box<Expr> {
        box Expr {
            node : InclusiveRange(start, end)
        }
    }
}

pub mod ExclusiveRange {
    use self::super::{Expr, ExclusiveRange};

    pub fn new(start : Box<Expr>, end : Box<Expr>) -> Box<Expr> {
        box Expr {
            node : ExclusiveRange(start, end)
        }
    }
}

pub mod Int {
    use self::super::{Expr, Int};

    pub fn new(value : int) -> Box<Expr> {
        box Expr {
            node : Int(value)
        }
    }
}

pub mod Float {
    use self::super::{Expr, Float};

    pub fn new(value : f64) -> Box<Expr> {
        box Expr {
            node : Float(value)
        }
    }
}

pub mod Bool {
    use self::super::{Expr, Bool};

    pub fn new(value : bool) -> Box<Expr> {
        box Expr {
            node : Bool(value)
        }
    }
}

pub mod StringLit {
    use self::super::{Expr, StringLit};

    pub fn new(value : String) -> Box<Expr> {
        box Expr {
            node : StringLit(value)
        }
    }
}

pub mod ArrayLit {
    use self::super::{Expr, ArrayLit, Exprs};

    pub fn new(value : Exprs) -> Box<Expr> {
        box Expr {
            node : ArrayLit(value)
        }
    }
}

pub mod MapLit {
    use self::super::{Expr, MapLit, Exprs};

    pub fn new(keys : Exprs, values : Exprs) -> Box<Expr> {
        box Expr {
            node : MapLit(keys, values)
        }
    }
}

pub mod IdentExpr {
    use self::super::{Expr, Ident, IdentExpr};

    pub fn new(value : Ident) -> Box<Expr> {
        box Expr {
            node : IdentExpr(value)
        }
    }
}

pub mod BinaryExpr {
    use self::super::{Expr, BinaryExpr};

    pub fn new(lhs : Box<Expr>, op : String, rhs : Box<Expr>) -> Box<Expr> {
        box Expr {
            node : BinaryExpr(lhs, op, rhs)
        }
    }
}

pub mod PrefixUnaryExpr {
    use self::super::{Expr, Ident, PrefixUnaryExpr};

    pub fn new(op : Ident, expr : Box<Expr>) -> Box<Expr> {
        box Expr {
            node : PrefixUnaryExpr(op, expr)
        }
    }
}

#[deriving(Show, PartialEq)]
pub enum Stmt_ {
    //1.expr
    ExprStmt(Box<Expr>),

    //1.vars
    VarDecl(Idents),

    //1.vars, 2.vals
    VarAssign(Idents, Exprs),

    //1.lhs, 2.rhs
    AssignStmt(Vec<Idents>, Exprs),

    //1.typ 
    LoopControlStmt(TokenType),

    //1.branches 
    IfElseStmt(Vec<Box<IfElseBranch>>),

    //1.vars, 2.gen, 3.stmts
    ForInLoop(Idents, Box<Expr>,  Vec<Box<Stmt>>),

    //1.cond, 2.stmts
    WhileLoop(Box<Expr>,  Vec<Box<Stmt>>),

    //1.name, 2.params, 3.stmts
    FunctionDef(Ident, Idents,  Vec<Box<Stmt>>),

    //1.ret_exprs
    ReturnStmt(Exprs),

    //1.name, 2.params, 3.stmts
    GeneratorDef(Ident, Idents, Vec<Box<Stmt>>),

    //1.values
    YieldStmt(Exprs)
}

pub mod ExprStmt {
    use self::super::{Expr, Stmt, ExprStmt};

    pub fn new(expr : Box<Expr>) -> Box<Stmt> {
        box Stmt {
            node : ExprStmt(expr)
        }
    }
}

pub mod VarDecl {
    use self::super::{Stmt, Ident, VarDecl, Idents};

    pub fn new(vars : Idents) -> Box<Stmt> {
        box Stmt {
            node : VarDecl(vars)
        }
    }
}

pub mod VarAssign {
    use self::super::{Expr, Stmt, Ident, VarAssign, Idents, Exprs};

    pub fn new(vars : Idents, vals : Exprs) -> Box<Stmt> {
        box Stmt {
            node : VarAssign(vars, vals)
        }
    }
}

pub mod AssignStmt {
    use self::super::{Expr, Stmt, Ident, AssignStmt, Idents, Exprs};

    pub fn new(lhs : Vec<Idents>, rhs : Exprs) -> Box<Stmt> {
        box Stmt {
            node : AssignStmt(lhs, rhs)
        }
    }
}

pub mod LoopControlStmt {
    use self::super::{Stmt, LoopControlStmt};
    use token::TokenType;

    pub fn new(typ : TokenType) -> Box<Stmt> {
        box Stmt {
            node : LoopControlStmt(typ)
        }
    }
}

#[deriving(PartialEq)]
pub struct IfElseBranch {
    pub cond  : Option<Box<Expr>>,
    pub stmts : Vec<Box<Stmt>>
}

impl IfElseBranch {
    pub fn new(cond  : Option<Box<Expr>>, stmts : Vec<Box<Stmt>>) -> Box<IfElseBranch> {
        box IfElseBranch {
            cond  : cond,
            stmts : stmts
        }
    }
}

impl Show for IfElseBranch {
    fn fmt(&self, f: &mut Formatter) -> Result {
        write!(f, "If/Else {}{{ {} }}", self.cond, self.stmts)
    }
}

pub mod IfElseStmt {
    use self::super::{Stmt, IfElseBranch, IfElseStmt};

    pub fn new(branches : Vec<Box<IfElseBranch>>) -> Box<Stmt> {
        box Stmt {
            node : IfElseStmt(branches)
        }
    }
}

pub mod ForInLoop {
    use self::super::{Expr, Stmt, Ident, ForInLoop, Idents};

    pub fn new(vars : Idents, gen : Box<Expr>, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box Stmt {
            node : ForInLoop(vars, gen, stmts)
        }
    }
}

pub mod WhileLoop {
    use self::super::{Expr, Stmt, WhileLoop};

    pub fn new(cond : Box<Expr>, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box Stmt {
            node : WhileLoop(cond, stmts)
        }
    }
}

pub mod FunctionDef {
    use self::super::{Stmt, Ident, FunctionDef, Idents};

    pub fn new(name : Ident, params : Idents, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box Stmt {
            node : FunctionDef(name, params, stmts)
        }
    }
}

pub mod ReturnStmt {
    use self::super::{Exprs, Stmt, ReturnStmt};

    pub fn new(ret_expr : Exprs) -> Box<Stmt> {
        box Stmt {
            node : ReturnStmt(ret_expr)
        }
    }
}

pub mod GeneratorDef {
    use self::super::{Stmt, Ident, GeneratorDef, Idents};

    pub fn new(name : Ident, params : Idents, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box Stmt {
            node : GeneratorDef(name, params, stmts)
        }
    }
}

pub mod YieldStmt {
    use self::super::{Expr, Stmt, YieldStmt, Exprs};

    pub fn new(values : Exprs) -> Box<Stmt> {
        box Stmt {
            node : YieldStmt(values)
        }
    }
}

