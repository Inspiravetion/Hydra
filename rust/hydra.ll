; ModuleID = 'hydra'

%"!range_gen" = type { i8*, i32, i32, i32 }
%squares = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@global_gen_fmt = private unnamed_addr constant [3 x i8] c"%d\00"

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

declare i32 @puts(i8*)

declare i32 @sprintf(i8*, i8*, ...)

%"struct.HyObj<[]>" = type { %"enum.HyObjType<[]>" }
%"enum.HyObjType<[]>" = type { i8, [7 x i8], [3 x i64] }

declare void @new_hy_map(%"struct.HyObj<[]>"*)
declare void @hy_obj_print(%"struct.HyObj<[]>"*)
declare i8* @hy_obj_to_str(%"struct.HyObj<[]>"*)
declare void @hy_map_contains(%"struct.HyObj<[]>"*, %"struct.HyObj<[]>"*, %"struct.HyObj<[]>"*)

define i32 @print_int(i32) {
  %buf = tail call i8* @malloc(i32 mul (i32 ptrtoint (i8* getelementptr (i8* null, i32 1) to i32), i32 20))
  %fmtd = call i32 (i8*, i8*, ...)* @sprintf(i8* %buf, i8* getelementptr inbounds ([3 x i8]* @global_gen_fmt, i32 0, i32 0), i32 %0)
  %putsres = call i32 @puts(i8* %buf)
  ret i32 0
}

declare noalias i8* @malloc(i32)

define i32 @"+"(i32, i32) {
  %tmp = add i32 %0, %1
  ret i32 %tmp
}

define i32 @-(i32, i32) {
  %tmp = sub i32 %0, %1
  ret i32 %tmp
}

define i32 @"*"(i32, i32) {
  %tmp = mul i32 %0, %1
  ret i32 %tmp
}

define i32 @"/"(i32, i32) {
  %tmp = sdiv i32 %0, %1
  ret i32 %tmp
}

define i32 @"%"(i32, i32) {
  %tmp = srem i32 %0, %1
  ret i32 %tmp
}

define i32 @"<"(i32, i32) {
  %tmp = icmp slt i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @">"(i32, i32) {
  %tmp = icmp sgt i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @"<="(i32, i32) {
  %tmp = icmp sle i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @">="(i32, i32) {
  %tmp = icmp sge i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @"=="(i32, i32) {
  %tmp = icmp eq i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @"!="(i32, i32) {
  %tmp = icmp ne i32 %0, %1
  %cast_tmp = zext i1 %tmp to i32
  ret i32 %cast_tmp
}

define i32 @main() {
  br label %function_def_bridge

function_def_bridge:  

  ;All objects are stack allocated...for now  
  %real_hy_map = alloca %"struct.HyObj<[]>"
  call void @new_hy_map(%"struct.HyObj<[]>"*  %real_hy_map)
  

  %array_str = call i8* @hy_obj_to_str(%"struct.HyObj<[]>"* %real_hy_map)
  %putsres = call i32 @puts(i8* %array_str)
  
  ;All objects are stack allocated...for now  
  %real_hy_bool = alloca %"struct.HyObj<[]>"
  ;The first arg is the return val...the regular params follow...idk why they did it like this
  call void @hy_map_contains(%"struct.HyObj<[]>"* %real_hy_bool, %"struct.HyObj<[]>"* %real_hy_map, %"struct.HyObj<[]>"* %real_hy_bool)

  %bool_str = call i8* @hy_obj_to_str(%"struct.HyObj<[]>"* %real_hy_bool)
  %putsres2 = call i32 @puts(i8* %bool_str)
                            ; preds = %0
  %"+_tmp" = call i32 @"+"(i32 2, i32 2)
  %double_tmp = call i32 @double(i32 %"+_tmp")
  %a = alloca i32
  store i32 %double_tmp, i32* %a
  %a1 = load i32* %a
  %print_int_tmp = call i32 @print_int(i32 %a1)
  br label %function_def_bridge2

function_def_bridge2:                             ; preds = %function_def_bridge
  br label %gen_def_bridge

gen_def_bridge:                                   ; preds = %function_def_bridge2
  br label %function_def_bridge3

function_def_bridge3:                             ; preds = %gen_def_bridge
  %"*_tmp" = call i32 @"*"(i32 2, i32 3)
  %"/_tmp" = call i32 @"/"(i32 %"*_tmp", i32 2)
  %-_tmp = call i32 @-(i32 %"/_tmp", i32 1)
  %times_tmp = call i32 @times(i32 %-_tmp, i32 10)
  %"+_tmp4" = call i32 @"+"(i32 1, i32 %times_tmp)
  %print_int_tmp5 = call i32 @print_int(i32 %"+_tmp4")
  %range_generator = alloca %"!range_gen"
  br label %for_loop_init

for_loop_init:                                    ; preds = %function_def_bridge3
  call void @"!range_gen_init"(%"!range_gen"* %range_generator, i32 0, i32 3)
  %i = alloca i32
  store i32 -1, i32* %i
  br label %for_loop_check

for_loop_check:                                   ; preds = %for_loop_exit12, %for_loop_exit12, %for_loop_init
  %done = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator)
  %done_cmp = icmp eq i32 %done, 0
  br i1 %done_cmp, label %for_loop_exit, label %for_loop_stmts

for_loop_stmts:                                   ; preds = %for_loop_check
  %ctx_ret = getelementptr inbounds %"!range_gen"* %range_generator, i32 0, i32 3
  %i6 = load i32* %ctx_ret
  store i32 %i6, i32* %i
  %padding = alloca i32
  store i32 10, i32* %padding
  %i7 = load i32* %i
  %add_tmp = add i32 %i7, 1
  %range_generator8 = alloca %"!range_gen"
  br label %for_loop_init9

for_loop_exit:                                    ; preds = %for_loop_check
  br label %function_def_bridge21

for_loop_init9:                                   ; preds = %for_loop_stmts
  call void @"!range_gen_init"(%"!range_gen"* %range_generator8, i32 0, i32 %add_tmp)
  %j = alloca i32
  store i32 -1, i32* %j
  br label %for_loop_check10

for_loop_check10:                                 ; preds = %for_loop_stmts11, %for_loop_init9
  %done13 = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator8)
  %done_cmp14 = icmp eq i32 %done13, 0
  br i1 %done_cmp14, label %for_loop_exit12, label %for_loop_stmts11

for_loop_stmts11:                                 ; preds = %for_loop_check10
  %ctx_ret15 = getelementptr inbounds %"!range_gen"* %range_generator8, i32 0, i32 3
  %j16 = load i32* %ctx_ret15
  store i32 %j16, i32* %j
  %i17 = load i32* %i
  %print_int_tmp18 = call i32 @print_int(i32 %i17)
  br label %for_loop_exit12
  br label %for_loop_check10

for_loop_exit12:                                  ; preds = %for_loop_stmts11, %for_loop_check10
  br label %for_loop_check
  store i32 100, i32* %i
  %i19 = load i32* %i
  %print_int_tmp20 = call i32 @print_int(i32 %i19)
  br label %for_loop_check

function_def_bridge21:                            ; preds = %for_loop_exit
  %plus_tmp = call i32 @plus(i32 1200, i32 34)
  %added = alloca i32
  store i32 %plus_tmp, i32* %added
  %added22 = load i32* %added
  %print_int_tmp23 = call i32 @print_int(i32 %added22)
  %i24 = alloca i32
  store i32 11, i32* %i24
  %j25 = alloca i32
  store i32 12, i32* %j25
  %i26 = load i32* %i24
  %j27 = load i32* %j25
  %"+_tmp28" = call i32 @"+"(i32 %i26, i32 %j27)
  %print_int_tmp29 = call i32 @print_int(i32 %"+_tmp28")
  store i32 21, i32* %i24
  store i32 22, i32* %j25
  %i30 = load i32* %i24
  %j31 = load i32* %j25
  %"+_tmp32" = call i32 @"+"(i32 %i30, i32 %j31)
  %print_int_tmp33 = call i32 @print_int(i32 %"+_tmp32")
  %done34 = alloca i32
  store i32 0, i32* %done34
  br label %while_loop_check

while_loop_check:                                 ; preds = %while_loop_stmts, %function_def_bridge21
  %done35 = load i32* %done34
  %"<=_tmp" = call i32 @"<="(i32 %done35, i32 5)
  %while_cmp = icmp eq i32 0, %"<=_tmp"
  br i1 %while_cmp, label %while_loop_exit, label %while_loop_stmts

while_loop_stmts:                                 ; preds = %while_loop_check
  %print_int_tmp36 = call i32 @print_int(i32 1000000)
  %done37 = load i32* %done34
  %"+_tmp38" = call i32 @"+"(i32 %done37, i32 1)
  store i32 %"+_tmp38", i32* %done34
  br label %while_loop_check

while_loop_exit:                                  ; preds = %while_loop_check
  %abc = alloca i32
  store i32 -1, i32* %abc
  br label %if_cond

if_cond:                                          ; preds = %while_loop_exit
  %i39 = load i32* %i24
  %">_tmp" = call i32 @">"(i32 %i39, i32 1000)
  %if_cmp = icmp eq i32 %">_tmp", 0
  br i1 %if_cmp, label %if_else_cond, label %if_else_stmts

if_else_exit:                                     ; preds = %if_else_cond43, %if_else_stmts44, %if_else_stmts
  %abc47 = load i32* %abc
  %print_int_tmp48 = call i32 @print_int(i32 %abc47)
  %minus_tmp = call i32 @minus(i32 10, i32 100)
  %print_int_tmp49 = call i32 @print_int(i32 %minus_tmp)
  ret i32 0

if_else_cond:                                     ; preds = %if_cond
  %"<_tmp" = call i32 @"<"(i32 1, i32 100)
  %if_cmp42 = icmp eq i32 %"<_tmp", 0
  br i1 %if_cmp42, label %if_else_cond43, label %if_else_stmts44

if_else_stmts:                                    ; preds = %if_cond
  %i40 = load i32* %i24
  %print_int_tmp41 = call i32 @print_int(i32 %i40)
  br label %if_else_exit

if_else_cond43:                                   ; preds = %if_else_cond
  %print_int_tmp46 = call i32 @print_int(i32 1000)
  br label %if_else_exit

if_else_stmts44:                                  ; preds = %if_else_cond
  store i32 2, i32* %abc
  %print_int_tmp45 = call i32 @print_int(i32 100)
  br label %if_else_exit
}

define i32 @double(i32) {
  %a = alloca i32
  store i32 %0, i32* %a
  %a1 = load i32* %a
  %"*_tmp" = call i32 @"*"(i32 %a1, i32 2)
  ret i32 %"*_tmp"
}

define i32 @minus(i32, i32) {
  %a = alloca i32
  store i32 %0, i32* %a
  %b = alloca i32
  store i32 %1, i32* %b
  %a1 = load i32* %a
  %b2 = load i32* %b
  %-_tmp = call i32 @-(i32 %a1, i32 %b2)
  ret i32 %-_tmp
}

define i32 @"!squares_gen_next"(%squares*) {

gen_state_restore:                                ; No predecessors!
  %ctx_state = getelementptr inbounds %squares* %0, i32 0, i32 0
  %dest = load i8** %ctx_state
  indirectbr i8* %dest, [label %gen_state_save, label %gen_state_entry, label %gen_exit, label %post_yield, label %post_yield13]

gen_state_save:                                   ; preds = %gen_state_restore
  ret i32 1

gen_state_entry:                                  ; preds = %gen_state_restore
  %_d = getelementptr inbounds %squares* %0, i32 0, i32 2
  store i32 -1, i32* %_d
  %_a = getelementptr inbounds %squares* %0, i32 0, i32 3
  store i32 1, i32* %_a
  %_b = getelementptr inbounds %squares* %0, i32 0, i32 4
  store i32 -1, i32* %_b
  %_c = getelementptr inbounds %squares* %0, i32 0, i32 5
  store i32 -1, i32* %_c
  %_a1 = getelementptr inbounds %squares* %0, i32 0, i32 3
  store i32 2, i32* %_a1
  %ret_2 = getelementptr inbounds %squares* %0, i32 0, i32 6
  %_a2 = getelementptr inbounds %squares* %0, i32 0, i32 3
  %a = load i32* %_a2
  store i32 %a, i32* %ret_2
  %ret_3 = getelementptr inbounds %squares* %0, i32 0, i32 7
  %_d3 = getelementptr inbounds %squares* %0, i32 0, i32 2
  %d = load i32* %_d3
  store i32 %d, i32* %ret_3
  %ret_4 = getelementptr inbounds %squares* %0, i32 0, i32 8
  %_b4 = getelementptr inbounds %squares* %0, i32 0, i32 4
  %b = load i32* %_b4
  store i32 %b, i32* %ret_4
  %resume_block_slot = getelementptr inbounds %squares* %0, i32 0, i32 0
  store i8* blockaddress(@"!squares_gen_next", %post_yield), i8** %resume_block_slot
  ret i32 1

gen_exit:                                         ; preds = %gen_state_restore, %post_yield13
  ret i32 0

post_yield:                                       ; preds = %gen_state_restore
  %ret_25 = getelementptr inbounds %squares* %0, i32 0, i32 6
  %_b6 = getelementptr inbounds %squares* %0, i32 0, i32 4
  %b7 = load i32* %_b6
  store i32 %b7, i32* %ret_25
  %ret_38 = getelementptr inbounds %squares* %0, i32 0, i32 7
  %_c9 = getelementptr inbounds %squares* %0, i32 0, i32 5
  %c = load i32* %_c9
  store i32 %c, i32* %ret_38
  %ret_410 = getelementptr inbounds %squares* %0, i32 0, i32 8
  %_a11 = getelementptr inbounds %squares* %0, i32 0, i32 3
  %a12 = load i32* %_a11
  store i32 %a12, i32* %ret_410
  %resume_block_slot14 = getelementptr inbounds %squares* %0, i32 0, i32 0
  store i8* blockaddress(@"!squares_gen_next", %post_yield13), i8** %resume_block_slot14
  ret i32 1

post_yield13:                                     ; preds = %gen_state_restore
  %_b15 = getelementptr inbounds %squares* %0, i32 0, i32 4
  store i32 2, i32* %_b15
  br label %gen_exit
}

define void @"!squares_gen_init"(%squares*, i32) {
  %ctx_state = getelementptr inbounds %squares* %0, i32 0, i32 0
  store i8* blockaddress(@"!squares_gen_next", %gen_state_entry), i8** %ctx_state
  %param0 = getelementptr inbounds %squares* %0, i32 0, i32 1
  store i32 %1, i32* %param0
  ret void
}

define i32 @times(i32, i32) {
  %a = alloca i32
  store i32 %0, i32* %a
  %b = alloca i32
  store i32 %1, i32* %b
  %a1 = load i32* %a
  %b2 = load i32* %b
  %"*_tmp" = call i32 @"*"(i32 %a1, i32 %b2)
  ret i32 %"*_tmp"
}

define i32 @plus(i32, i32) {
  %a = alloca i32
  store i32 %0, i32* %a
  %b = alloca i32
  store i32 %1, i32* %b
  %a1 = load i32* %a
  %b2 = load i32* %b
  %"+_tmp" = call i32 @"+"(i32 %a1, i32 %b2)
  ret i32 %"+_tmp"
}
