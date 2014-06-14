use codegen::CodeGenerator;
use codegen::builder::Builder; 
use codegen::generator::Generator; 
use codegen::lltype::Value;
use collections::hashmap::HashMap;
use token::Token;
use std::vec::Vec;
use std::owned::Box;
use std::iter::FromIterator;

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

    ///Return a Generator struct with the params for its llvm init function already
    ///created
    pub fn to_generator(&mut self, builder : &mut Builder) -> Generator {
        match *self.data {
            InclusiveRange(ref start_exp, ref end_exp) => {
                let start = match *start_exp.data {
                    Int(i) => i,
                    _ => fail!("Ranges must take integers")
                };

                let end = match *end_exp.data {
                    Int(i) => i,
                    _ => fail!("Ranges must take integers")
                };

                builder.range_gen(start, end + 1)
            },
            ExclusiveRange(ref start_exp, ref end_exp) => {
                let start = match *start_exp.data {
                    Int(i) => i,
                    _ => fail!("Ranges must take integers")
                };

                let end = match *end_exp.data {
                    Int(i) => i,
                    _ => fail!("Ranges must take integers")
                };

                builder.range_gen(start, end)
            },
            _ => fail!("Object not a generator")
        }   
    }

    pub fn gen_func_call(&mut self, builder : &mut Builder) {
        let (prop_path, params) = match *self.data {
            FuncCall(ref mut props, ref mut p) => (props, p),
            _ => fail!("called gen_func_call on an expression that isn't a func call")  
        };

        let param_vals : Vec<Value> = FromIterator::from_iter(params.iter().map(|param| param.to_value(builder)));

        let func_name = prop_path.get(0).as_slice();
        builder.call(func_name, param_vals, "");
    }

    pub fn to_value(&self, builder : &mut Builder) -> Value {
        match *self.data {
            IdentExpr(ref ident) => {
                match builder.get_var(ident.as_slice()) {
                    Some(val) => val,
                    None => fail!("No {} in current scope", ident)
                }
            },
            _ => fail!("Only expression values work right now")
        }
    }
}

impl Node for Expr {
    
}

impl CodeGenerator for Expr {
    fn gen_code(&mut self, builder : &mut Builder){
        match *self.data {
            FuncCall(_, _) => self.gen_func_call(builder),
            _ => fail!("The expression you tried to generate code for is not supported yet")
        };
    }
}

impl Stmt {
    pub fn new(stmt : StmtData) -> Stmt {
        Stmt { data : stmt }
    }

    fn gen_for_in_loop(&mut self, builder : &mut Builder) {
        let (vars_ref, gen_ref, stmts_ref) = match self.data {
            ForInLoop(ref v, ref mut r, ref mut s) => (v, r, s),
            _ => fail!("Called gen_for_in_loop on Stmt that is not a for in loop")
        };

        builder.open_scope();

        let gen = gen_ref.to_generator(builder);

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

        if(vars_ref.len() > gen.ret_count) {
            fail!("Trying to bind to more variables than the generator returns");
        }

        let start_pos = gen.var_count + 1;
        let end_pos   = gen.var_count + gen.ret_count + 1;
        let mut vars  = vars_ref.iter();

        for i in range(start_pos, end_pos) {
            let var_name = vars.next().unwrap().as_slice();
            let ret_val  = builder.get_obj_property(gen.gen, i as int, "ctx_ret");
            let var_val  = builder.load(ret_val, var_name);
            builder.set_var(var_name, var_val);
        }

        //TODO: use the scope to generate the stmts in the for loop
        for stmt in stmts_ref.mut_iter(){
            stmt.gen_code(builder);
        }
        builder.break_to(loop_check);

        builder.close_scope();

        //make sure following stmts start from the loop exit block
        builder.goto_block(loop_exit);
    }
}

impl Node for Stmt {

}

impl CodeGenerator for Stmt {
    fn gen_code(&mut self, builder : &mut Builder){
        match self.data {
            ForInLoop(_, _, _)     => self.gen_for_in_loop(builder),
            ExprStmt(ref mut expr) => expr.gen_code(builder),
            _ => {}
        };
    }
}