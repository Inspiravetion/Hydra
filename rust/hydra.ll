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

declare %HyObj* @hy_new_tuple(i64)

declare %HyObj* @hy_new_int(i64)

declare %HyObj* @hy_new_float(double)

declare %HyObj* @hy_new_bool(i1)

declare %HyObj* @hy_new_regex(%HyObj*)

declare %HyObj* @hy_new_string(i8*)

declare %HyObj* @hy_new_gen(i8*, %HyObjSlice, %HyGenNextProc*, i64, i64)

declare void @hy_obj_slice_init(%HyObjSlice*, i64)

declare void @hy_obj_slice_reinit(%HyObjSlice*, i64)

declare void @hy_obj_slice_clear(%HyObjSlice*)

declare void @hy_obj_slice_push(%HyObjSlice*, %HyObj*)

declare %HyObj* @hy_obj_slice_get(%HyObjSlice*, i64)

declare i8* @hy_obj_to_str(%HyObj*)

declare %HyObj* @hy_obj_clone(%HyObj*)

declare void @hy_tuple_insert(%HyObj*, %HyObj*)

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

define %HyObj* @print(%HyObjSlice*) {
  %tmp_obj = call %HyObj* @hy_obj_slice_get(%HyObjSlice* %0, i64 0)
  %tmp_str = call i8* @hy_obj_to_str(%HyObj* %tmp_obj)
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
  %param_slice = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice, i64 1)
  %hy_int = call %HyObj* @hy_new_int(i64 100000000)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice, %HyObj* %hy_int)
  %print_tmp = call %HyObj* @print(%HyObjSlice* %param_slice)
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
  %param_slice6 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice6, i64 1)
  %one7 = load %HyObj** %one
  %two8 = load %HyObj** %two
  %"+_tmp" = call %HyObj* @"+"(%HyObj* %one7, %HyObj* %two8)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice6, %HyObj* %"+_tmp")
  %print_tmp9 = call %HyObj* @print(%HyObjSlice* %param_slice6)
  %param_slice10 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice10, i64 1)
  %six11 = load %HyObj** %six
  %three12 = load %HyObj** %three
  %-_tmp = call %HyObj* @-(%HyObj* %six11, %HyObj* %three12)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice10, %HyObj* %-_tmp)
  %print_tmp13 = call %HyObj* @print(%HyObjSlice* %param_slice10)
  %param_slice14 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice14, i64 1)
  %two15 = load %HyObj** %two
  %three16 = load %HyObj** %three
  %"*_tmp" = call %HyObj* @"*"(%HyObj* %two15, %HyObj* %three16)
  %two17 = load %HyObj** %two
  %"/_tmp" = call %HyObj* @"/"(%HyObj* %"*_tmp", %HyObj* %two17)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice14, %HyObj* %"/_tmp")
  %print_tmp18 = call %HyObj* @print(%HyObjSlice* %param_slice14)
  %param_slice19 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice19, i64 1)
  %nine20 = load %HyObj** %nine
  %six21 = load %HyObj** %six
  %"%_tmp" = call %HyObj* @"%"(%HyObj* %nine20, %HyObj* %six21)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice19, %HyObj* %"%_tmp")
  %print_tmp22 = call %HyObj* @print(%HyObjSlice* %param_slice19)
  %param_slice23 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice23, i64 1)
  %one24 = load %HyObj** %one
  %two25 = load %HyObj** %two
  %"<_tmp" = call %HyObj* @"<"(%HyObj* %one24, %HyObj* %two25)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice23, %HyObj* %"<_tmp")
  %print_tmp26 = call %HyObj* @print(%HyObjSlice* %param_slice23)
  %param_slice27 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice27, i64 1)
  %one28 = load %HyObj** %one
  %two29 = load %HyObj** %two
  %">_tmp" = call %HyObj* @">"(%HyObj* %one28, %HyObj* %two29)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice27, %HyObj* %">_tmp")
  %print_tmp30 = call %HyObj* @print(%HyObjSlice* %param_slice27)
  %param_slice31 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice31, i64 1)
  %one32 = load %HyObj** %one
  %two33 = load %HyObj** %two
  %"<=_tmp" = call %HyObj* @"<="(%HyObj* %one32, %HyObj* %two33)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice31, %HyObj* %"<=_tmp")
  %print_tmp34 = call %HyObj* @print(%HyObjSlice* %param_slice31)
  %param_slice35 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice35, i64 1)
  %one36 = load %HyObj** %one
  %two37 = load %HyObj** %two
  %">=_tmp" = call %HyObj* @">="(%HyObj* %one36, %HyObj* %two37)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice35, %HyObj* %">=_tmp")
  %print_tmp38 = call %HyObj* @print(%HyObjSlice* %param_slice35)
  %param_slice39 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice39, i64 1)
  %one40 = load %HyObj** %one
  %one41 = load %HyObj** %one
  %"==_tmp" = call %HyObj* @"=="(%HyObj* %one40, %HyObj* %one41)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice39, %HyObj* %"==_tmp")
  %print_tmp42 = call %HyObj* @print(%HyObjSlice* %param_slice39)
  %param_slice43 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice43, i64 1)
  %one44 = load %HyObj** %one
  %two45 = load %HyObj** %two
  %"==_tmp46" = call %HyObj* @"=="(%HyObj* %one44, %HyObj* %two45)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice43, %HyObj* %"==_tmp46")
  %print_tmp47 = call %HyObj* @print(%HyObjSlice* %param_slice43)
  %param_slice48 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice48, i64 1)
  %one49 = load %HyObj** %one
  %one50 = load %HyObj** %one
  %"!=_tmp" = call %HyObj* @"!="(%HyObj* %one49, %HyObj* %one50)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice48, %HyObj* %"!=_tmp")
  %print_tmp51 = call %HyObj* @print(%HyObjSlice* %param_slice48)
  %param_slice52 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice52, i64 1)
  %one53 = load %HyObj** %one
  %two54 = load %HyObj** %two
  %"!=_tmp55" = call %HyObj* @"!="(%HyObj* %one53, %HyObj* %two54)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice52, %HyObj* %"!=_tmp55")
  %print_tmp56 = call %HyObj* @print(%HyObjSlice* %param_slice52)
  %hy_int57 = call %HyObj* @hy_new_int(i64 15)
  %a = alloca %HyObj*
  store %HyObj* %hy_int57, %HyObj** %a
  %_b = call %HyObj* @hy_new_undefined()
  %b = alloca %HyObj*
  store %HyObj* %_b, %HyObj** %b
  %param_slice58 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice58, i64 1)
  %a59 = load %HyObj** %a
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice58, %HyObj* %a59)
  %print_tmp60 = call %HyObj* @print(%HyObjSlice* %param_slice58)
  %param_slice61 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice61, i64 1)
  %b62 = load %HyObj** %b
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice61, %HyObj* %b62)
  %print_tmp63 = call %HyObj* @print(%HyObjSlice* %param_slice61)
  %param_slice64 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice64, i64 1)
  %a65 = load %HyObj** %a
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice64, %HyObj* %a65)
  %print_tmp66 = call %HyObj* @print(%HyObjSlice* %param_slice64)
  %param_slice67 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice67, i64 1)
  %a68 = load %HyObj** %a
  %a69 = load %HyObj** %a
  %"+_tmp70" = call %HyObj* @"+"(%HyObj* %a68, %HyObj* %a69)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice67, %HyObj* %"+_tmp70")
  %print_tmp71 = call %HyObj* @print(%HyObjSlice* %param_slice67)
  %param_slice72 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice72, i64 1)
  %a73 = load %HyObj** %a
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice72, %HyObj* %a73)
  %print_tmp74 = call %HyObj* @print(%HyObjSlice* %param_slice72)
  %hy_int75 = call %HyObj* @hy_new_int(i64 4)
  store %HyObj* %hy_int75, %HyObj** %b
  %param_slice76 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice76, i64 1)
  %b77 = load %HyObj** %b
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice76, %HyObj* %b77)
  %print_tmp78 = call %HyObj* @print(%HyObjSlice* %param_slice76)
  %param_slice79 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice79, i64 1)
  %a80 = load %HyObj** %a
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice79, %HyObj* %a80)
  %print_tmp81 = call %HyObj* @print(%HyObjSlice* %param_slice79)
  %param_slice82 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice82, i64 1)
  %a83 = load %HyObj** %a
  %b84 = load %HyObj** %b
  %"+_tmp85" = call %HyObj* @"+"(%HyObj* %a83, %HyObj* %b84)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice82, %HyObj* %"+_tmp85")
  %print_tmp86 = call %HyObj* @print(%HyObjSlice* %param_slice82)
  br label %if_cond

if_cond:                                          ; preds = %0
  %b87 = load %HyObj** %b
  %hy_int88 = call %HyObj* @hy_new_int(i64 1000)
  %">_tmp89" = call %HyObj* @">"(%HyObj* %b87, %HyObj* %hy_int88)
  %cond = call i32 @hy_obj_to_truthy_val(%HyObj* %">_tmp89")
  %if_cmp = icmp eq i32 %cond, 0
  br i1 %if_cmp, label %if_else_cond_or_exit, label %if_else_stmts

if_else_cond_or_exit:                             ; preds = %if_else_stmts, %if_cond
  %hy_bool = call %HyObj* @hy_new_bool(i1 false)
  %cond93 = call i32 @hy_obj_to_truthy_val(%HyObj* %hy_bool)
  %if_cmp94 = icmp eq i32 %cond93, 0
  br i1 %if_cmp94, label %if_else_cond_or_exit95, label %if_else_stmts96

if_else_stmts:                                    ; preds = %if_cond
  %param_slice90 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice90, i64 1)
  %hy_int91 = call %HyObj* @hy_new_int(i64 10)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice90, %HyObj* %hy_int91)
  %print_tmp92 = call %HyObj* @print(%HyObjSlice* %param_slice90)
  br label %if_else_cond_or_exit

if_else_cond_or_exit95:                           ; preds = %if_else_stmts96, %if_else_cond_or_exit
  %param_slice100 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice100, i64 1)
  %hy_int101 = call %HyObj* @hy_new_int(i64 1000)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice100, %HyObj* %hy_int101)
  %print_tmp102 = call %HyObj* @print(%HyObjSlice* %param_slice100)
  br label %else_exit

if_else_stmts96:                                  ; preds = %if_else_cond_or_exit
  %param_slice97 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice97, i64 1)
  %hy_int98 = call %HyObj* @hy_new_int(i64 100)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice97, %HyObj* %hy_int98)
  %print_tmp99 = call %HyObj* @print(%HyObjSlice* %param_slice97)
  br label %if_else_cond_or_exit95

else_exit:                                        ; preds = %if_else_cond_or_exit95
  %hy_int103 = call %HyObj* @hy_new_int(i64 0)
  %i = alloca %HyObj*
  store %HyObj* %hy_int103, %HyObj** %i
  br label %while_loop_check

while_loop_check:                                 ; preds = %while_loop_stmts, %else_exit
  %i104 = load %HyObj** %i
  %hy_int105 = call %HyObj* @hy_new_int(i64 3)
  %"<_tmp106" = call %HyObj* @"<"(%HyObj* %i104, %HyObj* %hy_int105)
  %cond107 = call i32 @hy_obj_to_truthy_val(%HyObj* %"<_tmp106")
  %while_cmp = icmp eq i32 0, %cond107
  br i1 %while_cmp, label %while_loop_exit, label %while_loop_stmts

while_loop_stmts:                                 ; preds = %while_loop_check
  %param_slice108 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice108, i64 1)
  %i109 = load %HyObj** %i
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice108, %HyObj* %i109)
  %print_tmp110 = call %HyObj* @print(%HyObjSlice* %param_slice108)
  %i111 = load %HyObj** %i
  %hy_int112 = call %HyObj* @hy_new_int(i64 1)
  %"+_tmp113" = call %HyObj* @"+"(%HyObj* %i111, %HyObj* %hy_int112)
  store %HyObj* %"+_tmp113", %HyObj** %i
  br label %while_loop_check

while_loop_exit:                                  ; preds = %while_loop_check
  %hy_int114 = call %HyObj* @hy_new_int(i64 10)
  %i115 = alloca %HyObj*
  store %HyObj* %hy_int114, %HyObj** %i115
  br label %while_loop_check116

while_loop_check116:                              ; preds = %if_else_cond_or_exit131, %while_loop_exit
  %hy_bool119 = call %HyObj* @hy_new_bool(i1 true)
  %cond120 = call i32 @hy_obj_to_truthy_val(%HyObj* %hy_bool119)
  %while_cmp121 = icmp eq i32 0, %cond120
  br i1 %while_cmp121, label %while_loop_exit118, label %while_loop_stmts117

while_loop_stmts117:                              ; preds = %while_loop_check116
  %param_slice122 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice122, i64 1)
  %i123 = load %HyObj** %i115
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice122, %HyObj* %i123)
  %print_tmp124 = call %HyObj* @print(%HyObjSlice* %param_slice122)
  br label %if_cond125

while_loop_exit118:                               ; preds = %if_else_stmts132, %while_loop_check116
  %hy_string = call %HyObj* @hy_new_string(i8* getelementptr inbounds ([13 x i8]* @"global_\22AzzNTittys\22_literal", i32 0, i32 0))
  %azz = alloca %HyObj*
  store %HyObj* %hy_string, %HyObj** %azz
  %param_slice136 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice136, i64 1)
  %azz137 = load %HyObj** %azz
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice136, %HyObj* %azz137)
  %print_tmp138 = call %HyObj* @print(%HyObjSlice* %param_slice136)
  %hy_int139 = call %HyObj* @hy_new_int(i64 3735928559)
  %hex = alloca %HyObj*
  store %HyObj* %hy_int139, %HyObj** %hex
  %param_slice140 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice140, i64 1)
  %hex141 = load %HyObj** %hex
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice140, %HyObj* %hex141)
  %print_tmp142 = call %HyObj* @print(%HyObjSlice* %param_slice140)
  %hy_int143 = call %HyObj* @hy_new_int(i64 9)
  %bin = alloca %HyObj*
  store %HyObj* %hy_int143, %HyObj** %bin
  %param_slice144 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice144, i64 1)
  %bin145 = load %HyObj** %bin
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice144, %HyObj* %bin145)
  %print_tmp146 = call %HyObj* @print(%HyObjSlice* %param_slice144)
  %hy_float = call %HyObj* @hy_new_float(double 1.234560e+02)
  %float = alloca %HyObj*
  store %HyObj* %hy_float, %HyObj** %float
  %param_slice147 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice147, i64 1)
  %float148 = load %HyObj** %float
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice147, %HyObj* %float148)
  %print_tmp149 = call %HyObj* @print(%HyObjSlice* %param_slice147)
  %hy_array = call %HyObj* @hy_new_array()
  %arr = alloca %HyObj*
  store %HyObj* %hy_array, %HyObj** %arr
  %param_slice150 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice150, i64 1)
  %arr151 = load %HyObj** %arr
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice150, %HyObj* %arr151)
  %print_tmp152 = call %HyObj* @print(%HyObjSlice* %param_slice150)
  %hy_map = call %HyObj* @hy_new_map()
  %map = alloca %HyObj*
  store %HyObj* %hy_map, %HyObj** %map
  %param_slice153 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice153, i64 1)
  %map154 = load %HyObj** %map
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice153, %HyObj* %map154)
  %print_tmp155 = call %HyObj* @print(%HyObjSlice* %param_slice153)
  br label %function_def_bridge

if_cond125:                                       ; preds = %while_loop_stmts117
  %i126 = load %HyObj** %i115
  %hy_int127 = call %HyObj* @hy_new_int(i64 20)
  %"==_tmp128" = call %HyObj* @"=="(%HyObj* %i126, %HyObj* %hy_int127)
  %cond129 = call i32 @hy_obj_to_truthy_val(%HyObj* %"==_tmp128")
  %if_cmp130 = icmp eq i32 %cond129, 0
  br i1 %if_cmp130, label %if_else_cond_or_exit131, label %if_else_stmts132

if_else_cond_or_exit131:                          ; preds = %if_else_stmts132, %if_cond125
  %i133 = load %HyObj** %i115
  %hy_int134 = call %HyObj* @hy_new_int(i64 1)
  %"+_tmp135" = call %HyObj* @"+"(%HyObj* %i133, %HyObj* %hy_int134)
  store %HyObj* %"+_tmp135", %HyObj** %i115
  br label %while_loop_check116

if_else_stmts132:                                 ; preds = %if_cond125
  br label %while_loop_exit118
  br label %if_else_cond_or_exit131

function_def_bridge:                              ; preds = %while_loop_exit118
  %param_slice156 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice156, i64 2)
  %hy_int157 = call %HyObj* @hy_new_int(i64 1)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice156, %HyObj* %hy_int157)
  %hy_int158 = call %HyObj* @hy_new_int(i64 2)
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice156, %HyObj* %hy_int158)
  %add_tmp = call %HyObj* @add(%HyObjSlice* %param_slice156)
  %sum = alloca %HyObj*
  store %HyObj* %add_tmp, %HyObj** %sum
  %param_slice159 = alloca %HyObjSlice
  call void @hy_obj_slice_init(%HyObjSlice* %param_slice159, i64 1)
  %sum160 = load %HyObj** %sum
  call void @hy_obj_slice_push(%HyObjSlice* %param_slice159, %HyObj* %sum160)
  %print_tmp161 = call %HyObj* @print(%HyObjSlice* %param_slice159)
  ret i32 0
}

define %HyObj* @add(%HyObjSlice*) {

add_param_setup:                                  ; No predecessors!
  %param_0 = call %HyObj* @hy_obj_slice_get(%HyObjSlice* %0, i64 0)
  %a = alloca %HyObj*
  store %HyObj* %param_0, %HyObj** %a
  %param_1 = call %HyObj* @hy_obj_slice_get(%HyObjSlice* %0, i64 1)
  %b = alloca %HyObj*
  store %HyObj* %param_1, %HyObj** %b
  br label %add_function_body

add_function_body:                                ; preds = %add_param_setup
  %a1 = load %HyObj** %a
  %b2 = load %HyObj** %b
  %"+_tmp" = call %HyObj* @"+"(%HyObj* %a1, %HyObj* %b2)
  %sum = alloca %HyObj*
  store %HyObj* %"+_tmp", %HyObj** %sum
  %sum3 = load %HyObj** %sum
  ret %HyObj* %sum3
  %undefined = call %HyObj* @hy_new_undefined()
  ret %HyObj* %undefined
}

attributes #0 = { nounwind }
