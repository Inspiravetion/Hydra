use codegen::CodeGenerator;
use codegen::builder::Builder; 
use codegen::generator::Generator; 
use codegen::lltype::{Value, Block, Type};
// use collections::hashmap::HashMap;
use std::vec::Vec;
use std::owned::Box;
// use std::iter::FromIterator;
// use std::strbuf::StrBuf;
// use std::fmt::{Show, Formatter, Result};
use token::*;


///Identifier expressions, variable names etc.
pub type Ident = ~str;

pub trait Node : CodeGenerator {
    // fn span() -> Span
}

pub trait GenGenerator {
    ///Add declared variable types to vec so that a generator state object can 
    ///be created
    fn register_state_vars(&mut self, Vec<Type>){

    }

    ///Generate your regular code but also break to the end of the save and restore
    ///blocks provided to save and restore state variables 
    fn gen_gen_code(&mut self, Block, Block, &mut Vec<Block>, &mut Builder){
        fail!("This type cannot build code for a generator");
    }

    //TODO: Remember to return a 0 as the last statement to let the caller know it is done

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
        self.to_value(builder);
    }
}

impl Node for FuncCall {}

impl Expr for FuncCall {
    fn to_value(&mut self, builder : &mut Builder) -> Value {
        let mut params = Vec::new();
        for param in self.params.mut_iter() {
            params.push(param.to_value(builder));
        }

        //getting the function name will change later
        let func_name = self.prop_path.get(0).as_slice();
        builder.call(func_name, params, format!("{}_tmp", func_name))
    }
}

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
        let name = self.value.as_slice();

        match builder.get_var(name) {
            Some(val) => builder.load(val, name),
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

        //TODO: verify that the operator being used is visible in the current scope
        let args = vec!(left_val, right_val);
        builder.call(
            self.op.text, 
            args, 
            format!("{}_tmp", self.op.text)
        )
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

///////////////////////////////////////
//       Unary Prefix Expression     //
///////////////////////////////////////

///A unary prefix expression
pub struct PrefixUnaryExpr {
    op   : Ident, 
    expr : Box<Expr>
}

impl CodeGenerator for PrefixUnaryExpr {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl Node for PrefixUnaryExpr {}

impl Expr for PrefixUnaryExpr {
    fn to_value(&mut self, builder : &mut Builder) -> Value {
        let expr_val = self.expr.to_value(builder);

        //TODO: verify that the operator being used is visible in the current scope
        let args = vec!(expr_val);
        builder.call(
            self.op, 
            args, 
            format!("{}_tmp", self.op)
        )
    }
}

impl PrefixUnaryExpr {
    pub fn new(op : Ident, expr : Box<Expr>) -> Box<Expr> {
        box PrefixUnaryExpr {
            op   : op,
            expr : expr
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
//         Var Declaration           //
//ie.                                //
//  var a                            //
//  var a, b, c                      //
///////////////////////////////////////

/// variables to create in the current scope
pub struct VarDecl {
    vars : Vec<Ident>,
}

impl CodeGenerator for VarDecl {
    fn gen_code(&mut self, builder : &mut Builder){
        for var in self.vars.iter() {
            let name = var.as_slice();
            let val = builder.new_default_var(name);
            builder.set_var(name, val);
        }
    }
}

impl Node for VarDecl {}

impl Stmt for VarDecl {}

impl VarDecl {
    pub fn new(vars : Vec<Ident>) -> Box<Stmt> {
        box VarDecl {
            vars : vars
        } as Box<Stmt>
    }
}

///////////////////////////////////////
//         Var Assignment            //
//ie.                                //
//  var a = 1                        //
//  var a, b, c = 1, 2, 3            //
//  var a, b, c = 1, 2               //
///////////////////////////////////////

/// variables to create in the current scope
pub struct VarAssign {
    vars : Vec<Ident>,
    vals : Vec<Box<Expr>>
}

impl CodeGenerator for VarAssign {
    fn gen_code(&mut self, builder : &mut Builder){
        let mut i = 0;

        for var in self.vars.iter() {
            let val = if i < self.vals.len() {
                self.vals.get_mut(i).to_value(builder)
            } else {
                builder.default_value()
            };

            
            let name = var.as_slice();
            let var_val = builder.new_var(val, name);
            builder.set_var(name, var_val);

            i += 1;
        }
    }
}

impl Node for VarAssign {}

impl Stmt for VarAssign {}

impl VarAssign {
    pub fn new(vars : Vec<Ident>, vals : Vec<Box<Expr>>) -> Box<Stmt> {
        box VarAssign {
            vars : vars,
            vals : vals
        } as Box<Stmt>
    }
}

///////////////////////////////////////
//             Assign Stmt           //
//ie.                                //
//  a = 1                            //
//  a, b, c = 1, 2, 3                //
///////////////////////////////////////

/// variables to create in the current scope
pub struct AssignStmt {
    lhs : Vec<Vec<Ident>>,
    rhs : Vec<Box<Expr>>
}

impl CodeGenerator for AssignStmt {
    fn gen_code(&mut self, builder : &mut Builder){
        if self.lhs.len() != self.rhs.len() {
            fail!("left hand and right hand sides of assignment stmt arent compatible");
        }

        let mut i = 0;

        for prop_path in self.lhs.iter() {
            let var_name = prop_path.get(0).as_slice();
            let var_val = self.rhs.get_mut(i).to_value(builder);
            builder.assign_var(var_val, var_name);
            i += 1;
        }        
    }
}

impl Node for AssignStmt {}

impl Stmt for AssignStmt {}

impl AssignStmt {
    pub fn new(lhs : Vec<Vec<Ident>>, rhs : Vec<Box<Expr>>) -> Box<Stmt> {
        box AssignStmt {
            lhs : lhs,
            rhs : rhs
        } as Box<Stmt>
    }
}

///////////////////////////////////////
//         Loop Control Stmt         //
//ie.                                //
//  break                            //
//  continue                         //
///////////////////////////////////////

/// A loop statement that controls how the loop works
pub struct LoopControlStmt {
    typ : TokenType
}

impl CodeGenerator for LoopControlStmt {
    fn gen_code(&mut self, builder : &mut Builder){
          match self.typ {
            Break => {
                match builder.get_break_block() {
                    Some(block) => builder.break_to(block),
                    None => {}
                };
            },
            Continue => {
                match builder.get_continue_block() {
                    Some(block) => builder.break_to(block),
                    None => {}
                };
            },
            _ => fail!("Created a LoopControlStmt with an incompatibly keyword {:?}", self.typ)
          }
    }
}

impl Node for LoopControlStmt {}

impl Stmt for LoopControlStmt {}

impl LoopControlStmt {
    pub fn new(typ : TokenType) -> Box<Stmt> {
        box LoopControlStmt {
            typ : typ
        } as Box<Stmt>
    }
}

///////////////////////////////////////
//            If Else Stmt           //
//ie.                                //
///////////////////////////////////////

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

/// a statement that runs different code based on conditions
pub struct IfElseStmt {
    branches : Vec<IfElseBranch>
}

impl CodeGenerator for IfElseStmt {
    fn gen_code(&mut self, builder : &mut Builder){
        let mut next_cond = builder.new_block("if_cond");
        let if_else_exit = builder.new_block("if_else_exit");

        builder.break_to(next_cond);

        for branch in self.branches.mut_iter() {
            match branch.cond {
              Some(ref mut expr) => {
                builder.goto_block(next_cond);

                let cond = expr.to_value(builder);
                let false_value = builder.int(0);
                let cmp = builder.cmp_eq(cond, false_value, "if_cmp");

                next_cond = builder.new_block("if_else_cond");
                let stmts_block = builder.new_block("if_else_stmts");
                builder.conditional_break(cmp, next_cond, stmts_block);

                builder.goto_block(stmts_block);
                builder.open_scope();

                for stmt in branch.stmts.mut_iter() {
                    stmt.gen_code(builder);
                }

                builder.close_scope();
                builder.break_to(if_else_exit);
              },
              None => {
                builder.goto_block(next_cond);
                builder.open_scope();

                for stmt in branch.stmts.mut_iter() {
                    stmt.gen_code(builder);
                }

                builder.close_scope();
                builder.break_to(if_else_exit);
              }  
            };
        }

        builder.goto_block(if_else_exit);
    }
}

impl Node for IfElseStmt {}

impl Stmt for IfElseStmt {}

impl IfElseStmt {
    pub fn new(branches : Vec<IfElseBranch>) -> Box<Stmt> {
        box IfElseStmt {
            branches : branches
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

        //setup loop scope for break and continue
        builder.open_loop_scope(loop_check, loop_exit);

        //make sure previous block runs loop code after it
        builder.break_to(loop_init);

        //initialize generator
        builder.goto_block(loop_init);
        let init_fn = gen.init_func.clone();
        let init_args = gen.init_args.clone();
        builder.call(init_fn, init_args, "");

        //create variables 
        for var in self.vars.iter(){
            let var_name = var.as_slice();
            let undefined = builder.new_default_var(var_name);
            builder.set_var(var_name, undefined);
        }

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

        //bind variables from generator call
        for i in range(start_pos, end_pos) {
            let var_name = vars.next().unwrap().as_slice();

            //get opaque return value from generator
            let ret_val  = builder.get_obj_property(gen.gen, i as int, "ctx_ret");
            let var_val  = builder.load(ret_val, var_name);

            //change the bound variable
            builder.assign_var(var_val, var_name);
        }

        for stmt in self.stmts.mut_iter(){
            stmt.gen_code(builder);
        }
        builder.break_to(loop_check);

        builder.close_loop_scope();
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

///////////////////////////////////////
//             While Loop            //
///////////////////////////////////////

///While loop condition expression and block of stmts
pub struct WhileLoop {
    cond  : Box<Expr>, 
    stmts : Vec<Box<Stmt>>
}

impl CodeGenerator for WhileLoop {
    fn gen_code(&mut self, builder : &mut Builder){
        builder.open_scope();

        let loop_check = builder.new_block("while_loop_check");
        let loop_stmts = builder.new_block("while_loop_stmts");
        let loop_exit  = builder.new_block("while_loop_exit");

        builder.open_loop_scope(loop_check, loop_exit);

        builder.break_to(loop_check);

        builder.goto_block(loop_check);
        let cond = self.cond.to_value(builder);
        let fals = builder.int(0);
        let cmp = builder.cmp_eq(fals, cond, "while_cmp");
        builder.conditional_break(cmp, loop_exit, loop_stmts);

        builder.goto_block(loop_stmts);
        for stmt in self.stmts.mut_iter(){
            stmt.gen_code(builder);
        }
        builder.break_to(loop_check);

        builder.goto_block(loop_exit);

        builder.close_loop_scope();
        builder.close_scope();
    }
}

impl Node for WhileLoop {}

impl Stmt for WhileLoop {}

impl WhileLoop {
    pub fn new(cond : Box<Expr>, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box WhileLoop {
            cond  : cond, 
            stmts : stmts
        } as Box<Stmt>
    }
}

///////////////////////////////////////
//         Function Definition       //
///////////////////////////////////////

///Function definition
pub struct FunctionDef {
    name   : Ident,
    params : Vec<Ident>, 
    stmts  : Vec<Box<Stmt>>
}

impl CodeGenerator for FunctionDef {
    fn gen_code(&mut self, builder : &mut Builder){
        let saved_block = builder.new_block("function_def_bridge");
        builder.break_to(saved_block);

        builder.with_fresh_scope(|fb : &mut Builder|{
            //This will end up being some general HyObj type or sumthn
            let int_type = fb.int32_type();

            let name = self.name.as_slice();
            let param_types = Vec::from_elem(self.params.len(), int_type);

            fb.create_function(name, param_types, int_type,|fb : &mut Builder|{
                fb.goto_first_block();
                
                //bind params to local vars
                let mut i = 0;
                for param in self.params.iter() {
                    //right now this is pass by value...not by ref
                    let name = param.as_slice();
                    let param_val = fb.get_param(i);
                    let var_val = fb.new_var(param_val, name);
                    fb.set_var(name, var_val);

                    i += 1;
                }

                for stmt in self.stmts.mut_iter() {
                    stmt.gen_code(fb);
                }

                fb.goto_block(saved_block);
            });
        });
    }
}

impl Node for FunctionDef {}

impl Stmt for FunctionDef {}

impl FunctionDef {
    pub fn new(name : Ident, params : Vec<Ident>, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box FunctionDef {
            name   : name,
            params : params, 
            stmts  : stmts
        } as Box<Stmt>
    }
}

///////////////////////////////////////
//             Return Stmt           //
///////////////////////////////////////

/// A return statement
pub struct ReturnStmt {
    ret_expr : Box<Expr>
}

impl CodeGenerator for ReturnStmt {
    fn gen_code(&mut self, builder : &mut Builder){
        let val = self.ret_expr.to_value(builder);
        builder.ret(val);
    }
}

impl Node for ReturnStmt {}

impl Stmt for ReturnStmt {}

impl ReturnStmt {
    pub fn new(ret_expr : Box<Expr>) -> Box<Stmt> {
        box ReturnStmt {
            ret_expr : ret_expr
        } as Box<Stmt>
    }
}

///////////////////////////////////////
//       Generator Definition        //
///////////////////////////////////////

///A generator definition
pub struct GeneratorDef {
    name   : Ident,
    params : Vec<Ident>,
    stmts  : Vec<Box<Stmt>>
}

impl CodeGenerator for GeneratorDef {
    fn gen_code(&mut self, builder : &mut Builder){
         let saved_block = builder.new_block("gen_def_bridge");
        builder.break_to(saved_block);

        builder.with_fresh_scope(|fb : &mut Builder|{
            
            let name = self.name.as_slice();
            //This will end up being some general HyObj type or sumthn
            let int_type = fb.int32_type();
            let void_type = fb.void_type();

            //Create Type with fields for all state variables and next block to run
            let mut state_types = vec!(fb.string_type());
            //Add space for params
            for param in self.params.iter() {
                state_types.push(int_type);
            }
            //Add Space for stmts state
            for stmt in self.stmts.mut_iter() {
                // stmt.register_state_vars(&mut state_types);
            }

            //Create gen type
            let concrete_gen_type = fb.create_type(state_types, name);
            let gen_type = fb.to_ptr_type(concrete_gen_type);

            //Create generator next function
            let next_name = format!("!{}_next", name);
            let next_params = vec!(gen_type);
            let mut entry_block_holder = Vec::new();

            fb.create_function(next_name, next_params, int_type,|fb : &mut Builder|{
                fb.goto_first_block();
                
                //have stmts build their restoration code in this block
                let state_restore = fb.new_block("gen_state_restore");
                //have stmts build their state saving code in this block
                let state_save = fb.new_block("gen_state_save");
                //init should set the first block to start at as this entry block
                let entry = fb.new_block("gen_state_entry");
                //early returns should break here and this should return 0 to indicate
                //the generator is done
                let exit = fb.new_block("gen_exit");
                entry_block_holder.push(entry);

                let mut possible_labels = vec!(state_save, entry, exit);

                fb.goto_block(entry);
                fb.break_to(exit);
                // for stmt in self.stmts.mut_iter() {
                //     //pass in gen_ctx here?
                //     // stmt.gen_gen_code(
                //           state_save, 
                //           state_restore, 
                //           &mut possible_labels,
                //           fb
                //        );
                // }

                // //check which block to resume on
                fb.goto_block(state_restore);
                let gen_ctx = fb.get_param(0);
                let ctx_state = fb.get_obj_property(gen_ctx, 0, "ctx_state");
                let label = fb.load(ctx_state, "dest");
                fb.indirect_break(label, possible_labels);

                fb.goto_block(state_save);
                let continue_val = fb.int(1);
                fb.ret(continue_val);

                fb.goto_block(exit);
                let done_val = fb.int(0);
                fb.ret(done_val);
            });


            let init_name = format!("!{}_init", name);
            let init_param_types = Vec::from_elem(self.params.len(), int_type);
            let mut init_params = vec!(gen_type);
            init_params.push_all(init_param_types.as_slice());


            //Create generator init function...bind parameters and set first block to 
            //entry block
            fb.create_function(init_name, init_params, void_type,|fb : &mut Builder|{
                fb.goto_first_block();
                
                let gen_ctx = fb.get_param(0);
                let ctx_state = fb.get_obj_property(gen_ctx, 0, "ctx_state");

                //setup entry block
                let next_func = fb.get_function(next_name);
                let entry_block = fb.block_address(next_func , entry_block_holder.as_slice()[0]);

                fb.store(entry_block, ctx_state);

                //bind params to local vars
                let mut i = 0;
                for param in self.params.iter() {
                    //right now this is pass by value...not by ref
                    let param_val = fb.get_param(i + 1);
                    let state_var_slot = fb.get_obj_property(gen_ctx, i + 1, format!("param{}", i));
                    fb.store(param_val, state_var_slot);

                    i += 1;
                }

                fb.ret_void();

                fb.goto_block(saved_block);
            });
        });

    }
}

impl Node for GeneratorDef {}

impl Stmt for GeneratorDef {}

impl GeneratorDef {
    pub fn new(name : Ident, params : Vec<Ident>, stmts : Vec<Box<Stmt>>) -> Box<Stmt> {
        box GeneratorDef {
            name   : name,
            params : params, 
            stmts  : stmts
        } as Box<Stmt>
    }
}
