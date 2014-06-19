use codegen::CodeGenerator;
use codegen::builder::Builder; 
use codegen::generator::Generator; 
use codegen::lltype::Value;
// use collections::hashmap::HashMap;
use std::vec::Vec;
use std::owned::Box;
// use std::iter::FromIterator;
// use std::strbuf::StrBuf;
// use std::fmt::{Show, Formatter, Result};
use token::{Token, Add_Op, Mod_Op, Min_Op, Mult_Op, Div_Op, Power_Op };

///Identifier expressions, variable names etc.
pub type Ident = ~str;

pub trait Node : CodeGenerator {
    // fn span() -> Span
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                                Expressions                                 //                
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

pub trait Expr : Node {
    ///Return a Generator struct with the params for its llvm init function already
    ///created
    fn to_generator(&mut self, &mut Builder) -> Generator {
        fail!("to_generator called on non generator type");
    }

    fn to_value(&mut self, &mut Builder) -> Value {
        fail!("to_value called on type that cannot be resolved to a value");        
    }
}

///////////////////////////////////////
//              FuncCall             //
///////////////////////////////////////

///A call to a function including its qualifying path and passed parameters
pub struct FuncCall {
    prop_path : Vec<Ident>,
    params    : Vec<Box<Expr>>
}

impl CodeGenerator for FuncCall {
    fn gen_code(&mut self, builder : &mut Builder){
        let mut params = Vec::new();
        for param in self.params.mut_iter() {
            params.push(param.to_value(builder));
        }

        //getting the function name will change later
        let func_name = self.prop_path.get(0).as_slice();
        builder.call(func_name, params, "");   
    }
}

impl Node for FuncCall {}

impl Expr for FuncCall {}

impl FuncCall {
    pub fn new(prop_path : Vec<Ident>, params : Vec<Box<Expr>>) -> Box<Expr> {
        box FuncCall {
            prop_path : prop_path,
            params    : params
        } as Box<Expr>
    }
}

///////////////////////////////////////
//           InclusiveRange          //
///////////////////////////////////////

///An inclusive range 0...10 or 0 through 10
pub struct InclusiveRange {
    start : Box<Expr>, 
    end   : Box<Expr>
}

impl CodeGenerator for InclusiveRange {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl Node for InclusiveRange {}

impl Expr for InclusiveRange {
    fn to_generator(&mut self, builder : &mut Builder) -> Generator {
        let start = self.start.to_value(builder);
        let end = self.end.to_value(builder);

        let one = builder.int(1);
        let end_plus_one = builder.add_op(end, one, "add_tmp");
        builder.range_gen(start, end_plus_one)
    }
}

impl InclusiveRange {
    pub fn new(start : Box<Expr>, end : Box<Expr>) -> Box<Expr> {
        box InclusiveRange {
            start : start, 
            end   : end
        } as Box<Expr>
    }
}

///////////////////////////////////////
//           ExclusiveRange          //
///////////////////////////////////////

///An exclusive range 0..10 or 0 upto 10
pub struct ExclusiveRange {
    start : Box<Expr>, 
    end   : Box<Expr>
}

impl CodeGenerator for ExclusiveRange {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl Node for ExclusiveRange {}

impl Expr for ExclusiveRange {
    fn to_generator(&mut self, builder : &mut Builder) -> Generator {
        let start = self.start.to_value(builder);
        let end = self.end.to_value(builder);

        builder.range_gen(start, end)
    }
}

impl ExclusiveRange {
    pub fn new(start : Box<Expr>, end : Box<Expr>) -> Box<Expr> {
        box ExclusiveRange {
            start : start, 
            end   : end
        } as Box<Expr>
    }
}

///////////////////////////////////////
//                 Int               //
///////////////////////////////////////

///An integer expression
pub struct Int {
    value : int
}

impl CodeGenerator for Int {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl Node for Int {}

impl Expr for Int {
    fn to_value(&mut self, builder : &mut Builder) -> Value {
        builder.int(self.value)
    }
}

impl Int {
    pub fn new(value : int) -> Box<Expr> {
        box Int {
            value : value
        } as Box<Expr>
    }
}

///////////////////////////////////////
//             Identifier            //
///////////////////////////////////////

///An identifier
pub struct IdentExpr {
    value : Ident
}

impl CodeGenerator for IdentExpr {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl Node for IdentExpr {}

impl Expr for IdentExpr {
    fn to_value(&mut self, builder : &mut Builder) -> Value {
        match builder.get_var(self.value.as_slice()) {
            Some(val) => val,
            None => fail!("No {} in current scope", self.value)
        }
    }
}

impl IdentExpr {
    pub fn new(value : Ident) -> Box<Expr> {
        box IdentExpr {
            value : value
        } as Box<Expr>
    }
}

///////////////////////////////////////
//         Binary Expression         //
///////////////////////////////////////

///A binary expression
pub struct BinaryExpr {
    lhs : Box<Expr>, 
    op  : Token, 
    rhs : Box<Expr>
}

impl CodeGenerator for BinaryExpr {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl Node for BinaryExpr {}

impl Expr for BinaryExpr {
    fn to_value(&mut self, builder : &mut Builder) -> Value {
        let left_val  = self.lhs.to_value(builder);
        let right_val = self.rhs.to_value(builder);

        match self.op.typ {
            Add_Op => builder.add_op(left_val, right_val, "add_tmp"),
            Mod_Op => builder.mod_op(left_val, right_val, "mod_tmp"),
            Min_Op => builder.sub_op(left_val, right_val, "sub_tmp"), 
            Mult_Op => builder.mul_op(left_val, right_val, "mul_tmp"),
            Div_Op => builder.div_op(left_val, right_val, "div_tmp"),
            // Power_Op => builder.mod_op(left_val, right_val, "pwr_tmp"),
            _ => fail!("expression with {:?} cant be resolved to a value", self.op.typ)
        }
    }
}

impl BinaryExpr {
    pub fn new(lhs : Box<Expr>, op : Token, rhs : Box<Expr>) -> Box<Expr> {
        box BinaryExpr {
            lhs : lhs,
            op  : op,
            rhs : rhs
        } as Box<Expr>
    }
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                                Statements                                  //                
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

pub trait Stmt : Node {
    
}

///////////////////////////////////////
//        Expression Statement       //
///////////////////////////////////////

///A stmt that is also an expression, function calls and var++/-- etc.
pub struct ExprStmt {
    expr : Box<Expr>
}

impl CodeGenerator for ExprStmt {
    fn gen_code(&mut self, builder : &mut Builder){
        self.expr.gen_code(builder);
    }
}

impl Node for ExprStmt {}

impl Stmt for ExprStmt {}

impl ExprStmt {
    pub fn new(expr : Box<Expr>) -> Box<Stmt> {
        box ExprStmt {
            expr : expr
        } as Box<Stmt>
    }
}

///////////////////////////////////////
//            For In Loop            //
///////////////////////////////////////

///For in loop bound variables, generator expression, and block of stmts
pub struct ForInLoop {
    vars  : Vec<Ident>,
    gen   : Box<Expr>, 
    stmts : Vec<Box<Stmt>>
}

impl CodeGenerator for ForInLoop {
    fn gen_code(&mut self, builder : &mut Builder){
        builder.open_scope();

        let gen = self.gen.to_generator(builder);

        //init generator
        let loop_init  = builder.new_block("for_loop_init");
        //call next on generator and validate it is not done
        let loop_check = builder.new_block("for_loop_check");
        //bind variables to the generator return and evaluate stmts
        let loop_stmts = builder.new_block("for_loop_stmts");
        //jump out of the loop to the next stmt
        let loop_exit  = builder.new_block("for_loop_exit");

        //make sure previous block runs loop code after it
        builder.break_to(loop_init);

        //initialize generator
        builder.goto_block(loop_init);
        let init_fn = gen.init_func.clone();
        let init_args = gen.init_args.clone();
        builder.call(init_fn, init_args, "");
        builder.break_to(loop_check);

        //check to see if generator is done or not
        builder.goto_block(loop_check);
        let done = builder.call(gen.next_func, vec!(gen.gen), "done");
        let done_value = builder.int(0);
        let cmp = builder.cmp_eq(done, done_value, "done_cmp");
        builder.conditional_break(cmp, loop_exit, loop_stmts);

        //run loop stmts...but first bind yielded values to loop local vars
        builder.goto_block(loop_stmts);

        if(self.vars.len() > gen.ret_count) {
            fail!("Trying to bind to more variables than the generator returns");
        }

        let start_pos = gen.var_count + 1;
        let end_pos   = gen.var_count + gen.ret_count + 1;
        let mut vars  = self.vars.iter();

        for i in range(start_pos, end_pos) {
            let var_name = vars.next().unwrap().as_slice();
            let ret_val  = builder.get_obj_property(gen.gen, i as int, "ctx_ret");
            let var_val  = builder.load(ret_val, var_name);
            builder.set_var(var_name, var_val);
        }

        for stmt in self.stmts.mut_iter(){
            stmt.gen_code(builder);
        }
        builder.break_to(loop_check);

        builder.close_scope();

        //make sure following stmts start from the loop exit block
        builder.goto_block(loop_exit);

    }
}

impl Node for ForInLoop {}

impl Stmt for ForInLoop {}

impl ForInLoop {
    pub fn new(vars : Vec<Ident>, gen : Box<Expr>, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box ForInLoop {
            vars  : vars,
            gen   : gen, 
            stmts : stmts
        } as Box<Stmt>
    }
}

// impl Show for ForInLoop {
//     fn fmt(&self, f: &mut Formatter) -> Result {
//         let mut vars = StrBuf::new();
//         vars.push_str("vars: ");
//         for var in self.vars.iter() {
//             vars.push_str(var.as_slice());
//         }

//         let mut gen = StrBuf::new();
//         gen.push_str("gen: ");
//         gen.push_str(format!("{:?}", self.gen));

//         let mut stmts = StrBuf::new();
//         stmts.push_str("stmts: ");
//         for stmt in self.stmts.iter() {
//             stmts.push_str(format!("{:?}", stmt));
//         }

//         let for_in_loop = format!(
//             "ForInLoop \\{\n{}\n{}\n{}\n\\}", 
//             vars.as_slice(),
//             gen.as_slice(),
//             stmts.as_slice()
//         );
//         write!(f, "{}", for_in_loop)
//     }
// }

///////////////////////////////////////
//             While Loop            //
///////////////////////////////////////

///While loop condition expression and block of stmts
pub struct WhileLoop {
    cond  : Box<Expr>, 
    stmts : Vec<Box<Stmt>>
}

impl CodeGenerator for WhileLoop {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl Node for WhileLoop {}

impl Stmt for WhileLoop {}

impl WhileLoop {
    
}