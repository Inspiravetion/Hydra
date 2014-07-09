; ModuleID = 'hydra'

%"!range_gen" = type { i8*, i32, i32, i32 }
%squares = type { i8*, i32 }

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

function_def_bridge:                              ; preds = %0
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
  %range_generator = alloca %"!range_gen"
  br label %for_loop_init

for_loop_init:                                    ; preds = %function_def_bridge3
  call void @"!range_gen_init"(%"!range_gen"* %range_generator, i32 0, i32 %"+_tmp4")
  %i = alloca i32
  store i32 -1, i32* %i
  br label %for_loop_check

for_loop_check:                                   ; preds = %for_loop_exit11, %for_loop_exit11, %for_loop_init
  %done = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator)
  %done_cmp = icmp eq i32 %done, 0
  br i1 %done_cmp, label %for_loop_exit, label %for_loop_stmts

for_loop_stmts:                                   ; preds = %for_loop_check
  %ctx_ret = getelementptr inbounds %"!range_gen"* %range_generator, i32 0, i32 3
  %i5 = load i32* %ctx_ret
  store i32 %i5, i32* %i
  %padding = alloca i32
  store i32 10, i32* %padding
  %i6 = load i32* %i
  %add_tmp = add i32 %i6, 1
  %range_generator7 = alloca %"!range_gen"
  br label %for_loop_init8

for_loop_exit:                                    ; preds = %for_loop_check
  br label %function_def_bridge25

for_loop_init8:                                   ; preds = %for_loop_stmts
  call void @"!range_gen_init"(%"!range_gen"* %range_generator7, i32 0, i32 %add_tmp)
  %i12 = alloca i32
  store i32 -1, i32* %i12
  br label %for_loop_check9

for_loop_check9:                                  ; preds = %for_loop_stmts10, %for_loop_init8
  %done13 = call i32 @"!range_gen_next"(%"!range_gen"* %range_generator7)
  %done_cmp14 = icmp eq i32 %done13, 0
  br i1 %done_cmp14, label %for_loop_exit11, label %for_loop_stmts10

for_loop_stmts10:                                 ; preds = %for_loop_check9
  %ctx_ret15 = getelementptr inbounds %"!range_gen"* %range_generator7, i32 0, i32 3
  %i16 = load i32* %ctx_ret15
  store i32 %i16, i32* %i12
  %i17 = load i32* %i12
  %"+_tmp18" = call i32 @"+"(i32 %i17, i32 1)
  %-_tmp19 = call i32 @-(i32 %"+_tmp18", i32 1)
  %padding20 = load i32* %padding
  %"+_tmp21" = call i32 @"+"(i32 %-_tmp19, i32 %padding20)
  %print_int_tmp22 = call i32 @print_int(i32 %"+_tmp21")
  br label %for_loop_exit11
  br label %for_loop_check9

for_loop_exit11:                                  ; preds = %for_loop_stmts10, %for_loop_check9
  br label %for_loop_check
  store i32 100, i32* %i
  %i23 = load i32* %i
  %print_int_tmp24 = call i32 @print_int(i32 %i23)
  br label %for_loop_check

function_def_bridge25:                            ; preds = %for_loop_exit
  %plus_tmp = call i32 @plus(i32 1200, i32 34)
  %added = alloca i32
  store i32 %plus_tmp, i32* %added
  %added26 = load i32* %added
  %print_int_tmp27 = call i32 @print_int(i32 %added26)
  %i28 = alloca i32
  store i32 11, i32* %i28
  %j = alloca i32
  store i32 12, i32* %j
  %i29 = load i32* %i28
  %j30 = load i32* %j
  %"+_tmp31" = call i32 @"+"(i32 %i29, i32 %j30)
  %print_int_tmp32 = call i32 @print_int(i32 %"+_tmp31")
  store i32 21, i32* %i28
  store i32 22, i32* %j
  %i33 = load i32* %i28
  %j34 = load i32* %j
  %"+_tmp35" = call i32 @"+"(i32 %i33, i32 %j34)
  %print_int_tmp36 = call i32 @print_int(i32 %"+_tmp35")
  %done37 = alloca i32
  store i32 0, i32* %done37
  br label %while_loop_check

while_loop_check:                                 ; preds = %while_loop_stmts, %function_def_bridge25
  %done38 = load i32* %done37
  %"<=_tmp" = call i32 @"<="(i32 %done38, i32 5)
  %while_cmp = icmp eq i32 0, %"<=_tmp"
  br i1 %while_cmp, label %while_loop_exit, label %while_loop_stmts

while_loop_stmts:                                 ; preds = %while_loop_check
  %print_int_tmp39 = call i32 @print_int(i32 1000000)
  %done40 = load i32* %done37
  %"+_tmp41" = call i32 @"+"(i32 %done40, i32 1)
  store i32 %"+_tmp41", i32* %done37
  br label %while_loop_check

while_loop_exit:                                  ; preds = %while_loop_check
  %abc = alloca i32
  store i32 -1, i32* %abc
  br label %if_cond

if_cond:                                          ; preds = %while_loop_exit
  %i42 = load i32* %i28
  %">_tmp" = call i32 @">"(i32 %i42, i32 1000)
  %if_cmp = icmp eq i32 %">_tmp", 0
  br i1 %if_cmp, label %if_else_cond, label %if_else_stmts

if_else_exit:                                     ; preds = %if_else_cond46, %if_else_stmts47, %if_else_stmts
  %abc50 = load i32* %abc
  %print_int_tmp51 = call i32 @print_int(i32 %abc50)
  %minus_tmp = call i32 @minus(i32 10, i32 100)
  %print_int_tmp52 = call i32 @print_int(i32 %minus_tmp)
  ret i32 0

if_else_cond:                                     ; preds = %if_cond
  %"<_tmp" = call i32 @"<"(i32 1, i32 100)
  %if_cmp45 = icmp eq i32 %"<_tmp", 0
  br i1 %if_cmp45, label %if_else_cond46, label %if_else_stmts47

if_else_stmts:                                    ; preds = %if_cond
  %i43 = load i32* %i28
  %print_int_tmp44 = call i32 @print_int(i32 %i43)
  br label %if_else_exit

if_else_cond46:                                   ; preds = %if_else_cond
  %print_int_tmp49 = call i32 @print_int(i32 1000)
  br label %if_else_exit

if_else_stmts47:                                  ; preds = %if_else_cond
  store i32 2, i32* %abc
  %print_int_tmp48 = call i32 @print_int(i32 100)
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

define i32 @"!squares_next"(%squares*) {

gen_state_restore:                                ; No predecessors!
  %ctx_state = getelementptr inbounds %squares* %0, i32 0, i32 0
  %dest = load i8** %ctx_state
  indirectbr i8* %dest, [label %gen_state_save, label %gen_state_entry, label %gen_exit]

gen_state_save:                                   ; preds = %gen_state_restore
  ret i32 1

gen_state_entry:                                  ; preds = %gen_state_restore
  br label %gen_exit

gen_exit:                                         ; preds = %gen_state_restore, %gen_state_entry
  ret i32 0
}

define void @"!squares_init"(%squares*, i32) {
  %ctx_state = getelementptr inbounds %squares* %0, i32 0, i32 0
  store i8* blockaddress(@"!squares_next", %gen_state_entry), i8** %ctx_state
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
