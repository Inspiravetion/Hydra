use syntax::ast*;

use builder::{Builder, GenBuilder, GenGenState}; 
use generator::Generator; 
use lltype::{Value, Block, Type};


pub trait CodeGenerator {
    fn gen_code(&mut self, &mut Builder) {
        fail!("Called gen_code on a non code generating node");
    }
}

pub trait GenGenerator : CodeGenerator {
    ///Add declared variable types to vec so that a generator state object can 
    ///be created...push the number of vars u need in so that you know where to start from on your save restore
    fn register_state_vars(&mut self, &mut GenBuilder) -> uint {
        fail!("this type does not have an implementation for register_state_vars");
    }

    ///Generate your regular code but also break to the end of the save and restore
    ///blocks provided to save and restore state variables 
    ///
    /// - Block : save block should be where all the state saving code should go
    /// - Block : restore block should be where all the state restoring code should go
    /// - Vec<Block> : a vector that holds all the possible blocks that may be resumed
    /// - Vec<uint> : a vector that holds the offsets of the state variables for each statement
    ///
    fn gen_gen_code(&mut self, &mut GenGenState, &mut Builder){
        fail!("This type cannot build code for a generator");
    }

}

pub trait ExprGenerator : CodeGenerator {
    ///Return a Generator struct with the params for its llvm init function already
    ///created
    fn to_generator(&mut self, &mut Builder) -> Generator {
        fail!("to_generator called on non generator type");
    }

    fn to_value(&mut self, &mut Builder) -> Value {
        fail!("to_value called on type that cannot be resolved to a value");        
    }

    fn to_gen_value(&mut self, &mut Builder, Value) -> Value {
        fail!("to_gen_value called on type that cannot be resolved to a gen value");        
    }
}

pub trait StmtGenerator : GenGenerator {}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                          Expression Generation                             //                
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////
//         FuncCall Generation       //
///////////////////////////////////////

impl CodeGenerator for FuncCall {
    fn gen_code(&mut self, builder : &mut Builder){
        self.to_value(builder);
    }
}

impl ExprGenerator for FuncCall {
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

///////////////////////////////////////
//     Inclusive Range Generation    //
///////////////////////////////////////

impl CodeGenerator for InclusiveRange {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl ExprGenerator for InclusiveRange {
    fn to_generator(&mut self, builder : &mut Builder) -> Generator {
        let start = self.start.to_value(builder);
        let end = self.end.to_value(builder);

        let one = builder.int(1);
        let end_plus_one = builder.add_op(end, one, "add_tmp");
        builder.range_gen(start, end_plus_one)
    }
}

///////////////////////////////////////
//     Exclusive Range Generation    //
///////////////////////////////////////

impl CodeGenerator for ExclusiveRange {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl ExprGenerator for ExclusiveRange {
    fn to_generator(&mut self, builder : &mut Builder) -> Generator {
        let start = self.start.to_value(builder);
        let end = self.end.to_value(builder);

        builder.range_gen(start, end)
    }
}

///////////////////////////////////////
//            Int Generation         //
///////////////////////////////////////

impl CodeGenerator for Int {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl ExprGenerator for Int {
    fn to_value(&mut self, builder : &mut Builder) -> Value {
        builder.int(self.value)
    }

    fn to_gen_value(&mut self, builder : &mut Builder, ctxt : Value) -> Value {
        self.to_value(builder)
    }
}

///////////////////////////////////////
//        Identifier Generation      //
///////////////////////////////////////

impl CodeGenerator for IdentExpr {
    fn gen_code(&mut self, builder : &mut Builder){}
}

impl ExprGenerator for IdentExpr {
    fn to_value(&mut self, builder : &mut Builder) -> Value {
        let name = self.value.as_slice();

        match builder.get_var(name) {
            Some(val) => builder.load(val, name),
            None => fail!("No {} in current scope", self.value)
        }
    }

    fn to_gen_value(&mut self, builder : &mut Builder, ctxt : Value) -> Value {
        let name = self.value.as_slice();

        match builder.get_gen_var(name, ctxt) {
            Some(val) => builder.load(val, name),
            None => fail!("No {} in current scope", self.value)
        }
    }
}



