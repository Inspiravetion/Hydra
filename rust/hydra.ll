; ModuleID = 'hydra'

@global_fmt = private unnamed_addr constant [12 x i8] c"fac(4) = %d\00"

declare i32 @puts(i8*)

declare i32 @sprintf(i8*, i8*, ...)

define i32 @fac(i32) {
entry:
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

define i32 @main() {
entry:
  %facres = call i32 @fac(i32 4)
  %buf = tail call i8* @malloc(i32 mul (i32 ptrtoint (i8* getelementptr (i8* null, i32 1) to i32), i32 20))
  %fmtd = call i32 (i8*, i8*, ...)* @sprintf(i8* %buf, i8* getelementptr inbounds ([12 x i8]* @global_fmt, i32 0, i32 0), i32 %facres)
  %0 = call i32 @puts(i8* %buf)
  ret i32 0
}

declare noalias i8* @malloc(i32)
