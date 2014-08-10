use syntax::ast::*;
use syntax::token::*;
use syntax::parser;

use builder::{Builder, GenBuilder, GenGenState}; 
use generator::Generator; 
use lltype::{Value, Block, Type};

pub fn gen_code_from_file_sync(path : &str, out_name : &str, builder : &mut Builder){
    let mut ast = parser::parse_file_sync(path);
    gen_code_from_ast(&mut ast, out_name, builder);
}

pub fn gen_code_from_str_sync(code : &str, out_name : &str, builder : &mut Builder){
    let mut ast = parser::parse_str_sync(code);
    gen_code_from_ast(&mut ast, out_name, builder);
}

pub fn gen_code_from_file_async(path : &str, out_name : &str, builder : &mut Builder){
    let mut ast = parser::parse_file_async(path);
    gen_code_from_ast(&mut ast, out_name, builder);
}

pub fn gen_code_from_str_async(code : &str, out_name : &str, builder : &mut Builder){
    let mut ast = parser::parse_str_async(code);
    gen_code_from_ast(&mut ast, out_name, builder);
}

//TODO: Create and initialize builder in this function
fn gen_code_from_ast(ast : &mut Vec<Box<Stmt>>, file_name : &str, builder : &mut Builder) {
    let int_type = builder.int32_type();

    builder.create_function("main", Vec::new(), int_type,|fb : &mut Builder|{
        fb.goto_first_block();
        
        for node in ast.mut_iter() {
            node.gen_code(fb);
            println!("{}",node);
        }

        let ret = fb.int(0);
        fb.ret(ret);
    });

    builder.print_module(file_name);
}

pub trait StmtGenerator {
    //ExprStmt will have to switch over the espressions it gets and generate their code automatically
    fn gen_code(&mut self, &mut Builder);

    ///Add declared variable types to vec so that a generator state object can 
    ///be created...push the number of vars u need in so that you know where to start from on your save restore
    fn register_state_vars(&mut self, &mut GenBuilder) -> uint;

    ///Generate your regular code but also break to the end of the save and restore
    ///blocks provided to save and restore state variables so this can be done in 
    ///one pass
    fn gen_gen_code(&mut self, &mut GenGenState, &mut Builder);
}

pub trait ExprGenerator {
    ///Return a Generator struct with the params for its llvm init function already
    ///created
    fn to_generator(&self, &mut Builder) -> Generator;

    fn to_value(&self, &mut Builder) -> Value;

    fn to_gen_value(&self, &mut Builder, Value) -> Value;
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                          Expression Generation                             //                
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

impl ExprGenerator for Expr {
    fn to_generator(&self, builder : &mut Builder) -> Generator {
        match self.node {
            InclusiveRange(ref start, ref end) => incl_range_to_generator(start, end, builder),
            ExclusiveRange(ref start, ref end) => excl_range_to_generator(start, end, builder),
            _ => fail!("to_generator called on non generator type")
        }
    }

    //all of these should have a to_gen_value version as well
    fn to_value(&self, builder : &mut Builder) -> Value {
        match self.node {
            FuncCall(ref prop_path, ref params) => func_call_to_value(prop_path, params, builder),
            Int(num) => int_to_value(num, builder),
            IdentExpr(ref ident) => ident_expr_to_value(ident, builder),
            BinaryExpr(ref lhs, ref op, ref rhs) => bin_expr_to_value(lhs, op, rhs, builder),
            PrefixUnaryExpr(ref op, ref expr) => prfx_unary_expr_to_value(op, expr, builder),
            _ => fail!("to_value called on type that cannot be resolved to a value")       
        }
    }

    fn to_gen_value(&self, builder : &mut Builder, ctxt : Value) -> Value {
        match self.node {
            FuncCall(ref prop_path, ref params) => func_call_to_gen_value(prop_path, params, builder, ctxt),
            Int(num) => int_to_gen_value(num, builder, ctxt),
            IdentExpr(ref ident) => ident_expr_to_gen_value(ident, builder, ctxt),
            _ => fail!("to_gen_value called on type that cannot be resolved to a gen value")        
        }
    }
}

///////////////////////////////////////
//         FuncCall Generation       //
///////////////////////////////////////

//for exprstmt
fn func_call_gen_code(prop_path : &Vec<Ident>, params : &Vec<Box<Expr>>, builder : &mut Builder){
    func_call_to_value(prop_path, params, builder);
}

fn func_call_to_value(prop_path : &Vec<Ident>, params : &Vec<Box<Expr>>, builder : &mut Builder) -> Value {
    let mut param_vals = Vec::new();
    for param in params.iter() {
        param_vals.push(param.to_value(builder));
    }

    //getting the function name will change later
    let func_name = prop_path.get(0).as_slice();
    builder.call(func_name, param_vals, format!("{}_tmp", func_name))
}

fn func_call_to_gen_value(prop_path : &Vec<Ident>, params : &Vec<Box<Expr>>, builder : &mut Builder, ctxt : Value) -> Value {
    let mut param_vals = Vec::new();
    for param in params.iter() {
        param_vals.push(param.to_gen_value(builder, ctxt));
    }

    //getting the function name will change later
    let func_name = prop_path.get(0).as_slice();
    builder.call(func_name, param_vals, format!("{}_tmp", func_name))
}

///////////////////////////////////////
//     Inclusive Range Generation    //
///////////////////////////////////////

fn incl_range_to_generator(start : &Box<Expr>, end : &Box<Expr>, builder : &mut Builder) -> Generator {
    let start = start.to_value(builder);
    let end = end.to_value(builder);

    let one = builder.int(1);
    let end_plus_one = builder.add_op(end, one, "add_tmp");
    builder.range_gen(start, end_plus_one)
}

///////////////////////////////////////
//     Exclusive Range Generation    //
///////////////////////////////////////

fn excl_range_to_generator(start : &Box<Expr>, end : &Box<Expr>, builder : &mut Builder) -> Generator {
    let start = start.to_value(builder);
    let end = end.to_value(builder);

    builder.range_gen(start, end)
}

///////////////////////////////////////
//            Int Generation         //
///////////////////////////////////////

fn int_to_value(value : int, builder : &mut Builder) -> Value {
    builder.int(value)
}

fn int_to_gen_value(value : int, builder : &mut Builder, ctxt : Value) -> Value {
    int_to_value(value, builder)
}

///////////////////////////////////////
//        Identifier Generation      //
///////////////////////////////////////

fn ident_expr_to_value(value : &Ident, builder : &mut Builder) -> Value {
    let name = value.as_slice();

    match builder.get_var(name) {
        Some(val) => builder.load(val, name),
        None => fail!("No {} in current scope", value)
    }
}

fn ident_expr_to_gen_value(value : &Ident, builder : &mut Builder, ctxt : Value) -> Value {
    let name = value.as_slice();

    match builder.get_gen_var(name, ctxt) {
        Some(val) => builder.load(val, name),
        None => fail!("No {} in current scope", value)
    }
}

///////////////////////////////////////
//    Binary Expression Generation   //
///////////////////////////////////////

fn bin_expr_to_value(lhs : &Box<Expr>, op : &Token, rhs : &Box<Expr>, builder : &mut Builder) -> Value {
    let left_val  = lhs.to_value(builder);
    let right_val = rhs.to_value(builder);

    //TODO: verify that the operator being used is visible in the current scope
    let args = vec!(left_val, right_val);
    builder.call(
        op.text, 
        args, 
        format!("{}_tmp", op.text)
    )
}

///////////////////////////////////////
// Unary Prfx Expression Generation  //
///////////////////////////////////////

fn prfx_unary_expr_to_value(op : &Ident, expr : &Box<Expr>, builder : &mut Builder) -> Value {
    let expr_val = expr.to_value(builder);

    //TODO: verify that the operator being used is visible in the current scope
    let args = vec!(expr_val);
    builder.call(
        *op, 
        args, 
        format!("{}_tmp", op)
    )
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                           Statement Generation                             //                
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

impl StmtGenerator for Stmt {
    //ExprStmt will have to switch over the espressions it gets and generate their code automatically
    fn gen_code(&mut self, builder : &mut Builder) {
        match self.node {
            ExprStmt(ref expr) => expr_stmt_gen_code(expr, builder),
            VarDecl(ref vars)  => var_decl_gen_code(vars, builder),
            VarAssign(ref vars, ref mut vals) => var_assign_gen_code(vars, vals, builder),
            AssignStmt(ref lhs, ref mut rhs) => assign_stmt_gen_code(lhs, rhs, builder),
            LoopControlStmt(typ) => loop_ctrl_stmt_gen_code(typ, builder),
            IfElseStmt(ref mut branches) => if_else_stmt_gen_code(branches, builder),
            ForInLoop(ref vars, ref cond, ref mut stmts) => for_in_gen_code(vars, cond, stmts, builder),
            WhileLoop(ref cond, ref mut stmts) => while_loop_gen_code(cond, stmts, builder),
            FunctionDef(ref name, ref params, ref mut stmts) => func_def_gen_code(name, params, stmts, builder),
            ReturnStmt(ref val) => return_stmt_gen_code(val, builder),
            GeneratorDef(ref name, ref params, ref mut stmts) => gen_def_gen_code(name, params, stmts, builder),
            _ => fail!("Called gen_code on a non code generating node")
        };
    }

    ///Add declared variable types to vec so that a generator state object can 
    ///be created...push the number of vars u need in so that you know where to start from on your save restore
    fn register_state_vars(&mut self, gbuilder : &mut GenBuilder) -> uint {
        match self.node {
            VarDecl(ref vars)  => var_decl_reg_state_vars(vars, gbuilder),
            VarAssign(ref vars, ref vals) => var_assign_reg_state_vars(vars, vals, gbuilder),
            AssignStmt(..) => assign_stmt_reg_state_vars(gbuilder),
            YieldStmt(ref vals) => yield_stmt_reg_state_vars(vals, gbuilder),
            _ => fail!("this type does not have an implementation for register_state_vars")
        }
    }

    ///Generate your regular code but also break to the end of the save and restore
    ///blocks provided to save and restore state variables so this can be done in 
    ///one pass
    fn gen_gen_code(&mut self, gstate : &mut GenGenState, builder : &mut Builder){
        match self.node {
            VarDecl(ref vars)  => var_decl_gen_gen_code(vars, gstate, builder),
            VarAssign(ref vars, ref mut vals) => var_assign_gen_gen_code(vars, vals, gstate, builder),
            AssignStmt(ref lhs, ref mut rhs) => assign_stmt_gen_gen_code(lhs, rhs, gstate, builder),
            YieldStmt(ref vals) => yield_stmt_gen_gen_code(vals, gstate, builder),
            _ => fail!("This type cannot build code for a generator")
        };
    }
}

///////////////////////////////////////
//  Expression Statement Generation  //
///////////////////////////////////////

fn expr_stmt_gen_code(expr : &Box<Expr>, builder : &mut Builder){
    match expr.node {
        FuncCall(ref prop_path, ref params) => func_call_gen_code(prop_path, params, builder),
        _ => fail!("Tried to generate code for an ExprStmt whos expression cannot be a statement\n\n{}\n\n", expr)
    };
}

///////////////////////////////////////
//    Var Declaration Generation     //
//ie.                                //
//  var a                            //
//  var a, b, c                      //
///////////////////////////////////////

fn var_decl_gen_code(vars : &Vec<Ident>, builder : &mut Builder){
    for var in vars.iter() {
        let name = var.as_slice();
        let val = builder.new_default_var(name);
        builder.set_var(name, val);
    }
}

fn var_decl_reg_state_vars(vars : &Vec<Ident>, gb : &mut GenBuilder) -> uint {
    let num_vars = vars.len();
    gb.register_n_variables(num_vars);

    num_vars
}

///Generate your regular code but also break to the end of the save and restore
///blocks provided to save and restore state variables 
fn var_decl_gen_gen_code(vars : &Vec<Ident>, ggs : &mut GenGenState, builder : &mut Builder){
    let mut i = 0;
    let base_state_index = ggs.state_index();

    for var in vars.iter() {
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

///////////////////////////////////////
//     Var Assignment Generation     //
//ie.                                //
//  var a = 1                        //
//  var a, b, c = 1, 2, 3            //
//  var a, b, c = 1, 2               //
///////////////////////////////////////

fn var_assign_gen_code(vars : &Vec<Ident>, vals : &mut Vec<Box<Expr>>, builder : &mut Builder){
    let mut i = 0;

    for var in vars.iter() {
        let val = if i < vals.len() {
            vals.get_mut(i).to_value(builder)
        } else {
            builder.default_value()
        };

        
        let name = var.as_slice();
        let var_val = builder.new_var(val, name);
        builder.set_var(name, var_val);

        i += 1;
    }
}

fn var_assign_reg_state_vars(vars : &Vec<Ident>, vals : &Vec<Box<Expr>>, gb : &mut GenBuilder) -> uint {
    let num_vars = vars.len();
    gb.register_n_variables(num_vars);

    num_vars
}

///Generate your regular code but also break to the end of the save and restore
///blocks provided to save and restore state variables 
fn var_assign_gen_gen_code(vars : &Vec<Ident>, vals : &mut Vec<Box<Expr>>, ggs : &mut GenGenState, builder : &mut Builder){
    let mut i = 0;
    let base_state_index = ggs.state_index();

    for var in vars.iter() {

        //save block
        //store current values in ctxt slots here...actually...may not have to save
        //if we store on assignment
        builder.goto_block(ggs.save_blk);

        //restore block
        //may not have to do shit here either if we set vars as the pointer slots
        builder.goto_block(ggs.restore_blk);
        
        //actual code
        builder.goto_block(ggs.stmts_blk);

        let val = if i < vals.len() {
            vals.get_mut(i).to_gen_value(builder, ggs.context)
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

///////////////////////////////////////
//        Assign Stmt Generation     //
//ie.                                //
//  a = 1                            //
//  a, b, c = 1, 2, 3                //
///////////////////////////////////////

fn assign_stmt_gen_code(lhs : &Vec<Vec<Ident>>, rhs : &mut Vec<Box<Expr>>, builder : &mut Builder){
    if lhs.len() != rhs.len() {
        fail!("left hand and right hand sides of assignment stmt arent compatible");
    }

    let mut i = 0;

    for prop_path in lhs.iter() {
        let var_name = prop_path.get(0).as_slice();
        let var_val = rhs.get_mut(i).to_value(builder);
        builder.assign_var(var_val, var_name);
        i += 1;
    }        
}

fn assign_stmt_reg_state_vars(gb : &mut GenBuilder) -> uint {
    gb.register_n_variables(0);
    0
}

///Generate your regular code but also break to the end of the save and restore
///blocks provided to save and restore state variables 
fn assign_stmt_gen_gen_code(lhs : &Vec<Vec<Ident>>, rhs : &mut Vec<Box<Expr>>, ggs : &mut GenGenState, builder : &mut Builder){
    if lhs.len() != rhs.len() {
        fail!("left hand and right hand sides of assignment stmt arent compatible");
    }

    let mut i = 0;

    for prop_path in lhs.iter() {
        let var_name = prop_path.get(0).as_slice();
        let var_val = rhs.get_mut(i).to_gen_value(builder, ggs.context);
        builder.assign_gen_var(var_val, ggs.context, var_name);
        i += 1;
    }        
}

///////////////////////////////////////
//         Loop Control Stmt         //
//ie.                                //
//  break                            //
//  continue                         //
///////////////////////////////////////

fn loop_ctrl_stmt_gen_code(typ : TokenType, builder : &mut Builder){
    match typ {
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
        _ => fail!("Created a LoopControlStmt with an incompatable keyword {:?}", typ)
    }
}

///////////////////////////////////////
//            If Else Stmt           //
//ie.                                //
///////////////////////////////////////

fn if_else_stmt_gen_code(branches : &mut Vec<IfElseBranch>, builder : &mut Builder){
    let mut next_cond = builder.new_block("if_cond");
    let if_else_exit = builder.new_block("if_else_exit");

    builder.break_to(next_cond);

    for branch in branches.mut_iter() {
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

///////////////////////////////////////
//       For In Loop Generation      //
///////////////////////////////////////

fn for_in_gen_code(vars : &Vec<Ident>, gen : &Box<Expr>, stmts : &mut Vec<Box<Stmt>>, builder : &mut Builder){
    builder.open_scope();

    let gen = gen.to_generator(builder);

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
    for var in vars.iter(){
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

    if vars.len() > gen.ret_count {
        fail!("Trying to bind to more variables than the generator returns");
    }

    let start_pos = gen.var_count + 1;
    let end_pos   = gen.var_count + gen.ret_count + 1;
    let mut vars  = vars.iter();

    //bind variables from generator call
    for i in range(start_pos, end_pos) {
        let var_name = vars.next().unwrap().as_slice();

        //get opaque return value from generator
        let ret_val  = builder.get_obj_property(gen.gen, i as int, "ctx_ret");
        let var_val  = builder.load(ret_val, var_name);

        //change the bound variable
        builder.assign_var(var_val, var_name);
    }

    for stmt in stmts.mut_iter(){
        stmt.gen_code(builder);
    }
    builder.break_to(loop_check);

    builder.close_loop_scope();
    builder.close_scope();

    //make sure following stmts start from the loop exit block
    builder.goto_block(loop_exit);

}

///////////////////////////////////////
//        While Loop Generation      //
///////////////////////////////////////

fn while_loop_gen_code(cond  : &Box<Expr>, stmts : &mut Vec<Box<Stmt>>, builder : &mut Builder){
    builder.open_scope();

    let loop_check = builder.new_block("while_loop_check");
    let loop_stmts = builder.new_block("while_loop_stmts");
    let loop_exit  = builder.new_block("while_loop_exit");

    builder.open_loop_scope(loop_check, loop_exit);

    builder.break_to(loop_check);

    builder.goto_block(loop_check);
    let cond = cond.to_value(builder);
    let fals = builder.int(0);
    let cmp = builder.cmp_eq(fals, cond, "while_cmp");
    builder.conditional_break(cmp, loop_exit, loop_stmts);

    builder.goto_block(loop_stmts);
    for stmt in stmts.mut_iter(){
        stmt.gen_code(builder);
    }
    builder.break_to(loop_check);

    builder.goto_block(loop_exit);

    builder.close_loop_scope();
    builder.close_scope();
}


///////////////////////////////////////
//   Function Definition Generation  //
///////////////////////////////////////

fn func_def_gen_code(name : &Ident, params : &Vec<Ident>, stmts : &mut Vec<Box<Stmt>>, builder : &mut Builder){
    let saved_block = builder.new_block("function_def_bridge");
    builder.break_to(saved_block);

    builder.with_fresh_scope(|fb : &mut Builder|{
        //This will end up being some general HyObj type or sumthn
        let int_type = fb.int32_type();

        let name = name.as_slice();
        let param_types = Vec::from_elem(params.len(), int_type);

        fb.create_function(name, param_types, int_type,|fb : &mut Builder|{
            fb.goto_first_block();
            
            //bind params to local vars
            let mut i = 0;
            for param in params.iter() {
                //right now this is pass by value...not by ref
                let name = param.as_slice();
                let param_val = fb.get_param(i);
                let var_val = fb.new_var(param_val, name);
                fb.set_var(name, var_val);

                i += 1;
            }

            for stmt in stmts.mut_iter() {
                stmt.gen_code(fb);
            }

            fb.goto_block(saved_block);
        });
    });
}

///////////////////////////////////////
//       Return Stmt Generation      //
///////////////////////////////////////

fn return_stmt_gen_code(ret_expr : &Box<Expr>, builder : &mut Builder){
    let val = ret_expr.to_value(builder);
    builder.ret(val);
}

///////////////////////////////////////
//       Generator Definition        //
///////////////////////////////////////

fn gen_def_gen_code(name : &Ident, params : &Vec<Ident>, stmts : &mut Vec<Box<Stmt>>, builder : &mut Builder){
    let saved_block = builder.new_block("gen_def_bridge");
    builder.break_to(saved_block);

    builder.with_fresh_scope(|fb : &mut Builder|{
        
        let name = name.as_slice();

        let mut gen_builder = GenBuilder::new(name, params, fb.int32_type(), fb.string_type());            

        //Add Space for stmts state
        let mut vars_registered = 0;
        for stmt in stmts.mut_iter() {
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
            for stmt in stmts.mut_iter() {
            //pass in gen_ctx here?
                stmt.gen_gen_code(ggs, fb);
                ggs.next_stmt();
            }
        });

        gen_builder.create_init_function(fb, saved_block);
    });
}

///////////////////////////////////////
//          Yield Definition         //
///////////////////////////////////////

fn yield_stmt_reg_state_vars(values : &Vec<Box<Expr>>, gb : &mut GenBuilder) -> uint {
    match gb.num_ret {
        Some(last_ret) => {
            if last_ret != values.len() {
                fail!("Multiple Yield statements returning different amounts of values is not supported yet");
            }
        }, 
        None => {
            gb.num_ret = Some(values.len());
        }
    };

    gb.register_n_variables(0);
    0
}

//all yield stmts must be the same size ATM
fn yield_stmt_gen_gen_code(values : &Vec<Box<Expr>>, ggs : &mut GenGenState, builder : &mut Builder){
    //save the values into their proper return slots and return 1 to signal that the generator isn't done
    //Get the index of the return slots of the gen_type
    let start_idx = ggs.state_idxs.last().unwrap();
    let mut idx_padding = 0;
    for val in values.iter() {
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