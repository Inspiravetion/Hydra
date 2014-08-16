use builder::Builder;

pub fn gen_intrinsics(builder : &mut Builder) {
    let int_type = builder.int32_type();
    let string_type = builder.string_type();
    let void_type = builder.void_type();

    builder.declare_function(
        "puts", vec!(string_type), int_type
    );
    builder.declare_variadic_function(
        "sprintf", vec!(string_type, string_type), int_type
    );
    builder.create_function("print_int", vec!(int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let char_type = fb.char_type();
        let buf       = fb.array_malloc(char_type, 9, "buf");
        let gen_fmt   = fb.string("%d", "gen_fmt");

        let v = vec!(buf, gen_fmt, fb.get_param(0));
        let fmtd = fb.call("sprintf", v, "fmtd");

        let p_args = vec!(buf);
        fb.call("puts", p_args, "putsres");

        let ret = fb.int(0);
        fb.ret(ret);
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
    builder.create_function("<", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.cmp_less_than(left_val, right_val, "tmp");
        let int32_tmp = fb.zext(tmp, int_type, "cast_tmp");

        fb.ret(int32_tmp);
    });
    builder.create_function(">", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.cmp_greater_than(left_val, right_val, "tmp");
        let int32_tmp = fb.zext(tmp, int_type, "cast_tmp");

        fb.ret(int32_tmp);
    });
    builder.create_function("<=", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.cmp_less_than_eq(left_val, right_val, "tmp");
        let int32_tmp = fb.zext(tmp, int_type, "cast_tmp");

        fb.ret(int32_tmp);
    });
    builder.create_function(">=", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.cmp_greater_than_eq(left_val, right_val, "tmp");
        let int32_tmp = fb.zext(tmp, int_type, "cast_tmp");

        fb.ret(int32_tmp);
    });
    builder.create_function("==", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.cmp_eq(left_val, right_val, "tmp");
        let int32_tmp = fb.zext(tmp, int_type, "cast_tmp");

        fb.ret(int32_tmp);
    });
    builder.create_function("!=", vec!(int_type, int_type), int_type, |fb : &mut Builder|{
        fb.goto_first_block();

        let left_val = fb.get_param(0);
        let right_val = fb.get_param(1);

        let tmp = fb.cmp_not_eq(left_val, right_val, "tmp");
        let int32_tmp = fb.zext(tmp, int_type, "cast_tmp");

        fb.ret(int32_tmp);
    });
}