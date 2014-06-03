extern crate syntax = "hydra_syntax";
extern crate jit = "hydra_jit";

use syntax::scanner;
use jit::codegen::Builder;

use std::os;

fn main(){
    let args = os::args();
    let args = args.as_slice();

    // let path_str = args[1].as_slice();

    // for tok in scanner::tokenize_file(path_str).iter() {
    //     println!("{}", tok);
    // }

    // println!("{:?}", scanner::tokenize_file(path_str));

    // let tokens = scanner::stream_from_str("for i in 0 upto 10 do\n\tprint(i)\nend");

    // for tok in tokens.iter() {
    //     println!("{}", tok);
    // }

    // println!("---------");

    // let tokens = scanner::stream_from_file(path_str);

    // for tok in tokens.iter() {
    //     println!("{}", tok);
    // }
    // 
    
    let mut builder = Builder::new();
    let int_type = builder.int32_type();
    let string_type = builder.string_type();

    builder.create_package("hydra");

    builder.declare_function(
        "puts", vec!(string_type), int_type
    );
    builder.declare_variadic_function(
        "sprintf", vec!(string_type, string_type), int_type
    );

    builder.create_function("fac", vec!(int_type), int_type, |fb : &mut Builder|{
        let entry    = fb.new_block("entry");
        let if_true  = fb.new_block("if_true");
        let if_false = fb.new_block("if_false");
        let end      = fb.new_block("end");
        
        fb.goto_block(entry);
        let n = fb.get_param(0);
        let zero = fb.int(0);
        let cond = fb.cmp_eq(n, zero, "cmp_tmp");
        fb.conditional_break(cond, if_true, if_false);

        fb.goto_block(if_true);
        let ret_true = fb.int(1);
        fb.break_to(end);

        fb.goto_block(if_false);
        let one = fb.int(1);
        let minus = fb.sub_op(n, one, "sub_tmp");
        let fac_args = vec!(minus);
        let fac_tmp = fb.call("fac", fac_args, "fac_tmp");
        let ret_false = fb.mul_op(n, fac_tmp, "mul_tmp");
        fb.break_to(end);

        fb.goto_block(end);
        let ret = fb.phi_node(int_type, "return");
        let vals = vec!(ret_true, ret_false);
        let blocks = vec!(if_true, if_false);
        fb.add_incoming(ret, vals, blocks);

        fb.ret(ret);
    });

    builder.create_function("main", Vec::new(), int_type,|fb : &mut Builder|{
        fb.new_block("entry");
       
        let char_type = fb.char_type();
        let fac_args = vec!(fb.int(4));

        let fac_res = fb.call("fac", fac_args, "facres");
        let buf     = fb.array_malloc(char_type, 20, "buf");
        let fmt     = fb.string(format!("fac({}) = %d", 4), "fmt");

        let v = vec!(buf, fmt, fac_res);
        let fmtd = fb.call("sprintf", v, "fmtd");

        let p_args = vec!(buf);
        fb.call("puts", p_args, "");

        let ret = fb.int(0);
        fb.ret(ret);
    });

    builder.print_module("hydra.ll");

}


