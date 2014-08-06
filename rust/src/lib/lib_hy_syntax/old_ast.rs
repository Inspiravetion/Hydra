use codegen::CodeGenerator;
use codegen::builder::{Builder, GenBuilder, GenGenState}; 
use codegen::generator::Generator; 
use codegen::lltype::{Value, Block, Type};

use std::vec::Vec;
use std::owned::Box;

use token::*;


///Identifier expressions, variable names etc.
pub type Ident = ~str;

pub trait Node {
    // fn span() -> Span
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                                Expressions                                 //                
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

pub trait Expr : Node {}

///////////////////////////////////////
//              FuncCall             //
///////////////////////////////////////

///A call to a function including its qualifying path and passed parameters
pub struct FuncCall {
    prop_path : Vec<Ident>,
    params    : Vec<Box<Expr>>
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

impl Node for InclusiveRange {}

impl Expr for InclusiveRange {}

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

impl Node for ExclusiveRange {}

impl Expr for ExclusiveRange {}

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

impl Node for Int {}

impl Expr for Int {}

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

impl Node for IdentExpr {}

impl Expr for IdentExpr {}

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

pub trait Stmt {
    
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

impl GenGenerator for ExprStmt {}

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

impl GenGenerator for VarDecl {
    fn register_state_vars(&mut self, gb : &mut GenBuilder) -> uint {
        let num_vars = self.vars.len();
        gb.register_n_variables(num_vars);

        num_vars
    }

    ///Generate your regular code but also break to the end of the save and restore
    ///blocks provided to save and restore state variables 
    fn gen_gen_code(&mut self, ggs : &mut GenGenState, builder : &mut Builder){
        let mut i = 0;
        let base_state_index = ggs.state_index();

        for var in self.vars.iter() {
            //actual code
            builder.goto_block(ggs.stmts_blk);

            let val = builder.default_value();
            let name = var.as_slice();
            //load val into state slot and then set the var to the state slot
            let var_index = base_state_index + i;
            let ptr_val = builder.get_obj_property(ggs.context, var_index as int, format!("_{}", name));
            builder.store(val, ptr_val);
            builder.set_gen_var(name, var_index as int);

            i += 1;
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

impl GenGenerator for VarAssign {
    fn register_state_vars(&mut self, gb : &mut GenBuilder) -> uint {
        let num_vars = self.vars.len();
        gb.register_n_variables(num_vars);

        num_vars
    }

    ///Generate your regular code but also break to the end of the save and restore
    ///blocks provided to save and restore state variables 
    fn gen_gen_code(&mut self, ggs : &mut GenGenState, builder : &mut Builder){
        let mut i = 0;
        let base_state_index = ggs.state_index();

        for var in self.vars.iter() {

            //save block
            //store current values in ctxt slots here...actually...may not have to save
            //if we store on assignment
            builder.goto_block(ggs.save_blk);

            //restore block
            //may not have to do shit here either if we set vars as the pointer slots
            builder.goto_block(ggs.restore_blk);
            
            //actual code
            builder.goto_block(ggs.stmts_blk);

            let val = if i < self.vals.len() {
                self.vals.get_mut(i).to_gen_value(builder, ggs.context)
            } else {
                builder.default_value()
            };

            
            let name = var.as_slice();
            //load val into state slot and then set the var to the state slot
            let var_index = base_state_index + i;
            let ptr_val = builder.get_obj_property(ggs.context, var_index as int, format!("_{}", name));
            builder.store(val, ptr_val);
            builder.set_gen_var(name, var_index as int);

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

impl GenGenerator for AssignStmt {
    fn register_state_vars(&mut self, gb : &mut GenBuilder) -> uint {
        gb.register_n_variables(0);
        0
    }

    ///Generate your regular code but also break to the end of the save and restore
    ///blocks provided to save and restore state variables 
    fn gen_gen_code(&mut self, ggs : &mut GenGenState, builder : &mut Builder){
        if self.lhs.len() != self.rhs.len() {
            fail!("left hand and right hand sides of assignment stmt arent compatible");
        }

        let mut i = 0;

        for prop_path in self.lhs.iter() {
            let var_name = prop_path.get(0).as_slice();
            let var_val = self.rhs.get_mut(i).to_gen_value(builder, ggs.context);
            builder.assign_gen_var(var_val, ggs.context, var_name);
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
            _ => fail!("Created a LoopControlStmt with an incompatable keyword {:?}", self.typ)
          }
    }
}

impl GenGenerator for LoopControlStmt {}

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

impl GenGenerator for IfElseStmt {}

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

impl GenGenerator for ForInLoop {}

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

impl GenGenerator for WhileLoop {}

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

impl GenGenerator for FunctionDef {}

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

impl GenGenerator for ReturnStmt {}

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

            let mut gen_builder = GenBuilder::new(name, &self.params, fb.int32_type(), fb.string_type());            

            //Add Space for stmts state
            let mut vars_registered = 0;
            for stmt in self.stmts.mut_iter() {
                vars_registered = stmt.register_state_vars(&mut gen_builder);
            }

            //add space for yield stmts
            let max_num_yield = match gen_builder.num_ret {
                Some(num) => num,
                None => 0
            };
            gen_builder.register_n_variables(max_num_yield);

            //fix index vec to record where return slots start
            gen_builder.state_indxs.pop();

            gen_builder.create_next_function(fb, |ggs : &mut GenGenState, fb : &mut Builder|{
                for stmt in self.stmts.mut_iter() {
                //pass in gen_ctx here?
                    stmt.gen_gen_code(ggs, fb);
                    ggs.next_stmt();
                }
            });

            gen_builder.create_init_function(fb, saved_block);
        });

    }
}

impl GenGenerator for GeneratorDef {}

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


///////////////////////////////////////
//       Generator Definition        //
///////////////////////////////////////

///A generator definition
pub struct YieldStmt {
    values : Vec<Box<Expr>>
}

impl CodeGenerator for YieldStmt {}

impl GenGenerator for YieldStmt {
    fn register_state_vars(&mut self, gb : &mut GenBuilder) -> uint {
        match gb.num_ret {
            Some(last_ret) => {
                if last_ret != self.values.len() {
                    fail!("Multiple Yield statements returning different amounts of values is not supported yet");
                }
            }, 
            None => {
                gb.num_ret = Some(self.values.len());
            }
        };

        gb.register_n_variables(0);
        0
    }

    //all yield stmts must be the same size ATM
    fn gen_gen_code(&mut self, ggs : &mut GenGenState, builder : &mut Builder){
        //save the values into their proper return slots and return 1 to signal that the generator isn't done
        //Get the index of the return slots of the gen_type
        let start_idx = ggs.state_idxs.last().unwrap();
        let mut idx_padding = 0;
        for val in self.values.mut_iter() {
            println!("{}", start_idx + idx_padding);
            let slot_ptr = builder.get_obj_property(ggs.context, (start_idx + idx_padding) as int, format!("ret_{}", idx_padding + 2));
            let val = val.to_gen_value(builder, ggs.context);

            builder.store(val, slot_ptr);

            idx_padding += 1;
        }

        let post_yield_block = builder.new_block("post_yield");
        ggs.labels.push(post_yield_block);
        let func = builder.curr_func.unwrap();
        let address = builder.block_address(func ,post_yield_block);
        
        let resume_block_slot = builder.get_obj_property(ggs.context, 0, "resume_block_slot");
        builder.store(address, resume_block_slot);

        let ret = builder.int(1);
        builder.ret(ret);

        builder.goto_block(post_yield_block);
    }

}

impl Node for YieldStmt {}

impl Stmt for YieldStmt {}

impl YieldStmt {
    pub fn new(values : Vec<Box<Expr>>) -> Box<Stmt> {
        box YieldStmt {
            values : values
        } as Box<Stmt>
    }
}