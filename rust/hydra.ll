; ModuleID = 'hydra'

%range_gen = type { i8*, i32, i32 }

@global_fmt = private unnamed_addr constant [12 x i8] c"fac(4) = %d\00"
@global_gen_fmt = private unnamed_addr constant [25 x i8] c"generator returned => %d\00"

declare i32 @puts(i8*)

declare i32 @sprintf(i8*, i8*, ...)

define i32 @fac(i32) {

entry:                                            ; No predecessors!
  %cmp_tmp = icmp eq i32 %0, 0
  br i1 %cmp_tmp, label %if_true, label %if_false

if_true:                                          ; preds = %entry
  br label %end

if_false:                                         ; preds = %entry
  %sub_tmp = sub i32 %0, 1
  %fac_tmp = call i32 @fac(i32 %sub_tmp)
  %mul_tmp = mul i32 %0, %fac_tmp
  br label %end

end:                                              ; preds = %if_false, %if_true
  %return = phi i32 [ 1, %if_true ], [ %mul_tmp, %if_false ]
  ret i32 %return
}

define i32 @range_gen_next(%range_gen*) {

entry:                                            ; No predecessors!
  %ctx_state = getelementptr inbounds %range_gen* %0, i32 0, i32 0
  %ctx_index = getelementptr inbounds %range_gen* %0, i32 0, i32 1
  %ctx_end = getelementptr inbounds %range_gen* %0, i32 0, i32 2
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
  store i8* blockaddress(@range_gen_next, %incr), i8** %ctx_state
  ret i32 1

exit:                                             ; preds = %cond
  ret i32 0
}

define void @range_gen_init(%range_gen*, i32, i32) {
  %state = getelementptr inbounds %range_gen* %0, i32 0, i32 0
  %start = getelementptr inbounds %range_gen* %0, i32 0, i32 1
  %end = getelementptr inbounds %range_gen* %0, i32 0, i32 2
  store i8* blockaddress(@range_gen_next, %cond), i8** %state
  store i32 %1, i32* %start
  store i32 %2, i32* %end
  ret void
}

define i32 @main() {

entry:                                            ; No predecessors!
  %facres = call i32 @fac(i32 4)
  %buf = tail call i8* @malloc(i32 mul (i32 ptrtoint (i8* getelementptr (i8* null, i32 1) to i32), i32 20))
  %fmtd = call i32 (i8*, i8*, ...)* @sprintf(i8* %buf, i8* getelementptr inbounds ([12 x i8]* @global_fmt, i32 0, i32 0), i32 %facres)
  %putsres = call i32 @puts(i8* %buf)
  br label %init

init:                                             ; preds = %entry
  %range_generator = alloca %range_gen
  call void @range_gen_init(%range_gen* %range_generator, i32 0, i32 10)
  br label %loop_check

loop_check:                                       ; preds = %loop_stmts, %init
  %done = call i32 @range_gen_next(%range_gen* %range_generator)
  %done_cmp = icmp eq i32 %done, 0
  br i1 %done_cmp, label %exit, label %loop_stmts

loop_stmts:                                       ; preds = %loop_check
  %ctx_ret = getelementptr inbounds %range_gen* %range_generator, i32 0, i32 1
  %gen_ret = load i32* %ctx_ret
  %buf1 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i8* getelementptr (i8* null, i32 1) to i32), i32 20))
  %fmtd2 = call i32 (i8*, i8*, ...)* @sprintf(i8* %buf1, i8* getelementptr inbounds ([25 x i8]* @global_gen_fmt, i32 0, i32 0), i32 %gen_ret)
  %putsres3 = call i32 @puts(i8* %buf1)
  br label %loop_check

exit:                                             ; preds = %loop_check
  ret i32 0
}

declare noalias i8* @malloc(i32)
