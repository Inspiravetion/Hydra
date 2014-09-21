; ModuleID = 'hydra'

%"!range_gen" = type { i8*, i32, i32, i32 }
%HyObj = type { %HyObjType }
%HyObjType = type { i8, [7 x i8], [13 x i64] }
%HyObjSlice = type { %HyObj**, i64, i64 }
%HyGenNextProc = type { i1 (i8*, %HyObjSlice*, %HyGenCtxt*)*, i8* }
%HyGenCtxt = type { i8*, %HyObjSlice, %HyObjSlice, %HyObjSlice }

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

declare %HyObj* @hy_new_float(float)

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
  br i1 %if_cmp, label %if_else_cond, label %if_else_stmts

if_else_exit:                                     ; preds = %if_else_cond77, %if_else_stmts78, %if_else_stmts
  ret i32 0

if_else_cond:                                     ; preds = %if_cond
  %hy_int72 = call %HyObj* @hy_new_int(i64 1)
  %hy_int73 = call %HyObj* @hy_new_int(i64 100)
  %"<_tmp74" = call %HyObj* @"<"(%HyObj* %hy_int72, %HyObj* %hy_int73)
  %cond75 = call i32 @hy_obj_to_truthy_val(%HyObj* %"<_tmp74")
  %if_cmp76 = icmp eq i32 %cond75, 0
  br i1 %if_cmp76, label %if_else_cond77, label %if_else_stmts78

if_else_stmts:                                    ; preds = %if_cond
  %hy_int70 = call %HyObj* @hy_new_int(i64 10)
  %print_tmp71 = call %HyObj* @print(%HyObj* %hy_int70)
  br label %if_else_exit

if_else_cond77:                                   ; preds = %if_else_cond
  %hy_int81 = call %HyObj* @hy_new_int(i64 1000)
  %print_tmp82 = call %HyObj* @print(%HyObj* %hy_int81)
  br label %if_else_exit

if_else_stmts78:                                  ; preds = %if_else_cond
  %hy_int79 = call %HyObj* @hy_new_int(i64 100)
  %print_tmp80 = call %HyObj* @print(%HyObj* %hy_int79)
  br label %if_else_exit
}

attributes #0 = { nounwind }
