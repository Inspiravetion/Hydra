use syntax::ast::*;

use builder::{Builder, GenBuilder, GenGenState}; 
use generator::Generator; 
use lltype::{Value, Block, Type};


pub trait CodeGenerator {
    fn gen_code(&mut self, &mut Builder) {
        fail!("Called gen_code on a non code generating node");
    }
}

//Only for Stmts
pub trait GenGenerator : CodeGenerator {
    ///Add declared variable types to vec so that a generator state object can 
    ///be created...push the number of vars u need in so that you know where to start from on your save restore
    fn register_state_vars(&mut self, &mut GenBuilder) -> uint {
        fail!("this type does not have an implementation for register_state_vars");
    }

    ///Generate your regular code but also break to the end of the save and restore
    ///blocks provided to save and restore state variables so this can be done in 
    ///one pass
    fn gen_gen_code(&mut self, &mut GenGenState, &mut Builder){
        fail!("This type cannot build code for a generator");
    }

}

//Only for Exprs
pub trait ExprGenerator : CodeGenerator {
    ///Return a Generator struct with the params for its llvm init function already
    ///created
    fn to_generator(&self, &mut Builder) -> Generator {
        fail!("to_generator cd on non generator type");
    }

    fn to_value(&self, &mut Builder) -> Value {
        fail!("to_value called on type that cannot be resolved to a value");        
    }

    fn to_gen_value(&self, &mut Builder, Value) -> Value {
        fail!("to_gen_value called on type that cannot be resolved to a gen value");        
    }
}

pub trait StmtGenerator : GenGenerator {}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                          Expression Generation                             //                
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

impl CodeGenerator for Expr {
    fn gen_code(&self, builder : &mut Builder){
        match self.node {
            FuncCall(ref prop_path, ref params) => func_call_gen_code(prop_path, params, builder),
            _ => fail!("Called gen_code on a non code generating node")       
        }
        
    }
}

impl ExprGenerator for Expr {
    fn to_generator(&self, builder : &mut Builder) -> Generator {
        fail!("to_generator called on non generator type");
    }

    fn to_value(&self, builder : &mut Builder) -> Value {
        match self.node {
            FuncCall(ref prop_path, ref params) => func_call_to_value(prop_path, params, builder),
            _ => fail!("to_value called on type that cannot be resolved to a value")       
        }
    }

    fn to_gen_value(&self, builder : &mut Builder, ctxt : Value) -> Value {
        match self.node {
            FuncCall(ref prop_path, ref params) => func_call_to_gen_value(prop_path, params, builder, ctxt),
            _ => fail!("to_gen_value called on type that cannot be resolved to a gen value")        
        }
    }
}

///////////////////////////////////////
//         FuncCall Generation       //
///////////////////////////////////////

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

fn incl_range_to_generator(start : Box<Expr>, end : Box<Expr>, builder : &mut Builder) -> Generator {
    let start = start.to_value(builder);
    let end = end.to_value(builder);

    let one = builder.int(1);
    let end_plus_one = builder.add_op(end, one, "add_tmp");
    builder.range_gen(start, end_plus_one)
}

///////////////////////////////////////
//     Exclusive Range Generation    //
///////////////////////////////////////

fn excl_range_to_generator(start : Box<Expr>, end : Box<Expr>, builder : &mut Builder) -> Generator {
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

fn ident_expr_to_value(value : Ident, builder : &mut Builder) -> Value {
    let name = value.as_slice();

    match builder.get_var(name) {
        Some(val) => builder.load(val, name),
        None => fail!("No {} in current scope", value)
    }
}

fn ident_expr_to_gen_value(value : Ident, builder : &mut Builder, ctxt : Value) -> Value {
    let name = value.as_slice();

    match builder.get_gen_var(name, ctxt) {
        Some(val) => builder.load(val, name),
        None => fail!("No {} in current scope", value)
    }
}



