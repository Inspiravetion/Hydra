; ModuleID = 'hydra'

%"!range_gen" = type { i8*, i32, i32, i32 }
%HyObj = type { %HyObjType }
%HyObjType = type { i8, [7 x i8], [13 x i64] }
%HyObjSlice = type { %HyObj**, i64, i64 }
%HyGenNextProc = type { i1 (i8*, %HyObjSlice*, %HyGenCtxt*)*, i8* }
%HyGenCtxt = type { i8*, %HyObjSlice, %HyObjSlice, %HyObjSlice }

@"global_\22AzzNTittys\22_literal" = private unnamed_addr constant [13 x i8] c"\22AzzNTittys\22\00"

define i32 @"!range_gen_next"(%"!range_gen"*) {

entry:                                            ; No predecessors!
  %ctx_state = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 0
  %ctx_index = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 1
  %ctx_end = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 2
  %ctx_ret = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 3
  %dest = load i8** %ctx_state
  indirectbr i8* %dest, [label %cond, label %incr]

cond:                                             ; preds = %incr, %entry
  %index = load i32* %ctx_index
  %end = load i32* %ctx_end
  %cmp_tmp = icmp slt i32 %index, %end
  br i1 %cmp_tmp, label %yield1, label %exit

incr:                                             ; preds = %entry
  %index1 = load i32* %ctx_index
  %add_tmp = add i32 %index1, 1
  store i32 %add_tmp, i32* %ctx_index
  br label %cond

yield1:                                           ; preds = %cond
  store i8* blockaddress(@"!range_gen_next", %incr), i8** %ctx_state
  %ret1 = load i32* %ctx_index
  store i32 %ret1, i32* %ctx_ret
  ret i32 1

exit:                                             ; preds = %cond
  ret i32 0
}

define void @"!range_gen_init"(%"!range_gen"*, i32, i32) {
  %state = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 0
  %start = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 1
  %end = getelementptr inbounds %"!range_gen"* %0, i32 0, i32 2
  store i8* blockaddress(@"!range_gen_next", %cond), i8** %state
  store i32 %1, i32* %start
  store i32 %2, i32* %end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.gcroot(i8**, i8*) #0

declare %HyObj* @hy_new_undefined()

declare %HyObj* @hy_new_null()

declare %HyObj* @hy_new_chan()

declare %HyObj* @hy_new_map()

declare %HyObj* @hy_new_array()

declare %HyObj* @hy_new_int(i64)

declare %HyObj* @hy_new_float(double)

declare %HyObj* @hy_new_bool(i1)

declare %HyObj* @hy_new_regex(%HyObj*)

declare %HyObj* @hy_new_string(i8*)

declare %HyObj* @hy_new_gen(i8*, %HyObjSlice, %HyGenNextProc*, i64, i64)

declare %HyObjSlice @hy_new_obj_slice(i64)

declare void @hy_obj_slice_push(%HyObjSlice*, %HyObj*)

declare i8* @hy_obj_to_str(%HyObj*)

declare %HyObj* @hy_obj_clone(%HyObj*)

declare %HyObj* @hy_map_insert(%HyObj*, %HyObj*, %HyObj*)

declare %HyObj* @hy_map_delete(%HyObj*, %HyObj*)

declare %HyObj* @hy_map_contains(%HyObj*, %HyObj*)

declare %HyObj* @hy_add_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_sub_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_mul_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_div_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_mod_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_lt_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_gt_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_lt_eq_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_gt_eq_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_eq_op(%HyObj*, %HyObj*)

declare %HyObj* @hy_neq_op(%HyObj*, %HyObj*)

declare i32 @hy_obj_to_truthy_val(%HyObj*)

declare i32 @puts(i8*)

declare i32 @sprintf(i8*, i8*, ...)

define %HyObj* @print(%HyObj*) {
  %tmp_str = call i8* @hy_obj_to_str(%HyObj* %0)
  %putsres = call i32 @puts(i8* %tmp_str)
  %tmp_ret = call %HyObj* @hy_new_undefined()
  ret %HyObj* %tmp_ret
}

define %HyObj* @"+"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_add_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @-(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_sub_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"*"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_mul_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"/"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_div_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"%"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_mod_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"<"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_lt_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @">"(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_gt_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"<="(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_lt_eq_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @">="(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_gt_eq_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"=="(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_eq_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define %HyObj* @"!="(%HyObj*, %HyObj*) {
  %tmp = call %HyObj* @hy_neq_op(%HyObj* %0, %HyObj* %1)
  ret %HyObj* %tmp
}

define i32 @main() {
  %hy_int = call %HyObj* @hy_new_int(i64 100000000)
  %print_tmp = call %HyObj* @print(%HyObj* %hy_int)
  %hy_int1 = call %HyObj* @hy_new_int(i64 1)
  %one = alloca %HyObj*
  store %HyObj* %hy_int1, %HyObj** %one
  %hy_int2 = call %HyObj* @hy_new_int(i64 2)
  %two = alloca %HyObj*
  store %HyObj* %hy_int2, %HyObj** %two
  %hy_int3 = call %HyObj* @hy_new_int(i64 3)
  %three = alloca %HyObj*
  store %HyObj* %hy_int3, %HyObj** %three
  %hy_int4 = call %HyObj* @hy_new_int(i64 6)
  %six = alloca %HyObj*
  store %HyObj* %hy_int4, %HyObj** %six
  %hy_int5 = call %HyObj* @hy_new_int(i64 9)
  %nine = alloca %HyObj*
  store %HyObj* %hy_int5, %HyObj** %nine
  %one6 = load %HyObj** %one
  %two7 = load %HyObj** %two
  %"+_tmp" = call %HyObj* @"+"(%HyObj* %one6, %HyObj* %two7)
  %print_tmp8 = call %HyObj* @print(%HyObj* %"+_tmp")
  %six9 = load %HyObj** %six
  %three10 = load %HyObj** %three
  %-_tmp = call %HyObj* @-(%HyObj* %six9, %HyObj* %three10)
  %print_tmp11 = call %HyObj* @print(%HyObj* %-_tmp)
  %two12 = load %HyObj** %two
  %three13 = load %HyObj** %three
  %"*_tmp" = call %HyObj* @"*"(%HyObj* %two12, %HyObj* %three13)
  %two14 = load %HyObj** %two
  %"/_tmp" = call %HyObj* @"/"(%HyObj* %"*_tmp", %HyObj* %two14)
  %print_tmp15 = call %HyObj* @print(%HyObj* %"/_tmp")
  %nine16 = load %HyObj** %nine
  %six17 = load %HyObj** %six
  %"%_tmp" = call %HyObj* @"%"(%HyObj* %nine16, %HyObj* %six17)
  %print_tmp18 = call %HyObj* @print(%HyObj* %"%_tmp")
  %one19 = load %HyObj** %one
  %two20 = load %HyObj** %two
  %"<_tmp" = call %HyObj* @"<"(%HyObj* %one19, %HyObj* %two20)
  %print_tmp21 = call %HyObj* @print(%HyObj* %"<_tmp")
  %one22 = load %HyObj** %one
  %two23 = load %HyObj** %two
  %">_tmp" = call %HyObj* @">"(%HyObj* %one22, %HyObj* %two23)
  %print_tmp24 = call %HyObj* @print(%HyObj* %">_tmp")
  %one25 = load %HyObj** %one
  %two26 = load %HyObj** %two
  %"<=_tmp" = call %HyObj* @"<="(%HyObj* %one25, %HyObj* %two26)
  %print_tmp27 = call %HyObj* @print(%HyObj* %"<=_tmp")
  %one28 = load %HyObj** %one
  %two29 = load %HyObj** %two
  %">=_tmp" = call %HyObj* @">="(%HyObj* %one28, %HyObj* %two29)
  %print_tmp30 = call %HyObj* @print(%HyObj* %">=_tmp")
  %one31 = load %HyObj** %one
  %one32 = load %HyObj** %one
  %"==_tmp" = call %HyObj* @"=="(%HyObj* %one31, %HyObj* %one32)
  %print_tmp33 = call %HyObj* @print(%HyObj* %"==_tmp")
  %one34 = load %HyObj** %one
  %two35 = load %HyObj** %two
  %"==_tmp36" = call %HyObj* @"=="(%HyObj* %one34, %HyObj* %two35)
  %print_tmp37 = call %HyObj* @print(%HyObj* %"==_tmp36")
  %one38 = load %HyObj** %one
  %one39 = load %HyObj** %one
  %"!=_tmp" = call %HyObj* @"!="(%HyObj* %one38, %HyObj* %one39)
  %print_tmp40 = call %HyObj* @print(%HyObj* %"!=_tmp")
  %one41 = load %HyObj** %one
  %two42 = load %HyObj** %two
  %"!=_tmp43" = call %HyObj* @"!="(%HyObj* %one41, %HyObj* %two42)
  %print_tmp44 = call %HyObj* @print(%HyObj* %"!=_tmp43")
  %hy_int45 = call %HyObj* @hy_new_int(i64 15)
  %a = alloca %HyObj*
  store %HyObj* %hy_int45, %HyObj** %a
  %_b = call %HyObj* @hy_new_undefined()
  %b = alloca %HyObj*
  store %HyObj* %_b, %HyObj** %b
  %a46 = load %HyObj** %a
  %print_tmp47 = call %HyObj* @print(%HyObj* %a46)
  %b48 = load %HyObj** %b
  %print_tmp49 = call %HyObj* @print(%HyObj* %b48)
  %a50 = load %HyObj** %a
  %print_tmp51 = call %HyObj* @print(%HyObj* %a50)
  %a52 = load %HyObj** %a
  %a53 = load %HyObj** %a
  %"+_tmp54" = call %HyObj* @"+"(%HyObj* %a52, %HyObj* %a53)
  %print_tmp55 = call %HyObj* @print(%HyObj* %"+_tmp54")
  %a56 = load %HyObj** %a
  %print_tmp57 = call %HyObj* @print(%HyObj* %a56)
  %hy_int58 = call %HyObj* @hy_new_int(i64 4)
  store %HyObj* %hy_int58, %HyObj** %b
  %b59 = load %HyObj** %b
  %print_tmp60 = call %HyObj* @print(%HyObj* %b59)
  %a61 = load %HyObj** %a
  %print_tmp62 = call %HyObj* @print(%HyObj* %a61)
  %a63 = load %HyObj** %a
  %b64 = load %HyObj** %b
  %"+_tmp65" = call %HyObj* @"+"(%HyObj* %a63, %HyObj* %b64)
  %print_tmp66 = call %HyObj* @print(%HyObj* %"+_tmp65")
  br label %if_cond

if_cond:                                          ; preds = %0
  %b67 = load %HyObj** %b
  %hy_int68 = call %HyObj* @hy_new_int(i64 1000)
  %">_tmp69" = call %HyObj* @">"(%HyObj* %b67, %HyObj* %hy_int68)
  %cond = call i32 @hy_obj_to_truthy_val(%HyObj* %">_tmp69")
  %if_cmp = icmp eq i32 %cond, 0
  br i1 %if_cmp, label %if_else_cond_or_exit, label %if_else_stmts

if_else_cond_or_exit:                             ; preds = %if_else_stmts, %if_cond
  %hy_bool = call %HyObj* @hy_new_bool(i1 false)
  %cond72 = call i32 @hy_obj_to_truthy_val(%HyObj* %hy_bool)
  %if_cmp73 = icmp eq i32 %cond72, 0
  br i1 %if_cmp73, label %if_else_cond_or_exit74, label %if_else_stmts75

if_else_stmts:                                    ; preds = %if_cond
  %hy_int70 = call %HyObj* @hy_new_int(i64 10)
  %print_tmp71 = call %HyObj* @print(%HyObj* %hy_int70)
  br label %if_else_cond_or_exit

if_else_cond_or_exit74:                           ; preds = %if_else_stmts75, %if_else_cond_or_exit
  %hy_int78 = call %HyObj* @hy_new_int(i64 1000)
  %print_tmp79 = call %HyObj* @print(%HyObj* %hy_int78)
  br label %else_exit

if_else_stmts75:                                  ; preds = %if_else_cond_or_exit
  %hy_int76 = call %HyObj* @hy_new_int(i64 100)
  %print_tmp77 = call %HyObj* @print(%HyObj* %hy_int76)
  br label %if_else_cond_or_exit74

else_exit:                                        ; preds = %if_else_cond_or_exit74
  %hy_int80 = call %HyObj* @hy_new_int(i64 0)
  %i = alloca %HyObj*
  store %HyObj* %hy_int80, %HyObj** %i
  br label %while_loop_check

while_loop_check:                                 ; preds = %while_loop_stmts, %else_exit
  %i81 = load %HyObj** %i
  %hy_int82 = call %HyObj* @hy_new_int(i64 3)
  %"<_tmp83" = call %HyObj* @"<"(%HyObj* %i81, %HyObj* %hy_int82)
  %cond84 = call i32 @hy_obj_to_truthy_val(%HyObj* %"<_tmp83")
  %while_cmp = icmp eq i32 0, %cond84
  br i1 %while_cmp, label %while_loop_exit, label %while_loop_stmts

while_loop_stmts:                                 ; preds = %while_loop_check
  %i85 = load %HyObj** %i
  %print_tmp86 = call %HyObj* @print(%HyObj* %i85)
  %i87 = load %HyObj** %i
  %hy_int88 = call %HyObj* @hy_new_int(i64 1)
  %"+_tmp89" = call %HyObj* @"+"(%HyObj* %i87, %HyObj* %hy_int88)
  store %HyObj* %"+_tmp89", %HyObj** %i
  br label %while_loop_check

while_loop_exit:                                  ; preds = %while_loop_check
  %hy_int90 = call %HyObj* @hy_new_int(i64 10)
  %i91 = alloca %HyObj*
  store %HyObj* %hy_int90, %HyObj** %i91
  br label %while_loop_check92

while_loop_check92:                               ; preds = %if_else_cond_or_exit106, %while_loop_exit
  %hy_bool95 = call %HyObj* @hy_new_bool(i1 true)
  %cond96 = call i32 @hy_obj_to_truthy_val(%HyObj* %hy_bool95)
  %while_cmp97 = icmp eq i32 0, %cond96
  br i1 %while_cmp97, label %while_loop_exit94, label %while_loop_stmts93

while_loop_stmts93:                               ; preds = %while_loop_check92
  %i98 = load %HyObj** %i91
  %print_tmp99 = call %HyObj* @print(%HyObj* %i98)
  br label %if_cond100

while_loop_exit94:                                ; preds = %if_else_stmts107, %while_loop_check92
  %hy_string = call %HyObj* @hy_new_string(i8* getelementptr inbounds ([13 x i8]* @"global_\22AzzNTittys\22_literal", i32 0, i32 0))
  %azz = alloca %HyObj*
  store %HyObj* %hy_string, %HyObj** %azz
  %azz111 = load %HyObj** %azz
  %print_tmp112 = call %HyObj* @print(%HyObj* %azz111)
  %hy_int113 = call %HyObj* @hy_new_int(i64 3735928559)
  %hex = alloca %HyObj*
  store %HyObj* %hy_int113, %HyObj** %hex
  %hex114 = load %HyObj** %hex
  %print_tmp115 = call %HyObj* @print(%HyObj* %hex114)
  %hy_int116 = call %HyObj* @hy_new_int(i64 9)
  %bin = alloca %HyObj*
  store %HyObj* %hy_int116, %HyObj** %bin
  %bin117 = load %HyObj** %bin
  %print_tmp118 = call %HyObj* @print(%HyObj* %bin117)
  %hy_float = call %HyObj* @hy_new_float(double 1.234560e+02)
  %float = alloca %HyObj*
  store %HyObj* %hy_float, %HyObj** %float
  %float119 = load %HyObj** %float
  %print_tmp120 = call %HyObj* @print(%HyObj* %float119)
  ret i32 0

if_cond100:                                       ; preds = %while_loop_stmts93
  %i101 = load %HyObj** %i91
  %hy_int102 = call %HyObj* @hy_new_int(i64 20)
  %"==_tmp103" = call %HyObj* @"=="(%HyObj* %i101, %HyObj* %hy_int102)
  %cond104 = call i32 @hy_obj_to_truthy_val(%HyObj* %"==_tmp103")
  %if_cmp105 = icmp eq i32 %cond104, 0
  br i1 %if_cmp105, label %if_else_cond_or_exit106, label %if_else_stmts107

if_else_cond_or_exit106:                          ; preds = %if_else_stmts107, %if_cond100
  %i108 = load %HyObj** %i91
  %hy_int109 = call %HyObj* @hy_new_int(i64 1)
  %"+_tmp110" = call %HyObj* @"+"(%HyObj* %i108, %HyObj* %hy_int109)
  store %HyObj* %"+_tmp110", %HyObj** %i91
  br label %while_loop_check92

if_else_stmts107:                                 ; preds = %if_cond100
  br label %while_loop_exit94
  br label %if_else_cond_or_exit106
}

attributes #0 = { nounwind }
