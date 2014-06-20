#![allow(unused_imports)]
#![allow(unused_variable)]

extern crate syntax = "hydra_syntax";
extern crate codegen = "hydra_codegen";

use syntax::scanner;
use syntax::parser::{AsyncParser, SyncParser, HydraParser};
use syntax::parser;

use codegen::builder::Builder; 
use codegen::lltype::Block; 
use codegen::CodeGenerator;

use std::os;

fn main(){
    // let args = os::args();
    // let args = args.as_slice();

    // let path_str = args[1].as_slice();
    
    let mut builder = Builder::new();
    let int_type = builder.int32_type();
    let string_type = builder.string_type();
    let void_type = builder.void_type();

    builder.declare_function(
        "puts", vec!(string_type), int_type
    );
    builder.declare_variadic_function(
        "sprintf", vec!(string_type, string_type), int_type
    );
    builder.create_function("print_int", vec!(int_type), void_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let char_type = fb.char_type();
        let buf       = fb.array_malloc(char_type, 9, "buf");
        let gen_fmt   = fb.string("%d", "gen_fmt");

        let v = vec!(buf, gen_fmt, fb.get_param(0));
        let fmtd = fb.call("sprintf", v, "fmtd");

        let p_args = vec!(buf);
        fb.call("puts", p_args, "putsres");

        fb.ret_void();
    });
    builder.create_function("+", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.add_op(left_val, right_val, "tmp");
        fb.ret(tmp);
    });
    builder.create_function("-", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.sub_op(left_val, right_val, "tmp");
        fb.ret(tmp);
    });
    builder.create_function("*", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.mul_op(left_val, right_val, "tmp");
        fb.ret(tmp);
    });
    builder.create_function("/", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.div_op(left_val, right_val, "tmp");
        fb.ret(tmp);
    });
    builder.create_function("%", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.mod_op(left_val, right_val, "tmp");
        fb.ret(tmp);
    });

    //this should be created by an operator where the following block is parsed like a function
    builder.create_function("times", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.mul_op(left_val, right_val, "tmp");
        fb.ret(tmp);
    });
    // builder.create_function("^", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
    //     fb.goto_first_block();

    //     let left_val = fb.get_param(0);
    //     let right_val = fb.get_param(1);

    //     let tmp = fb.add_op(left_val, right_val, "tmp");
    //     fb.ret(tmp);
    // });


    // builder.create_function("fac", vec!(int_type), int_type, |fb : &mut Builder|{
    //     let entry    = fb.new_block("entry");
    //     let if_true  = fb.new_block("if_true");
    //     let if_false = fb.new_block("if_false");
    //     let end      = fb.new_block("end");
        
    //     fb.goto_block(entry);
    //     let n = fb.get_param(0);
    //     let zero = fb.int(0);
    //     let cond = fb.cmp_eq(n, zero, "cmp_tmp");
    //     fb.conditional_break(cond, if_true, if_false);

    //     fb.goto_block(if_true);
    //     let ret_true = fb.int(1);
    //     fb.break_to(end);

    //     fb.goto_block(if_false);
    //     let one = fb.int(1);
    //     let minus = fb.sub_op(n, one, "sub_tmp");
    //     let fac_args = vec!(minus);
    //     let fac_tmp = fb.call("fac", fac_args, "fac_tmp");
    //     let ret_false = fb.mul_op(n, fac_tmp, "mul_tmp");
    //     fb.break_to(end);

    //     fb.goto_block(end);
    //     let ret = fb.phi_node(int_type, "return");
    //     let vals = vec!(ret_true, ret_false);
    //     let blocks = vec!(if_true, if_false);
    //     fb.add_incoming(ret, vals, blocks);

    //     fb.ret(ret);
    // });


    builder.create_function("main", Vec::new(), int_type,|fb : &mut Builder|{
        // let entry = fb.new_block("entry");
        // let init = fb.new_block("init");
        // let loop_check = fb.new_block("loop_check");
        // let loop_stmts = fb.new_block("loop_stmts");
        // let exit = fb.new_block("exit");
        // fb.goto_block(entry);
       
        // let char_type = fb.char_type();
        // let fac_args = vec!(fb.int(4));

        // let fac_res = fb.call("fac", fac_args, "facres");
        // let buf     = fb.array_malloc(char_type, 20, "buf");
        // let fmt     = fb.string(format!("fac({}) = %d", 4), "fmt");

        // let v = vec!(buf, fmt, fac_res);
        // let fmtd = fb.call("sprintf", v, "fmtd");

        // let p_args = vec!(buf);
        // fb.call("puts", p_args, "putsres");
        // fb.break_to(init); 

        fb.goto_first_block();

        let mut ast = parser::parse_file_async("test.hy");
        
        for node in ast.mut_iter() {
            node.gen_code(fb);
        }

        let ret = fb.int(0);
        fb.ret(ret);
    });

    builder.print_module("hydra.ll");
}


