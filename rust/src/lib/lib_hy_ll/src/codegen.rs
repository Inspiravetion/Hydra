use std::comm::Receiver;

use syntax::ast::*;
use syntax::token::*;
use syntax::parser;

use builder::{Builder, GenBuilder, GenGenState}; 
use generator::Generator; 
use lltype::{Value, Block, Type};
use intrinsics;

pub fn gen_code_from_file_sync(path : &str, out_name : &str){
    let ast = parser::parse_file_sync(path);
    gen_code_from_ast_sync(&ast, out_name);
}

pub fn gen_code_from_str_sync(code : &str, out_name : &str){
    let ast = parser::parse_str_sync(code);
    gen_code_from_ast_sync(&ast, out_name);
}

pub fn gen_code_from_file_async(path : &str, out_name : &str){
    let ast = parser::parse_and_stream_file_async(path);
    gen_code_from_ast_async(ast, out_name);
}

pub fn gen_code_from_str_async(code : &str, out_name : &str){
    let ast = parser::parse_and_stream_str_async(code);
    gen_code_from_ast_async(ast, out_name);
}

//TODO: Create and initialize builder in this function
fn gen_code_from_ast_sync(ast : &Vec<Box<Stmt>>, file_name : &str) {
    let mut builder = Builder::new();

    intrinsics::gen_intrinsics(&mut builder);

    let int_type = builder.int32_type();

    builder.create_function("main", Vec::new(), int_type,|fb : &mut Builder|{
        fb.goto_first_block();
        
        for node in ast.iter() {
            println!("{}",node);
            node.gen_code(fb);
        }

        let ret = fb.int32(0);
        fb.ret(ret);
    });

    builder.print_module(file_name);
}

//TODO: Create and initialize builder in this function
//This use generics to combine this with the sync version...all u need is an Iterator<Box<Stmt>>
fn gen_code_from_ast_async(ast : Receiver<Box<Stmt>>, file_name : &str) {
    let mut builder = Builder::new();

    intrinsics::gen_intrinsics(&mut builder);

    let int_type = builder.int32_type();

    builder.create_function("main", Vec::new(), int_type,|fb : &mut Builder|{
        fb.goto_first_block();
        
        for node in ast.iter() {
            println!("{}",node);
            node.gen_code(fb);
        }

        let ret = fb.int32(0);
        fb.ret(ret);
    });

    builder.print_module(file_name);
}

pub trait StmtGenerator {
    //ExprStmt will have to switch over the espressions it gets and generate their code automatically
    fn gen_code(&self, &mut Builder);

    ///Add declared variable types to vec so that a generator state object can 
    ///be created...push the number of vars u need in so that you know where to start from on your save restore
    fn register_state_vars(&self, &mut GenBuilder) -> uint;

    ///Generate your regular code but also break to the end of the save and restore
    ///blocks provided to save and restore state variables so this can be done in 
    ///one pass
    fn gen_gen_code(&self, &mut GenGenState, &mut Builder);
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
            Float(num) => float_to_value(num, builder),
            Bool(boolean) => bool_to_value(boolean, builder),
            StringLit(ref string) => string_to_value(string.as_slice(), builder),
            ArrayLit(ref exprs) => array_to_value(exprs, builder),
            MapLit(ref keys, ref vals) => map_to_value(keys, vals, builder),
            RegexLit(ref pattern) => regex_to_value(pattern.as_slice(), builder),
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
    let hy_obj_slice = builder.get_type("HyObjSlice");
    let slice = builder.alloca(hy_obj_slice, "param_slice");

    let slice_len = builder.int64(params.len() as int);
    builder.call("hy_obj_slice_init", vec![slice, slice_len], "");

    for param in params.iter() {
        let val = param.to_value(builder);
        let cloned_val = builder.call("hy_obj_clone", vec![val], "obj_clone");
        builder.call("hy_obj_slice_push", vec![slice, cloned_val], "");
    }

    //getting the function name will change later
    let func_name = prop_path[0].as_slice();
    builder.call(func_name, vec![slice], format!("{}_tmp", func_name).as_slice())
    //do cleanup here!!!
}

fn func_call_to_gen_value(prop_path : &Vec<Ident>, params : &Vec<Box<Expr>>, builder : &mut Builder, ctxt : Value) -> Value {
    let mut param_vals = Vec::new();
    for param in params.iter() {
        param_vals.push(param.to_gen_value(builder, ctxt));
    }

    //getting the function name will change later
    let func_name = prop_path[0].as_slice();
    builder.call(func_name, param_vals, format!("{}_tmp", func_name).as_slice())
}

///////////////////////////////////////
//     Inclusive Range Generation    //
///////////////////////////////////////

fn incl_range_to_generator(start : &Box<Expr>, end : &Box<Expr>, builder : &mut Builder) -> Generator {
    let start = start.to_value(builder);
    let end = end.to_value(builder);

    let one = builder.int32(1);
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
    let val = builder.int64(value);
    builder.call("hy_new_int", vec![val], "hy_int")
}

fn int_to_gen_value(value : int, builder : &mut Builder, ctxt : Value) -> Value {
    int_to_value(value, builder)
}

///////////////////////////////////////
//            Float Generation       //
///////////////////////////////////////

fn float_to_value(value : f64, builder : &mut Builder) -> Value {
    let val = builder.f64(value);
    builder.call("hy_new_float", vec![val], "hy_float")
}

fn float_to_gen_value(value : f64, builder : &mut Builder, ctxt : Value) -> Value {
    float_to_value(value, builder)
}

///////////////////////////////////////
//            Bool Generation        //
///////////////////////////////////////

fn bool_to_value(value : bool, builder : &mut Builder) -> Value {
    let val = builder.bool(value);
    builder.call("hy_new_bool", vec![val], "hy_bool")
}

fn bool_to_gen_value(value : bool, builder : &mut Builder, ctxt : Value) -> Value {
    bool_to_value(value, builder)
}

///////////////////////////////////////
//          String Generation        //
///////////////////////////////////////

fn string_to_value(value : &str, builder : &mut Builder) -> Value {
    let val = builder.string(value, format!("{}_literal", value).as_slice());
    builder.call("hy_new_string", vec![val], "hy_string")
}

fn string_to_gen_value(value : String, builder : &mut Builder, ctxt : Value) -> Value {
    string_to_value(value.as_slice(), builder)
}

///////////////////////////////////////
//           Array Generation        //
///////////////////////////////////////

fn array_to_value(exprs : &Exprs, builder : &mut Builder) -> Value {
    //push expressions when parsin this and function calls are supported
    let array = builder.call("hy_new_array", vec![], "hy_array");

    for expr in exprs.iter() {
        let val = expr.to_value(builder);
        builder.call("hy_array_push", vec![array, val], "");
    }

    array
}

fn array_to_gen_value(values : &Exprs, builder : &mut Builder, ctxt : Value) -> Value {
    array_to_value(values, builder)
}

///////////////////////////////////////
//             Map Generation        //
///////////////////////////////////////

fn map_to_value(keys : &Exprs, values : &Exprs, builder : &mut Builder) -> Value {
    let map = builder.call("hy_new_map", vec![], "hy_map");

    let mut key_val_pairs = keys.iter().zip(values.iter());
    for (key, val) in key_val_pairs {
        let key = key.to_value(builder);
        let val = val.to_value(builder);
        builder.call("hy_map_insert", vec![map, key, val], "insert_result");
    }

    map
}

fn map_to_gen_value(keys : &Exprs, values : &Exprs, builder : &mut Builder, ctxt : Value) -> Value {
    map_to_value(keys, values, builder)
}

///////////////////////////////////////
//           Regex Generation        //
///////////////////////////////////////

fn regex_to_value(pattern : &str, builder : &mut Builder) -> Value {
    let pattern = string_to_value(pattern, builder);
    builder.call("hy_new_regex", vec![pattern], "hy_regex")
}

fn regex_to_gen_value(pattern : &str, builder : &mut Builder) -> Value {
    regex_to_value(pattern, builder)
}

///////////////////////////////////////
//        Identifier Generation      //
///////////////////////////////////////

fn ident_expr_to_value(value : &Ident, builder : &mut Builder) -> Value {
    let name = value.as_slice();

    let val = match builder.get_var(name) {
        Some(v) => v,
        None => fail!("No {} in current scope", value)
    };

    builder.load(val, name)
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

fn bin_expr_to_value(lhs : &Box<Expr>, op : &String, rhs : &Box<Expr>, builder : &mut Builder) -> Value {
    let left_val  = lhs.to_value(builder);
    let right_val = rhs.to_value(builder);

    //TODO: verify that the operator being used is visible in the current scope
    let args = vec!(left_val, right_val);
    builder.call(
        op.as_slice(), 
        args, 
        format!("{}_tmp", *op).as_slice()
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
        op.as_slice(), 
        args, 
        format!("{}_tmp", op).as_slice()
    )
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                           Statement Generation                             //                
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

impl StmtGenerator for Stmt {
    //ExprStmt will have to switch over the espressions it gets and generate their code automatically
    fn gen_code(&self, builder : &mut Builder) {
        match self.node {
            ExprStmt(ref expr) => expr_stmt_gen_code(expr, builder),
            VarDecl(ref vars)  => var_decl_gen_code(vars, builder),
            VarAssign(ref vars, ref vals) => var_assign_gen_code(vars, vals, builder),
            AssignStmt(ref lhs, ref rhs) => assign_stmt_gen_code(lhs, rhs, builder),
            LoopControlStmt(typ) => loop_ctrl_stmt_gen_code(typ, builder),
            IfElseStmt(ref branches) => if_else_stmt_gen_code(branches, builder),
            ForInLoop(ref vars, ref cond, ref stmts) => for_in_gen_code(vars, cond, stmts, builder),
            WhileLoop(ref cond, ref stmts) => while_loop_gen_code(cond, stmts, builder),
            FunctionDef(ref name, ref params, ref stmts) => func_def_gen_code(name, params, stmts, builder),
            ReturnStmt(ref vals) => return_stmt_gen_code(vals, builder),
            GeneratorDef(ref name, ref params, ref stmts) => gen_def_gen_code(name, params, stmts, builder),
            _ => fail!("Called gen_code on a non code generating node")
        };
    }

    ///Add declared variable types to vec so that a generator state object can 
    ///be created...push the number of vars u need in so that you know where to start from on your save restore
    fn register_state_vars(&self, gbuilder : &mut GenBuilder) -> uint {
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
    fn gen_gen_code(&self, gstate : &mut GenGenState, builder : &mut Builder){
        match self.node {
            VarDecl(ref vars)  => var_decl_gen_gen_code(vars, gstate, builder),
            VarAssign(ref vars, ref vals) => var_assign_gen_gen_code(vars, vals, gstate, builder),
            AssignStmt(ref lhs, ref rhs) => assign_stmt_gen_gen_code(lhs, rhs, gstate, builder),
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
        let val = builder.call("hy_new_undefined", vec![], format!("_{}", name).as_slice());
        let boxed_val = builder.new_var(val, name);

        builder.set_var(name, boxed_val);
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
        let ptr_val = builder.get_obj_property(ggs.context, var_index as int, format!("_{}", name).as_slice());
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

fn var_assign_gen_code(vars : &Vec<Ident>, vals : &Vec<Box<Expr>>, builder : &mut Builder){
    let mut i = 0;

    for var in vars.iter() {
        let name = var.as_slice();

        let val = if i < vals.len() {
            vals[i].to_value(builder)
        } else {
            builder.call("hy_new_undefined", vec![], format!("_{}", name).as_slice())
        };

        let boxed_val = builder.new_var(val, name);
        builder.set_var(name, boxed_val);

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
fn var_assign_gen_gen_code(vars : &Vec<Ident>, vals : &Vec<Box<Expr>>, ggs : &mut GenGenState, builder : &mut Builder){
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
            vals[i].to_gen_value(builder, ggs.context)
        } else {
            builder.default_value()
        };

        
        let name = var.as_slice();
        //load val into state slot and then set the var to the state slot
        let var_index = base_state_index + i;
        let ptr_val = builder.get_obj_property(ggs.context, var_index as int, format!("_{}", name).as_slice());
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

fn assign_stmt_gen_code(lhs : &Vec<Vec<Ident>>, rhs : &Vec<Box<Expr>>, builder : &mut Builder){
    if lhs.len() != rhs.len() {
        fail!("left hand and right hand sides of assignment stmt arent compatible");
    }

    let mut i = 0;

    for prop_path in lhs.iter() {
        let var_name = prop_path[0].as_slice();
        let var_val = rhs[i].to_value(builder);
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
fn assign_stmt_gen_gen_code(lhs : &Vec<Vec<Ident>>, rhs : &Vec<Box<Expr>>, ggs : &mut GenGenState, builder : &mut Builder){
    if lhs.len() != rhs.len() {
        fail!("left hand and right hand sides of assignment stmt arent compatible");
    }

    let mut i = 0;

    for prop_path in lhs.iter() {
        let var_name = prop_path[0].as_slice();
        let var_val = rhs[i].to_gen_value(builder, ggs.context);
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

fn if_else_stmt_gen_code(branches : &Vec<Box<IfElseBranch>>, builder : &mut Builder){
    let mut next_cond = builder.new_block("if_cond");

    builder.break_to(next_cond);

    for branch in branches.iter() {
        match branch.cond {
          Some(ref expr) => {
            builder.goto_block(next_cond);

            let cond_obj = expr.to_value(builder);
            let cond = builder.call("hy_obj_to_truthy_val", vec![cond_obj], "cond");
            let false_value = builder.int32(0);
            let cmp = builder.cmp_eq(cond, false_value, "if_cmp");

            next_cond = builder.new_block("if_else_cond_or_exit");
            let stmts_block = builder.new_block("if_else_stmts");
            builder.conditional_break(cmp, next_cond, stmts_block);

            builder.goto_block(stmts_block);
            builder.open_scope();

            for stmt in branch.stmts.iter() {
                stmt.gen_code(builder);
            }

            builder.close_scope();
            builder.break_to(next_cond);
          },
          None => {
            builder.goto_block(next_cond);
            builder.open_scope();

            for stmt in branch.stmts.iter() {
                stmt.gen_code(builder);
            }

            builder.close_scope();

            next_cond = builder.new_block("else_exit");
            builder.break_to(next_cond);
          }  
        };
    }

    builder.goto_block(next_cond);
}

///////////////////////////////////////
//       For In Loop Generation      //
///////////////////////////////////////

fn for_in_gen_code(vars : &Vec<Ident>, gen : &Box<Expr>, stmts : &Vec<Box<Stmt>>, builder : &mut Builder){
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
    // let init_fn = gen.init_func.clone();
    let init_args = gen.init_args.clone();
    // builder.call(init_fn, init_args, "");
    builder.call(gen.init_func.as_slice(), init_args, "");

    //create variables 
    for var in vars.iter(){
        let var_name = var.as_slice();
        let undefined = builder.call("hy_new_undefined", vec![], format!("_{}", var_name).as_slice());
        builder.set_var(var_name, undefined);
    }

    builder.break_to(loop_check);

    //check to see if generator is done or not
    builder.goto_block(loop_check);
    let done = builder.call(gen.next_func.as_slice(), vec!(gen.gen), "done");
    let done_value = builder.int32(0);
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

    for stmt in stmts.iter(){
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

fn while_loop_gen_code(cond  : &Box<Expr>, stmts : &Vec<Box<Stmt>>, builder : &mut Builder){
    builder.open_scope();

    let loop_check = builder.new_block("while_loop_check");
    let loop_stmts = builder.new_block("while_loop_stmts");
    let loop_exit  = builder.new_block("while_loop_exit");

    builder.open_loop_scope(loop_check, loop_exit);

    builder.break_to(loop_check);

    builder.goto_block(loop_check);
    let cond_obj = cond.to_value(builder);
    let cond = builder.call("hy_obj_to_truthy_val", vec![cond_obj], "cond");
    let fals = builder.int32(0);
    let cmp = builder.cmp_eq(fals, cond, "while_cmp");
    builder.conditional_break(cmp, loop_exit, loop_stmts);

    builder.goto_block(loop_stmts);
    for stmt in stmts.iter(){
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

fn func_def_gen_code(name : &Ident, params : &Vec<Ident>, stmts : &Vec<Box<Stmt>>, builder : &mut Builder){
    let saved_block = builder.new_block("function_def_bridge");
    builder.break_to(saved_block);

    let hy_obj_slice_ref_type = builder.get_type("HyObjSlice*");
    let hy_obj_ref = builder.get_type("HyObj*");

    let name = name.as_slice();
    let param_types = vec![hy_obj_slice_ref_type];

    let func = builder.create_function(name, param_types, hy_obj_ref,|fb : &mut Builder|{
        fb.with_fresh_scope(|fb : &mut Builder|{
            fb.goto_first_block();

            let param_setup = fb.new_block(format!("{}_param_setup", name).as_slice());
            fb.goto_block(param_setup);
            
            //bind params to local vars or init them to undefined
            let param_slice = fb.get_param(0);
            let mut i = 0;
            for param in params.iter() {
                let name = param.as_slice();

                let param_idx = fb.int64(i);
                let param_val = fb.call("hy_obj_slice_get", vec![param_slice, param_idx], format!("param_{}", i).as_slice());

                let boxed_val = fb.new_var(param_val, name);
                fb.set_var(name, boxed_val);

                i += 1;
            }

            let func_body = fb.new_block(format!("{}_function_body", name).as_slice());
            fb.break_to(func_body);
            fb.goto_block(func_body);

            for stmt in stmts.iter() {
                stmt.gen_code(fb);
            }

            //clear out the HyObjSlice to signify no return values
            let undefined = fb.call("hy_new_undefined", vec![], "undefined");
            fb.ret(undefined);

            //need to return an empty hyobjslice here to signal a path that doesnt return anything
            fb.goto_block(saved_block);
        });
    });

    let proc_type = builder.get_type("HyFunc");
    let i8_ref = builder.string_type();
    let params = vec![i8_ref, hy_obj_slice_ref_type];
    let null = builder.null(i8_ref);

    let hy_proc = builder.create_function(format!("_{}_", name).as_slice(), params, hy_obj_ref, |fb : &mut Builder|{
        fb.goto_first_block();
        let params = fb.get_param(1);
        let result = fb.call(name, vec![params], "tmp_val");
        fb.ret(result);
        fb.goto_block(saved_block);
    });

    let slot = builder.alloca(proc_type, "proc_slot");
    let proc_fields = vec![hy_proc, null];
    let prok = builder.new_struct(proc_type, proc_fields);
    builder.store(prok, slot);
    let name_ptr = builder.string(name, format!("{}_func_name", name).as_slice());
    let hy_func = builder.call("hy_new_func", vec![slot, name_ptr], "hy_func");

    let boxed_val = builder.new_var(hy_func, "hy_func");
    builder.set_var(name, boxed_val);
    //make proc -> make HyFunction -> store in top scope
}

///////////////////////////////////////
//       Return Stmt Generation      //
///////////////////////////////////////

fn return_stmt_gen_code(ret_exprs : &Exprs, builder : &mut Builder){
    //if there are more than one values pack them into a tuple
    let len = ret_exprs.len();

    if len == 0 {
        //return undefined
        let undefined = builder.call("hy_new_undefined", vec![], "undefined");
        builder.ret(undefined);

    } else if len == 1 {
        //return the first expression
        let val = ret_exprs.get(0).to_value(builder);
        builder.ret(val);

    } else {
        //return a tuple of the expressions
        let tuple_size = builder.int64(len as int);
        let tuple = builder.call("hy_new_tuple", vec![tuple_size], "ret_tuple");

        for expr in ret_exprs.iter() {
            let val = expr.to_value(builder);
            builder.call("hy_tuple_insert", vec![tuple, val], "");
        }

        builder.ret(tuple);  
    };
}

///////////////////////////////////////
//       Generator Definition        //
///////////////////////////////////////

fn gen_def_gen_code(name : &Ident, params : &Vec<Ident>, stmts : &Vec<Box<Stmt>>, builder : &mut Builder){
    let saved_block = builder.new_block("gen_def_bridge");
    builder.break_to(saved_block);

    builder.with_fresh_scope(|fb : &mut Builder|{
        
        let name = name.as_slice();

        let mut gen_builder = GenBuilder::new(name, params, fb.int32_type(), fb.string_type());            

        //Add Space for stmts state
        let mut vars_registered = 0;
        for stmt in stmts.iter() {
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
            for stmt in stmts.iter() {
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
        let slot_ptr = builder.get_obj_property(ggs.context, (start_idx + idx_padding) as int, format!("ret_{}", idx_padding + 2).as_slice());
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

    let ret = builder.int32(1);
    builder.ret(ret);

    builder.goto_block(post_yield_block);
}