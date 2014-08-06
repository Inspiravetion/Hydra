use std::fmt::{Show, Formatter, Result};
use token::*;

pub type Ident = ~str;

pub struct Expr {
    pub node : Expr_ //This might have to be boxed
}

impl Show for Expr {
    fn fmt(&self, f: &mut Formatter) -> Result {
        write!(f, "{}", self.node)
    }
}

pub struct Stmt {
    pub node : Stmt_ //This might have to be boxed
}

impl Show for Stmt {
    fn fmt(&self, f: &mut Formatter) -> Result {
        write!(f, "{}", self.node)
    }
}

#[deriving(Show)]
pub enum Expr_ {
    //1.prop_path, 2.params
    FuncCall(Vec<Ident>, Vec<Box<Expr>>),

    //1.start, 2.end
    InclusiveRange(Box<Expr>, Box<Expr>),

    //1.start, 2.end
    ExclusiveRange(Box<Expr>, Box<Expr>),

    //1.value
    Int(int),

    //1.value
    IdentExpr(Ident),

    //1.lhs, 2.op, 3.rhs
    BinaryExpr(Box<Expr>, Token, Box<Expr>),

    //1.op, 2.expr
    PrefixUnaryExpr(Ident, Box<Expr>)
}

pub mod FuncCall {
    use self::super::{Expr, Stmt, Ident, FuncCall};

    pub fn new(prop_path : Vec<Ident>, params : Vec<Box<Expr>>) -> Box<Expr> {
        box Expr {
            node : FuncCall(prop_path, params)
        }
    }
}

pub mod InclusiveRange {
    use self::super::{Expr, Stmt, Ident, InclusiveRange};

    pub fn new(start : Box<Expr>, end : Box<Expr>) -> Box<Expr> {
        box Expr {
            node : InclusiveRange(start, end)
        }
    }
}

pub mod ExclusiveRange {
    use self::super::{Expr, Stmt, Ident, ExclusiveRange};

    pub fn new(start : Box<Expr>, end : Box<Expr>) -> Box<Expr> {
        box Expr {
            node : ExclusiveRange(start, end)
        }
    }
}

pub mod Int {
    use self::super::{Expr, Stmt, Ident, Int};

    pub fn new(value : int) -> Box<Expr> {
        box Expr {
            node : Int(value)
        }
    }
}

pub mod IdentExpr {
    use self::super::{Expr, Stmt, Ident, IdentExpr};

    pub fn new(value : Ident) -> Box<Expr> {
        box Expr {
            node : IdentExpr(value)
        }
    }
}

pub mod BinaryExpr {
    use self::super::{Expr, Stmt, BinaryExpr};
    use token::Token;

    pub fn new(lhs : Box<Expr>, op : Token, rhs : Box<Expr>) -> Box<Expr> {
        box Expr {
            node : BinaryExpr(lhs, op, rhs)
        }
    }
}

pub mod PrefixUnaryExpr {
    use self::super::{Expr, Stmt, Ident, PrefixUnaryExpr};

    pub fn new(op : Ident, expr : Box<Expr>) -> Box<Expr> {
        box Expr {
            node : PrefixUnaryExpr(op, expr)
        }
    }
}

#[deriving(Show)]
pub enum Stmt_ {
    //1.expr
    ExprStmt(Box<Expr>),

    //1.vars
    VarDecl(Vec<Ident>),

    //1.vars, 2.vals
    VarAssign(Vec<Ident>, Vec<Box<Expr>>),

    //1.lhs, 2.rhs
    AssignStmt(Vec<Vec<Ident>>, Vec<Box<Expr>>),

    //1.typ 
    LoopControlStmt(TokenType),

    //1.branches 
    IfElseStmt(Vec<IfElseBranch>),

    //1.vars, 2.gen, 3.stmts
    ForInLoop(Vec<Ident>, Box<Expr>,  Vec<Box<Stmt>>),

    //1.cond, 2.stmts
    WhileLoop(Box<Expr>,  Vec<Box<Stmt>>),

    //1.name, 2.params, 3.stmts
    FunctionDef(Ident, Vec<Ident>,  Vec<Box<Stmt>>),

    //1.ret_expr
    ReturnStmt(Box<Expr>),

    //1.name, 2.params, 3.stmts
    GeneratorDef(Ident, Vec<Ident>, Vec<Box<Stmt>>),

    //1.values
    YieldStmt(Vec<Box<Expr>>)
}

pub mod ExprStmt {
    use self::super::{Expr, Stmt, Ident, ExprStmt};

    pub fn new(expr : Box<Expr>) -> Box<Stmt> {
        box Stmt {
            node : ExprStmt(expr)
        }
    }
}

pub mod VarDecl {
    use self::super::{Expr, Stmt, Ident, VarDecl};

    pub fn new(vars : Vec<Ident>) -> Box<Stmt> {
        box Stmt {
            node : VarDecl(vars)
        }
    }
}

pub mod VarAssign {
    use self::super::{Expr, Stmt, Ident, VarAssign};

    pub fn new(vars : Vec<Ident>, vals : Vec<Box<Expr>>) -> Box<Stmt> {
        box Stmt {
            node : VarAssign(vars, vals)
        }
    }
}

pub mod AssignStmt {
    use self::super::{Expr, Stmt, Ident, AssignStmt};

    pub fn new(lhs : Vec<Vec<Ident>>, rhs : Vec<Box<Expr>>) -> Box<Stmt> {
        box Stmt {
            node : AssignStmt(lhs, rhs)
        }
    }
}

pub mod LoopControlStmt {
    use self::super::{Expr, Stmt, LoopControlStmt};
    use token::TokenType;

    pub fn new(typ : TokenType) -> Box<Stmt> {
        box Stmt {
            node : LoopControlStmt(typ)
        }
    }
}

pub struct IfElseBranch {
    cond  : Option<Box<Expr>>,
    stmts : Vec<Box<Stmt>>
}

impl IfElseBranch {
    pub fn new(cond  : Option<Box<Expr>>, stmts : Vec<Box<Stmt>>) -> IfElseBranch {
        IfElseBranch {
            cond  : cond,
            stmts : stmts
        }
    }
}

impl Show for IfElseBranch {
    fn fmt(&self, f: &mut Formatter) -> Result {
        write!(f, "If/Else {}\\{ {}\\}", self.cond, self.stmts)
    }
}

pub mod IfElseStmt {
    use self::super::{Expr, Stmt, IfElseBranch, IfElseStmt};

    pub fn new(branches : Vec<IfElseBranch>) -> Box<Stmt> {
        box Stmt {
            node : IfElseStmt(branches)
        }
    }
}

pub mod ForInLoop {
    use self::super::{Expr, Stmt, Ident, ForInLoop};

    pub fn new(vars : Vec<Ident>, gen : Box<Expr>, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box Stmt {
            node : ForInLoop(vars, gen, stmts)
        }
    }
}

pub mod WhileLoop {
    use self::super::{Expr, Stmt, Ident, WhileLoop};

    pub fn new(cond : Box<Expr>, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box Stmt {
            node : WhileLoop(cond, stmts)
        }
    }
}

pub mod FunctionDef {
    use self::super::{Expr, Stmt, Ident, FunctionDef};

    pub fn new(name : Ident, params : Vec<Ident>, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box Stmt {
            node : FunctionDef(name, params, stmts)
        }
    }
}

pub mod ReturnStmt {
    use self::super::{Expr, Stmt, Ident, ReturnStmt};

    pub fn new(ret_expr : Box<Expr>) -> Box<Stmt> {
        box Stmt {
            node : ReturnStmt(ret_expr)
        }
    }
}

pub mod GeneratorDef {
    use self::super::{Expr, Stmt, Ident, GeneratorDef};

    pub fn new(name : Ident, params : Vec<Ident>, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box Stmt {
            node : GeneratorDef(name, params, stmts)
        }
    }
}

pub mod YieldStmt {
    use self::super::{Expr, Stmt, Ident, YieldStmt};

    pub fn new(values : Vec<Box<Expr>>) -> Box<Stmt> {
        box Stmt {
            node : YieldStmt(values)
        }
    }
}

