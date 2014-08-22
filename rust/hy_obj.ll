; ModuleID = 'hy_obj.rs'
target datalayout = "e-i64:64-f80:128-n8:16:32:64"
target triple = "x86_64-apple-darwin"

%str_slice = type { i8*, i64 }
%"struct.core::intrinsics::TypeId<[]>[#3]" = type { i64 }
%"struct.HyObj<[]>" = type { %"enum.HyObjType<[]>" }
%"enum.HyObjType<[]>" = type { i8, [7 x i8], [3 x i64] }
%"struct.collections::vec::Vec<[HyObj]>[#6]" = type { i64, i64, %"struct.HyObj<[]>"* }
%"struct.core::fmt::Argument<[]>[#3]" = type { %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"enum.core::fmt::Void<[]>[#3]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %"enum.core::fmt::Void<[]>[#3]"* }
%"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" = type { i8, [0 x i8], [1 x i8] }
%"struct.core::fmt::Formatter<[]>[#3]" = type { i64, i32, i8, %"enum.core::option::Option<[uint]>[#3]", %"enum.core::option::Option<[uint]>[#3]", { void (i8*)**, i8* }, %"struct.core::slice::Items<[core::fmt::Argument]>[#3]", { %"struct.core::fmt::Argument<[]>[#3]"*, i64 } }
%"enum.core::option::Option<[uint]>[#3]" = type { i8, [7 x i8], [1 x i64] }
%"struct.core::slice::Items<[core::fmt::Argument]>[#3]" = type { %"struct.core::fmt::Argument<[]>[#3]"*, %"struct.core::fmt::Argument<[]>[#3]"*, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" = type {}
%"enum.core::fmt::Void<[]>[#3]" = type {}
%"struct.core::fmt::Arguments<[]>[#3]" = type { { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 } }
%"enum.core::fmt::rt::Piece<[]>[#3]" = type { i8, [7 x i8], [8 x i64] }
%"struct.core::slice::Items<[HyObj]>[#3]" = type { %"struct.HyObj<[]>"*, %"struct.HyObj<[]>"*, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::raw::Slice<[HyObj]>[#3]" = type { %"struct.HyObj<[]>"*, i64 }
%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" = type { i8*, i64 }
%"struct.rustrt::c_str::CString<[]>[#9]" = type { i8*, i8, i8 }
%"struct.collections::string::String<[]>[#6]" = type { %"struct.collections::vec::Vec<[u8]>[#6]" }
%"struct.collections::vec::Vec<[u8]>[#6]" = type { i64, i64, i8* }
%"struct.core::raw::Slice<[u8]>[#3]" = type { i8*, i64 }
%"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]" = type { i64, void (i32, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*)*, [6 x i64] }
%"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]" = type {}
%"struct.core::slice::Items<[u8]>[#3]" = type { i8*, i8*, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::iter::Range<[uint]>[#3]" = type { i64, i64, i64 }
%"struct.core::raw::Slice<[i8]>[#3]" = type { i8*, i64 }
%"enum.core::option::Option<[HyObj]>[#3]" = type { i8, [7 x i8], [4 x i64] }
%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]" = type { %"struct.collections::string::String<[]>[#6]", %"struct.HyObj<[]>", i8*, i8*, i64 }
%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" = type { i8* }

@str1698 = internal constant [1 x i8] c"["
@_ZN5HyObj12hy_obj_print15__STATIC_FMTSTR20h0fc0c915176d182cfbaE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([1 x i8]* @str1698, i32 0, i32 0), i64 1 }, [48 x i8] undef } }
@str1794 = internal constant [1 x i8] c"]"
@_ZN5HyObj12hy_obj_print15__STATIC_FMTSTR20h0fc0c915176d182cZbaE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([1 x i8]* @str1794, i32 0, i32 0), i64 1 }, [48 x i8] undef } }
@_ZN4heap5EMPTY20hbfe5b9a4d3c56c6f8baE = available_externally global i64 12345
@vtable1865 = internal constant { void (i8**)*, %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* } { void (i8**)* @"_ZN13Box$LT$i8$GT$14glue_drop.184417h568b5b2abf1d4f69E", %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* @_ZN3any12T.AnyPrivate11get_type_id19h412221583067097080E }
@str1866 = internal constant [46 x i8] c"Called print on an object that is not an Array"
@str1867 = internal constant [52 x i8] c"src/lib/lib_hy_obj_types/lib/lib_hy_obj/src/HyObj.rs"
@_ZN5HyObj12hy_obj_print10_FILE_LINE20h8f97236c5e74de36xcaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 41 }
@_ZN9to_string10T.ToString9to_string15__STATIC_FMTSTR20h8b23f08f60bcdf37dfeE = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1895 = internal constant [10 x i8] c"Array : []"
@str1947 = internal constant [8 x i8] c"Map : {}"
@str1948 = internal constant [11 x i8] c"bool : true"
@str1949 = internal constant [12 x i8] c"bool : false"
@_ZN3vec10PTR_MARKER20hd0730fd7e79c68f4HgiE = available_externally constant i8 0
@str1986 = internal constant [40 x i8] c"Vec::reserve_additional: `uint` overflow"
@"_ZN3vec12Vec$LT$T$GT$18reserve_additional15__STATIC_FMTSTR20hc4afdecb9c205274fyiE" = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1988 = internal constant [84 x i8] c"/Users/rustbuild/src/rust-buildbot/slave/nightly-mac/build/src/libcollections/vec.rs"
@"_ZN3vec12Vec$LT$T$GT$18reserve_additional8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dQxiE" = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([84 x i8]* @str1988, i32 0, i32 0), i64 84 }, i64 585 }
@"_ZN6option15Option$LT$T$GT$6expect15__STATIC_FMTSTR20h79b308b23b8faec4humE" = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str2011 = internal constant [80 x i8] c"/Users/rustbuild/src/rust-buildbot/slave/nightly-mac/build/src/libcore/option.rs"
@"_ZN6option15Option$LT$T$GT$6expect8_run_fmt10_FILE_LINE20h9519b9138055b1fdStmE" = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([80 x i8]* @str2011, i32 0, i32 0), i64 80 }, i64 243 }
@str2015 = internal constant [17 x i8] c"capacity overflow"
@str2184 = internal constant [48 x i8] c"called `Option::take_unwrap()` on a `None` value"
@"_ZN6option15Option$LT$T$GT$11take_unwrap15__STATIC_FMTSTR20h79b308b23b8faec4KDmE" = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt10_FILE_LINE20h9519b9138055b1fdlDmE" = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([80 x i8]* @str2011, i32 0, i32 0), i64 80 }, i64 440 }
@str2200 = internal constant [26 x i8] c"Maps only take string keys"
@_ZN5HyObj13hy_map_insert10_FILE_LINE20h8f97236c5e74de36QfaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 134 }
@str2201 = internal constant [51 x i8] c"Called hy_map_insert on an object that is not a Map"
@_ZN5HyObj13hy_map_insert10_FILE_LINE20h8f97236c5e74de36agaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 137 }
@str2229 = internal constant [16 x i8] c"explicit failure"
@_ZN7treemap6remove15__STATIC_FMTSTR20hc4afdecb9c2052741zfE = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str2231 = internal constant [88 x i8] c"/Users/rustbuild/src/rust-buildbot/slave/nightly-mac/build/src/libcollections/treemap.rs"
@_ZN7treemap6remove8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dCzfE = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([88 x i8]* @str2231, i32 0, i32 0), i64 88 }, i64 1619 }
@_ZN5HyObj13hy_map_delete10_FILE_LINE20h8f97236c5e74de36YgaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 149 }
@str2232 = internal constant [51 x i8] c"Called hy_map_delete on an object that is not a Map"
@_ZN5HyObj13hy_map_delete10_FILE_LINE20h8f97236c5e74de36ihaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 152 }
@str2244 = internal constant [53 x i8] c"Called hy_map_contains on an object that is not a Map"
@_ZN5HyObj15hy_map_contains10_FILE_LINE20h8f97236c5e74de36aiaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 167 }

; Function Attrs: uwtable
define void @hy_obj_print(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.HyObj<[]>"*
  %vec = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  %match = alloca {}
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %1 = alloca %"struct.core::fmt::Argument<[]>[#3]", i64 0
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust3 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %2 = alloca %"struct.core::slice::Items<[HyObj]>[#3]"
  %for_head = alloca %"struct.core::slice::Items<[HyObj]>[#3]"*
  %loop_option = alloca i8*
  %match4 = alloca {}
  %__args_vec6 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %3 = alloca %"struct.core::fmt::Argument<[]>[#3]", i64 0
  %__args7 = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust8 = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust9 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %4 = alloca %str_slice
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %self
  %5 = load %"struct.HyObj<[]>"** %self
  %6 = getelementptr inbounds %"struct.HyObj<[]>"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"enum.HyObjType<[]>"* %6, i32 0, i32 0
  %8 = load i8* %7, !range !0
  switch i8 %8, label %match_else [
    i8 4, label %match_case
  ]

case_body:                                        ; preds = %match_case
  br label %case_body2

case_body1:                                       ; preds = %match_else
  %9 = getelementptr inbounds %str_slice* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([46 x i8]* @str1866, i32 0, i32 0), i8** %9
  %10 = getelementptr inbounds %str_slice* %4, i32 0, i32 1
  store i64 46, i64* %10
  call void @_ZN6unwind12begin_unwind21h15233954449314110570E(%str_slice* noalias nocapture dereferenceable(16) %4, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj12hy_obj_print10_FILE_LINE20h8f97236c5e74de36xcaE)
  unreachable

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %11 = bitcast %"enum.HyObjType<[]>"* %6 to { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }*
  %12 = getelementptr inbounds { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }* %11, i32 0, i32 1
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %12, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %vec
  br label %case_body

case_body2:                                       ; preds = %case_body
  %13 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %1, %"struct.core::fmt::Argument<[]>[#3]"** %13
  %14 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 0, i64* %14
  %15 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, %str_slice, [48 x i8] } }* @_ZN5HyObj12hy_obj_print15__STATIC_FMTSTR20h0fc0c915176d182cfbaE to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %15
  %16 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %16
  %17 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %18 = load %"struct.core::fmt::Argument<[]>[#3]"** %17
  %19 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %20 = load i64* %19
  %21 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust3, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %18, %"struct.core::fmt::Argument<[]>[#3]"** %21
  %22 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust3, i32 0, i32 1
  store i64 %20, i64* %22
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h246676d58674b75eEiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust3)
  call void @_ZN2io5stdio10print_args20ha2ad804cfb78f72eyumE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args)
  br label %join

join:                                             ; preds = %case_body2
  %23 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %vec
  call void @"_ZN3vec12Vec$LT$T$GT$4iter21h15788381842056418102E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24) %23)
  store %"struct.core::slice::Items<[HyObj]>[#3]"* %2, %"struct.core::slice::Items<[HyObj]>[#3]"** %for_head
  %24 = load %"struct.core::slice::Items<[HyObj]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  br label %case_body5

for_loopback:                                     ; preds = %for_body, %join
  %25 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6807504957671280723E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias dereferenceable(16) %24)
  store i8* %25, i8** %loop_option
  %26 = load i8** %loop_option
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i8
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %30 = bitcast i8** %loop_option to %"struct.HyObj<[]>"**
  %31 = load %"struct.HyObj<[]>"** %30
  call void @hy_obj_print(%"struct.HyObj<[]>"* noalias dereferenceable(32) %31)
  br label %for_loopback

case_body5:                                       ; preds = %for_exit
  %32 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec6, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %3, %"struct.core::fmt::Argument<[]>[#3]"** %32
  %33 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec6, i32 0, i32 1
  store i64 0, i64* %33
  %34 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust8, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, %str_slice, [48 x i8] } }* @_ZN5HyObj12hy_obj_print15__STATIC_FMTSTR20h0fc0c915176d182cZbaE to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %34
  %35 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust8, i32 0, i32 1
  store i64 1, i64* %35
  %36 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec6, i32 0, i32 0
  %37 = load %"struct.core::fmt::Argument<[]>[#3]"** %36
  %38 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec6, i32 0, i32 1
  %39 = load i64* %38
  %40 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust9, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %37, %"struct.core::fmt::Argument<[]>[#3]"** %40
  %41 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust9, i32 0, i32 1
  store i64 %39, i64* %41
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h246676d58674b75eEiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args7, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust8, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust9)
  call void @_ZN2io5stdio10print_args20ha2ad804cfb78f72eyumE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args7)
  br label %join10

join10:                                           ; preds = %case_body5
  br label %join11

join11:                                           ; preds = %join10
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h246676d58674b75eEiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32), { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16), { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %__adjust = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %3 = getelementptr inbounds %"struct.core::fmt::Arguments<[]>[#3]"* %0, i32 0, i32 0
  %4 = bitcast { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %1 to i8*
  %5 = bitcast { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 16, i32 8, i1 false)
  %6 = getelementptr inbounds %"struct.core::fmt::Arguments<[]>[#3]"* %0, i32 0, i32 1
  %7 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %2, i32 0, i32 0
  %8 = load %"struct.core::fmt::Argument<[]>[#3]"** %7
  %9 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %2, i32 0, i32 1
  %10 = load i64* %9
  %11 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %8, %"struct.core::fmt::Argument<[]>[#3]"** %11
  %12 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 %10, i64* %12
  %13 = bitcast { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust to i8*
  %14 = bitcast { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %13, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) unnamed_addr #2

declare void @_ZN2io5stdio10print_args20ha2ad804cfb78f72eyumE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32)) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$4iter21h15788381842056418102E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  %2 = alloca { %"struct.HyObj<[]>"*, i64 }
  %__adjust = alloca { %"struct.HyObj<[]>"*, i64 }
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %1, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %3 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice20h6807255931200787184E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24) %3)
  %4 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %2, i32 0, i32 0
  %5 = load %"struct.HyObj<[]>"** %4
  %6 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %2, i32 0, i32 1
  %7 = load i64* %6
  %8 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %__adjust, i32 0, i32 0
  store %"struct.HyObj<[]>"* %5, %"struct.HyObj<[]>"** %8
  %9 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %__adjust, i32 0, i32 1
  store i64 %7, i64* %9
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h16388945406815431093E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h16388945406815431093E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %p = alloca %"struct.HyObj<[]>"*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = call %"struct.HyObj<[]>"* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr20h1004965169371309875E"({ %"struct.HyObj<[]>"*, i64 }* noalias dereferenceable(16) %1)
  store %"struct.HyObj<[]>"* %5, %"struct.HyObj<[]>"** %p
  %6 = call i64 @_ZN3mem7size_of21h12513579423787918067E()
  store i64 %6, i64* %2
  %7 = load i64* %2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %then-block-605-, label %else-block

then-block-605-:                                  ; preds = %entry-block
  %9 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %0, i32 0, i32 0
  %10 = load %"struct.HyObj<[]>"** %p
  store %"struct.HyObj<[]>"* %10, %"struct.HyObj<[]>"** %9
  %11 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %0, i32 0, i32 1
  %12 = load %"struct.HyObj<[]>"** %p
  %13 = ptrtoint %"struct.HyObj<[]>"* %12 to i64
  %14 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h15466152180770650110E"({ %"struct.HyObj<[]>"*, i64 }* noalias dereferenceable(16) %1)
  store i64 %14, i64* %3
  %15 = load i64* %3
  %16 = add i64 %13, %15
  %17 = inttoptr i64 %16 to %"struct.HyObj<[]>"*
  store %"struct.HyObj<[]>"* %17, %"struct.HyObj<[]>"** %11
  %18 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %0, i32 0, i32 2
  br label %join

else-block:                                       ; preds = %entry-block
  %19 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %0, i32 0, i32 0
  %20 = load %"struct.HyObj<[]>"** %p
  store %"struct.HyObj<[]>"* %20, %"struct.HyObj<[]>"** %19
  %21 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %0, i32 0, i32 1
  %22 = load %"struct.HyObj<[]>"** %p
  %23 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h15466152180770650110E"({ %"struct.HyObj<[]>"*, i64 }* noalias dereferenceable(16) %1)
  store i64 %23, i64* %4
  %24 = load i64* %4
  %25 = call %"struct.HyObj<[]>"* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h13615138509020099317E"(%"struct.HyObj<[]>"* %22, i64 %24)
  store %"struct.HyObj<[]>"* %25, %"struct.HyObj<[]>"** %21
  %26 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %0, i32 0, i32 2
  br label %join

join:                                             ; preds = %else-block, %then-block-605-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal %"struct.HyObj<[]>"* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr20h1004965169371309875E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { %"struct.HyObj<[]>"*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"
  store { %"struct.HyObj<[]>"*, i64 }* %0, { %"struct.HyObj<[]>"*, i64 }** %self
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %self
  call void @_ZN3raw4Repr4repr20h7813852777153381177E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { %"struct.HyObj<[]>"*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %1, i32 0, i32 0
  %4 = load %"struct.HyObj<[]>"** %3
  ret %"struct.HyObj<[]>"* %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr20h7813852777153381177E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { %"struct.HyObj<[]>"*, i64 }*
  store { %"struct.HyObj<[]>"*, i64 }* %1, { %"struct.HyObj<[]>"*, i64 }** %self
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h2139417426412540987E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h2139417426412540987E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"
  %src = alloca { %"struct.HyObj<[]>"*, i64 }*
  store { %"struct.HyObj<[]>"*, i64 }* %1, { %"struct.HyObj<[]>"*, i64 }** %src
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %src
  %3 = bitcast { %"struct.HyObj<[]>"*, i64 }* %2 to %"struct.core::raw::Slice<[HyObj]>[#3]"*
  store %"struct.core::raw::Slice<[HyObj]>[#3]"* %3, %"struct.core::raw::Slice<[HyObj]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h11675039949035564965E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[HyObj]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[HyObj]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[HyObj]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[HyObj]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized21h11675039949035564965E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #1 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of21h12513579423787918067E() unnamed_addr #1 {
entry-block:
  ret i64 32
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len21h15466152180770650110E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { %"struct.HyObj<[]>"*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"
  store { %"struct.HyObj<[]>"*, i64 }* %0, { %"struct.HyObj<[]>"*, i64 }** %self
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %self
  call void @_ZN3raw4Repr4repr20h3257730064732853015E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { %"struct.HyObj<[]>"*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %1, i32 0, i32 1
  %4 = load i64* %3
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr20h3257730064732853015E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { %"struct.HyObj<[]>"*, i64 }*
  store { %"struct.HyObj<[]>"*, i64 }* %1, { %"struct.HyObj<[]>"*, i64 }** %self
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %self
  call void @_ZN3mem14transmute_copy21h15707268503695196579E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy21h15707268503695196579E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"
  %src = alloca { %"struct.HyObj<[]>"*, i64 }*
  store { %"struct.HyObj<[]>"*, i64 }* %1, { %"struct.HyObj<[]>"*, i64 }** %src
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %src
  %3 = bitcast { %"struct.HyObj<[]>"*, i64 }* %2 to %"struct.core::raw::Slice<[HyObj]>[#3]"*
  store %"struct.core::raw::Slice<[HyObj]>[#3]"* %3, %"struct.core::raw::Slice<[HyObj]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h11675039949035564965E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[HyObj]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[HyObj]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[HyObj]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[HyObj]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal %"struct.HyObj<[]>"* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h13615138509020099317E"(%"struct.HyObj<[]>"*, i64) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.HyObj<[]>"*
  %count = alloca i64
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %self
  store i64 %1, i64* %count
  %2 = load %"struct.HyObj<[]>"** %self
  %3 = load i64* %count
  %4 = getelementptr inbounds %"struct.HyObj<[]>"* %2, i64 %3
  ret %"struct.HyObj<[]>"* %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice20h6807255931200787184E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %1, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %2 = bitcast { %"struct.HyObj<[]>"*, i64 }* %0 to %"struct.core::raw::Slice<[HyObj]>[#3]"*
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %5 = call %"struct.HyObj<[]>"* @"_ZN3vec12Vec$LT$T$GT$6as_ptr20h5751853263060376065E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24) %4)
  store %"struct.HyObj<[]>"* %5, %"struct.HyObj<[]>"** %3
  %6 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %2, i32 0, i32 1
  %7 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %8 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %7, i32 0, i32 0
  %9 = load i64* %8
  store i64 %9, i64* %6
  ret void
}

; Function Attrs: inlinehint uwtable
define internal %"struct.HyObj<[]>"* @"_ZN3vec12Vec$LT$T$GT$6as_ptr20h5751853263060376065E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %1, i32 0, i32 2
  %3 = load %"struct.HyObj<[]>"** %2
  ret %"struct.HyObj<[]>"* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6807504957671280723E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca %"struct.core::slice::Items<[HyObj]>[#3]"*
  %1 = alloca i64
  %old = alloca %"struct.HyObj<[]>"*
  store %"struct.core::slice::Items<[HyObj]>[#3]"* %0, %"struct.core::slice::Items<[HyObj]>[#3]"** %self
  %2 = load %"struct.core::slice::Items<[HyObj]>[#3]"** %self
  %3 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.core::slice::Items<[HyObj]>[#3]"** %self
  %5 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %4, i32 0, i32 1
  %6 = load %"struct.HyObj<[]>"** %3
  %7 = load %"struct.HyObj<[]>"** %5
  %8 = icmp eq %"struct.HyObj<[]>"* %6, %7
  br i1 %8, label %then-block-856-, label %else-block

then-block-856-:                                  ; preds = %entry-block
  store i8* null, i8** %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %9 = call i64 @_ZN3mem7size_of21h12513579423787918067E()
  store i64 %9, i64* %1
  %10 = load i64* %1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then-block-867-, label %else-block1

then-block-867-:                                  ; preds = %else-block
  %12 = load %"struct.core::slice::Items<[HyObj]>[#3]"** %self
  %13 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %12, i32 0, i32 0
  %14 = bitcast %"struct.HyObj<[]>"** %13 to i64*
  %15 = load %"struct.core::slice::Items<[HyObj]>[#3]"** %self
  %16 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %15, i32 0, i32 0
  %17 = load %"struct.HyObj<[]>"** %16
  %18 = ptrtoint %"struct.HyObj<[]>"* %17 to i64
  %19 = add i64 %18, 1
  store i64 %19, i64* %14
  %20 = bitcast i8** %sret_slot to %"struct.HyObj<[]>"**
  %21 = bitcast %"struct.HyObj<[]>"** %20 to i64*
  store i64 1, i64* %21
  br label %join

else-block1:                                      ; preds = %else-block
  %22 = load %"struct.core::slice::Items<[HyObj]>[#3]"** %self
  %23 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %22, i32 0, i32 0
  %24 = load %"struct.HyObj<[]>"** %23
  store %"struct.HyObj<[]>"* %24, %"struct.HyObj<[]>"** %old
  %25 = load %"struct.core::slice::Items<[HyObj]>[#3]"** %self
  %26 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %25, i32 0, i32 0
  %27 = load %"struct.core::slice::Items<[HyObj]>[#3]"** %self
  %28 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %27, i32 0, i32 0
  %29 = load %"struct.HyObj<[]>"** %28
  %30 = call %"struct.HyObj<[]>"* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h13615138509020099317E"(%"struct.HyObj<[]>"* %29, i64 1)
  store %"struct.HyObj<[]>"* %30, %"struct.HyObj<[]>"** %26
  %31 = bitcast i8** %sret_slot to %"struct.HyObj<[]>"**
  %32 = load %"struct.HyObj<[]>"** %old
  store %"struct.HyObj<[]>"* %32, %"struct.HyObj<[]>"** %31
  br label %join

join:                                             ; preds = %else-block1, %then-block-867-
  br label %join2

join2:                                            ; preds = %join, %then-block-856-
  %33 = load i8** %sret_slot
  ret i8* %33
}

; Function Attrs: cold noinline noreturn uwtable
define internal void @_ZN6unwind12begin_unwind21h15233954449314110570E(%str_slice* noalias nocapture dereferenceable(16), { %str_slice, i64 }* noalias nocapture dereferenceable(24)) unnamed_addr #4 {
entry-block:
  %file_line = alloca { %str_slice, i64 }*
  %__adjust = alloca { void (i8*)**, i8* }
  store { %str_slice, i64 }* %1, { %str_slice, i64 }** %file_line
  %2 = call i8* @_ZN4heap15exchange_malloc20h216b81810816ba88epaE(i64 16, i64 8)
  %3 = bitcast i8* %2 to %str_slice*
  %4 = bitcast %str_slice* %0 to i8*
  %5 = bitcast %str_slice* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 16, i32 8, i1 false)
  %6 = getelementptr inbounds { void (i8*)**, i8* }* %__adjust, i32 0, i32 1
  %7 = bitcast i8** %6 to %str_slice**
  store %str_slice* %3, %str_slice** %7
  %8 = getelementptr inbounds { void (i8*)**, i8* }* %__adjust, i32 0, i32 0
  %9 = bitcast void (i8*)*** %8 to { void (i8**)*, %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* }**
  store { void (i8**)*, %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* }* @vtable1865, { void (i8**)*, %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* }** %9
  %10 = load { %str_slice, i64 }** %file_line
  call void @_ZN6unwind18begin_unwind_inner20h7c6fecebc6991c8bS5dE({ void (i8*)**, i8* }* noalias nocapture dereferenceable(16) %__adjust, { %str_slice, i64 }* noalias nocapture dereferenceable(24) %10)
  unreachable
}

; Function Attrs: cold noinline noreturn
declare void @_ZN6unwind18begin_unwind_inner20h7c6fecebc6991c8bS5dE({ void (i8*)**, i8* }* noalias nocapture dereferenceable(16), { %str_slice, i64 }* noalias nocapture dereferenceable(24)) unnamed_addr #5

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap15exchange_malloc20h216b81810816ba88epaE(i64, i64) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %size = alloca i64
  %align = alloca i64
  store i64 %0, i64* %size
  store i64 %1, i64* %align
  %2 = load i64* %size
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %then-block-951-, label %else-block

then-block-951-:                                  ; preds = %entry-block
  store i8* bitcast (i64* @_ZN4heap5EMPTY20hbfe5b9a4d3c56c6f8baE to i8*), i8** %sret_slot
  br label %join

else-block:                                       ; preds = %entry-block
  %4 = load i64* %size
  %5 = load i64* %align
  %6 = call i8* @_ZN4heap8allocate20he3ef321902262926SpaE(i64 %4, i64 %5)
  store i8* %6, i8** %sret_slot
  br label %join

join:                                             ; preds = %else-block, %then-block-951-
  %7 = load i8** %sret_slot
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap8allocate20he3ef321902262926SpaE(i64, i64) unnamed_addr #1 {
entry-block:
  %size = alloca i64
  %align = alloca i64
  store i64 %0, i64* %size
  store i64 %1, i64* %align
  %2 = load i64* %size
  %3 = load i64* %align
  %4 = call i8* @_ZN4heap3imp8allocate20hc4599a3f67b9880caqaE(i64 %2, i64 %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap3imp8allocate20hc4599a3f67b9880caqaE(i64, i64) unnamed_addr #1 {
entry-block:
  %a.i = alloca i64
  %2 = alloca i64
  %size = alloca i64
  %align = alloca i64
  %ptr = alloca i8*
  %3 = alloca i8*
  %4 = alloca i32
  %__arg = alloca i64
  %__arg1 = alloca i32
  %5 = alloca i8
  store i64 %0, i64* %size
  store i64 %1, i64* %align
  %6 = load i64* %size
  %7 = load i64* %align
  store i64 %7, i64* %a.i
  %8 = load i64* %a.i
  %9 = call i64 @_ZN3num8uint.Int14trailing_zeros20h80f523bde38482171qaE(i64 %8)
  store i64 %9, i64* %2
  %10 = load i64* %2
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4
  %12 = load i32* %4
  store i64 %6, i64* %__arg
  %13 = load i64* %__arg
  store i32 %12, i32* %__arg1
  %14 = load i32* %__arg1
  %15 = call i8* @je_mallocx(i64 %13, i32 %14)
  store i8* %15, i8** %3
  %16 = load i8** %3
  store i8* %16, i8** %ptr
  %17 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h3159666164353188193E"(i8** noalias dereferenceable(8) %ptr)
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %5
  %19 = load i8* %5, !range !1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %then-block-1026-, label %next-block

then-block-1026-:                                 ; preds = %entry-block
  call void @_ZN3oom20h70228b11624052eclRaE()
  unreachable

next-block:                                       ; preds = %entry-block
  %21 = load i8** %ptr
  ret i8* %21
}

declare i8* @je_mallocx(i64, i32) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num8uint.Int14trailing_zeros20h80f523bde38482171qaE(i64) unnamed_addr #1 {
entry-block:
  %self = alloca i64
  %1 = alloca i64
  store i64 %0, i64* %self
  %2 = load i64* %self
  %3 = call i64 @_ZN3num7u64.Int14trailing_zeros20h3c079a3cac62e31biraE(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64* %1
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num7u64.Int14trailing_zeros20h3c079a3cac62e31biraE(i64) unnamed_addr #1 {
entry-block:
  %self = alloca i64
  store i64 %0, i64* %self
  %1 = load i64* %self
  %2 = call i64 @llvm.cttz.i64(i64 %1, i1 false)
  ret i64 %2
}

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) unnamed_addr #6

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h3159666164353188193E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  %3 = call i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h13857609569963049957E"()
  store i8* %3, i8** %1
  %4 = load i8** %1
  %5 = load i8** %2
  %6 = icmp eq i8* %5, %4
  %7 = zext i1 %6 to i8
  %8 = trunc i8 %7 to i1
  ret i1 %8
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h13857609569963049957E"() unnamed_addr #1 {
entry-block:
  %0 = call i8* @_ZN3ptr8mut_null21h10410956959066002318E()
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3ptr8mut_null21h10410956959066002318E() unnamed_addr #1 {
entry-block:
  ret i8* null
}

; Function Attrs: noreturn
declare void @_ZN3oom20h70228b11624052eclRaE() unnamed_addr #7

define internal void @"_ZN13Box$LT$i8$GT$14glue_drop.184417h568b5b2abf1d4f69E"(i8**) unnamed_addr #3 {
entry-block:
  %1 = load i8** %0
  %2 = icmp ne i8* %1, null
  br i1 %2, label %cond, label %next

next:                                             ; preds = %cond, %entry-block
  ret void

cond:                                             ; preds = %entry-block
  call void @_ZN4heap13exchange_free20h0bc72fdf58e19b8easaE(i8* %1, i64 1, i64 1)
  br label %next
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap13exchange_free20h0bc72fdf58e19b8easaE(i8*, i64, i64) unnamed_addr #1 {
entry-block:
  %ptr = alloca i8*
  %size = alloca i64
  %align = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %size
  store i64 %2, i64* %align
  %3 = load i8** %ptr
  %4 = load i64* %size
  %5 = load i64* %align
  call void @_ZN4heap10deallocate20h0ea571fa8dfc4d0cxsaE(i8* %3, i64 %4, i64 %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap10deallocate20h0ea571fa8dfc4d0cxsaE(i8*, i64, i64) unnamed_addr #1 {
entry-block:
  %ptr = alloca i8*
  %size = alloca i64
  %align = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %size
  store i64 %2, i64* %align
  %3 = load i8** %ptr
  %4 = load i64* %size
  %5 = load i64* %align
  call void @_ZN4heap3imp10deallocate20h7f3282dfc03c2f88TsaE(i8* %3, i64 %4, i64 %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap3imp10deallocate20h7f3282dfc03c2f88TsaE(i8*, i64, i64) unnamed_addr #1 {
entry-block:
  %a.i = alloca i64
  %3 = alloca i64
  %ptr = alloca i8*
  %_size = alloca i64
  %align = alloca i64
  %4 = alloca i32
  %__arg = alloca i8*
  %__arg1 = alloca i32
  store i8* %0, i8** %ptr
  store i64 %1, i64* %_size
  store i64 %2, i64* %align
  %5 = load i8** %ptr
  %6 = load i64* %align
  store i64 %6, i64* %a.i
  %7 = load i64* %a.i
  %8 = call i64 @_ZN3num8uint.Int14trailing_zeros20h80f523bde38482171qaE(i64 %7)
  store i64 %8, i64* %3
  %9 = load i64* %3
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4
  %11 = load i32* %4
  store i8* %5, i8** %__arg
  %12 = load i8** %__arg
  store i32 %11, i32* %__arg1
  %13 = load i32* %__arg1
  call void @je_dallocx(i8* %12, i32 %13)
  ret void
}

declare void @je_dallocx(i8*, i32) unnamed_addr #3

; Function Attrs: uwtable
define internal %"struct.core::intrinsics::TypeId<[]>[#3]" @_ZN3any12T.AnyPrivate11get_type_id19h412221583067097080E(%str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %self = alloca %str_slice*
  store %str_slice* %0, %str_slice** %self
  %1 = call %"struct.core::intrinsics::TypeId<[]>[#3]" @_ZN10intrinsics6TypeId2of20h2500670203131441741E()
  ret %"struct.core::intrinsics::TypeId<[]>[#3]" %1
}

; Function Attrs: uwtable
define internal %"struct.core::intrinsics::TypeId<[]>[#3]" @_ZN10intrinsics6TypeId2of20h2500670203131441741E() unnamed_addr #0 {
entry-block:
  ret %"struct.core::intrinsics::TypeId<[]>[#3]" { i64 8802261786977977801 }
}

; Function Attrs: uwtable
define i8* @hy_obj_to_str(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca %"struct.HyObj<[]>"*
  %vec = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  %map = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %b = alloca i8*
  %1 = alloca %"struct.rustrt::c_str::CString<[]>[#9]"
  %2 = alloca %"struct.collections::string::String<[]>[#6]"
  %3 = alloca %str_slice
  %4 = alloca { i8*, i32 }
  %5 = alloca %"struct.rustrt::c_str::CString<[]>[#9]"
  %6 = alloca %"struct.collections::string::String<[]>[#6]"
  %7 = alloca %str_slice
  %8 = alloca %"struct.rustrt::c_str::CString<[]>[#9]"
  %9 = alloca %"struct.collections::string::String<[]>[#6]"
  %10 = alloca %str_slice
  %11 = alloca %"struct.rustrt::c_str::CString<[]>[#9]"
  %12 = alloca %"struct.collections::string::String<[]>[#6]"
  %13 = alloca %str_slice
  %14 = alloca %"struct.rustrt::c_str::CString<[]>[#9]"
  %15 = alloca %"struct.collections::string::String<[]>[#6]"
  %16 = alloca %str_slice
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %self
  %17 = load %"struct.HyObj<[]>"** %self
  %18 = getelementptr inbounds %"struct.HyObj<[]>"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"enum.HyObjType<[]>"* %18, i32 0, i32 0
  %20 = load i8* %19, !range !0
  switch i8 %20, label %match_else [
    i8 4, label %match_case
    i8 0, label %match_case4
    i8 5, label %match_case5
  ]

case_body:                                        ; preds = %match_case
  %21 = getelementptr inbounds %str_slice* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8]* @str1895, i32 0, i32 0), i8** %21
  %22 = getelementptr inbounds %str_slice* %3, i32 0, i32 1
  store i64 10, i64* %22
  call void @_ZN9to_string10T.ToString9to_string21h17596842287145981703E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %2, %str_slice* noalias dereferenceable(16) %3)
  invoke void @_ZN5c_str13String.ToCStr8to_c_str20h813878b29bab9491NtaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %1, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %2)
          to label %normal-return unwind label %unwind_ast_176_

case_body1:                                       ; preds = %match_case4
  %23 = getelementptr inbounds %str_slice* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8]* @str1947, i32 0, i32 0), i8** %23
  %24 = getelementptr inbounds %str_slice* %7, i32 0, i32 1
  store i64 8, i64* %24
  call void @_ZN9to_string10T.ToString9to_string21h17596842287145981703E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %6, %str_slice* noalias dereferenceable(16) %7)
  invoke void @_ZN5c_str13String.ToCStr8to_c_str20h813878b29bab9491NtaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %5, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %6)
          to label %normal-return8 unwind label %unwind_ast_186_

case_body2:                                       ; preds = %match_case5
  %25 = load i8** %b
  %26 = load i8* %25, !range !1
  %27 = trunc i8 %26 to i1
  br i1 %27, label %then-block-201-, label %else-block

case_body3:                                       ; preds = %match_else
  %28 = getelementptr inbounds %str_slice* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([46 x i8]* @str1866, i32 0, i32 0), i8** %28
  %29 = getelementptr inbounds %str_slice* %16, i32 0, i32 1
  store i64 46, i64* %29
  call void @_ZN9to_string10T.ToString9to_string21h17596842287145981703E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %15, %str_slice* noalias dereferenceable(16) %16)
  invoke void @_ZN5c_str13String.ToCStr8to_c_str20h813878b29bab9491NtaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %14, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %15)
          to label %normal-return16 unwind label %unwind_ast_217_

match_else:                                       ; preds = %entry-block
  br label %case_body3

match_case:                                       ; preds = %entry-block
  %30 = bitcast %"enum.HyObjType<[]>"* %18 to { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }*
  %31 = getelementptr inbounds { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }* %30, i32 0, i32 1
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %31, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %vec
  br label %case_body

match_case4:                                      ; preds = %entry-block
  %32 = bitcast %"enum.HyObjType<[]>"* %18 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }*
  %33 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }* %32, i32 0, i32 1
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %33, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %map
  br label %case_body1

match_case5:                                      ; preds = %entry-block
  %34 = bitcast %"enum.HyObjType<[]>"* %18 to { i8, i8 }*
  %35 = getelementptr inbounds { i8, i8 }* %34, i32 0, i32 1
  store i8* %35, i8** %b
  br label %case_body2

normal-return:                                    ; preds = %case_body
  %36 = invoke i8* @_ZN5c_str7CString6unwrap20h438c841e01f73389b4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16) %1)
          to label %normal-return7 unwind label %unwind_ast_176_

unwind_ast_176_:                                  ; preds = %normal-return, %case_body
  %37 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %37, { i8*, i32 }* %4
  br label %clean_ast_176_

resume:                                           ; preds = %clean_custom_
  %38 = load { i8*, i32 }* %4
  resume { i8*, i32 } %38

clean_custom_:                                    ; preds = %clean_ast_217_, %clean_custom_12, %clean_custom_9, %clean_custom_6
  br label %resume

clean_custom_6:                                   ; preds = %clean_ast_176_
  br label %clean_custom_

clean_ast_176_:                                   ; preds = %unwind_ast_176_
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %2)
  br label %clean_custom_6

normal-return7:                                   ; preds = %normal-return
  store i8* %36, i8** %sret_slot
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %2)
  br label %join18

normal-return8:                                   ; preds = %case_body1
  %39 = invoke i8* @_ZN5c_str7CString6unwrap20h438c841e01f73389b4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16) %5)
          to label %normal-return10 unwind label %unwind_ast_186_

unwind_ast_186_:                                  ; preds = %normal-return8, %case_body1
  %40 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %40, { i8*, i32 }* %4
  br label %clean_ast_186_

clean_custom_9:                                   ; preds = %clean_ast_186_
  br label %clean_custom_

clean_ast_186_:                                   ; preds = %unwind_ast_186_
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %6)
  br label %clean_custom_9

normal-return10:                                  ; preds = %normal-return8
  store i8* %39, i8** %sret_slot
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %6)
  br label %join18

then-block-201-:                                  ; preds = %case_body2
  %41 = getelementptr inbounds %str_slice* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8]* @str1948, i32 0, i32 0), i8** %41
  %42 = getelementptr inbounds %str_slice* %10, i32 0, i32 1
  store i64 11, i64* %42
  call void @_ZN9to_string10T.ToString9to_string21h17596842287145981703E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %9, %str_slice* noalias dereferenceable(16) %10)
  invoke void @_ZN5c_str13String.ToCStr8to_c_str20h813878b29bab9491NtaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %8, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %9)
          to label %normal-return11 unwind label %unwind_ast_201_

normal-return11:                                  ; preds = %then-block-201-
  %43 = invoke i8* @_ZN5c_str7CString6unwrap20h438c841e01f73389b4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16) %8)
          to label %normal-return13 unwind label %unwind_ast_201_

unwind_ast_201_:                                  ; preds = %normal-return11, %then-block-201-
  %44 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %44, { i8*, i32 }* %4
  br label %clean_ast_201_

clean_custom_12:                                  ; preds = %clean_ast_208_, %clean_ast_201_
  br label %clean_custom_

clean_ast_201_:                                   ; preds = %unwind_ast_201_
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %9)
  br label %clean_custom_12

normal-return13:                                  ; preds = %normal-return11
  store i8* %43, i8** %sret_slot
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %9)
  br label %join

else-block:                                       ; preds = %case_body2
  %45 = getelementptr inbounds %str_slice* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8]* @str1949, i32 0, i32 0), i8** %45
  %46 = getelementptr inbounds %str_slice* %13, i32 0, i32 1
  store i64 12, i64* %46
  call void @_ZN9to_string10T.ToString9to_string21h17596842287145981703E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %12, %str_slice* noalias dereferenceable(16) %13)
  invoke void @_ZN5c_str13String.ToCStr8to_c_str20h813878b29bab9491NtaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %11, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %12)
          to label %normal-return14 unwind label %unwind_ast_208_

normal-return14:                                  ; preds = %else-block
  %47 = invoke i8* @_ZN5c_str7CString6unwrap20h438c841e01f73389b4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16) %11)
          to label %normal-return15 unwind label %unwind_ast_208_

unwind_ast_208_:                                  ; preds = %normal-return14, %else-block
  %48 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %48, { i8*, i32 }* %4
  br label %clean_ast_208_

clean_ast_208_:                                   ; preds = %unwind_ast_208_
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %12)
  br label %clean_custom_12

normal-return15:                                  ; preds = %normal-return14
  store i8* %47, i8** %sret_slot
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %12)
  br label %join

join:                                             ; preds = %normal-return15, %normal-return13
  br label %join18

normal-return16:                                  ; preds = %case_body3
  %49 = invoke i8* @_ZN5c_str7CString6unwrap20h438c841e01f73389b4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16) %14)
          to label %normal-return17 unwind label %unwind_ast_217_

unwind_ast_217_:                                  ; preds = %normal-return16, %case_body3
  %50 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %50, { i8*, i32 }* %4
  br label %clean_ast_217_

clean_ast_217_:                                   ; preds = %unwind_ast_217_
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %15)
  br label %clean_custom_

normal-return17:                                  ; preds = %normal-return16
  store i8* %49, i8** %sret_slot
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %15)
  br label %join18

join18:                                           ; preds = %normal-return17, %join, %normal-return10, %normal-return7
  %51 = load i8** %sret_slot
  ret i8* %51
}

declare i8* @_ZN5c_str7CString6unwrap20h438c841e01f73389b4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define internal void @_ZN5c_str13String.ToCStr8to_c_str20h813878b29bab9491NtaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca { i8*, i64 }
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %self
  %3 = load %"struct.collections::string::String<[]>[#6]"** %self
  call void @_ZN6string6String8as_bytes20hf8f761c466e25371YtaE({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %3)
  call void @"_ZN5c_str31_$BP$$x27a$x20$x5bu8$x5d.ToCStr8to_c_str20hbabd71a2b0452c14q9aE"(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias dereferenceable(16) %2)
  ret void
}

declare void @"_ZN5c_str31_$BP$$x27a$x20$x5bu8$x5d.ToCStr8to_c_str20hbabd71a2b0452c14q9aE"(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define internal void @_ZN6string6String8as_bytes20hf8f761c466e25371YtaE({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::string::String<[]>[#6]"*
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %self
  %2 = load %"struct.collections::string::String<[]>[#6]"** %self
  %3 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %2, i32 0, i32 0
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice21h13688098575715568063E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %0, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice21h13688098575715568063E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = bitcast { i8*, i64 }* %0 to %"struct.core::raw::Slice<[u8]>[#3]"*
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %5 = call i8* @"_ZN3vec12Vec$LT$T$GT$6as_ptr21h15392688569529167118E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %4)
  store i8* %5, i8** %3
  %6 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 1
  %7 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %8 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %7, i32 0, i32 0
  %9 = load i64* %8
  store i64 %9, i64* %6
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3vec12Vec$LT$T$GT$6as_ptr21h15392688569529167118E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %1, i32 0, i32 2
  %3 = load i8** %2
  ret i8* %3
}

; Function Attrs: uwtable
define internal void @_ZN9to_string10T.ToString9to_string21h17596842287145981703E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24), %str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %self = alloca %str_slice*
  %2 = alloca { %str_slice* }
  %match = alloca { %str_slice* }
  %__llmatch = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %3 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust1 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store %str_slice* %1, %str_slice** %self
  %4 = getelementptr inbounds { %str_slice* }* %2, i32 0, i32 0
  %5 = load %str_slice** %self
  store %str_slice* %5, %str_slice** %4
  %6 = load { %str_slice* }* %2
  store { %str_slice* } %6, { %str_slice* }* %match
  %7 = getelementptr inbounds { %str_slice* }* %match, i32 0, i32 0
  store %str_slice** %7, %str_slice*** %__llmatch
  br label %case_body

case_body:                                        ; preds = %entry-block
  %8 = load %str_slice*** %__llmatch
  %9 = load %str_slice** %8
  store %str_slice* %9, %str_slice** %__arg0
  %10 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %3 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %11 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %3, i32 0
  %12 = load %str_slice** %__arg0
  call void @_ZN3fmt8argument20h9205917117371530789E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %11, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show21h16792740918225742705E, %str_slice* noalias dereferenceable(16) %12)
  %13 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %3, %"struct.core::fmt::Argument<[]>[#3]"** %13
  %14 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %14
  %15 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @_ZN9to_string10T.ToString9to_string15__STATIC_FMTSTR20h8b23f08f60bcdf37dfeE to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %15
  %16 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %16
  %17 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %18 = load %"struct.core::fmt::Argument<[]>[#3]"** %17
  %19 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %20 = load i64* %19
  %21 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust1, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %18, %"struct.core::fmt::Argument<[]>[#3]"** %21
  %22 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust1, i32 0, i32 1
  store i64 %20, i64* %22
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h246676d58674b75eEiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust1)
  call void @_ZN3fmt6format20h05b71c90fa35a7ceeWqE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %0, %"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args)
  br label %join

join:                                             ; preds = %case_body
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3fmt8argument20h9205917117371530789E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16), %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %str_slice* noalias dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %f = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)*
  %t = alloca %str_slice*
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* %1, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %str_slice* %2, %str_slice** %t
  %3 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 0
  %4 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"enum.core::fmt::Void<[]>[#3]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %3 to %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)**
  %5 = load %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* %5, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %4
  %6 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 1
  %7 = bitcast %"enum.core::fmt::Void<[]>[#3]"** %6 to %str_slice**
  %8 = load %str_slice** %t
  store %str_slice* %8, %str_slice** %7
  ret void
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show21h16792740918225742705E(%str_slice* noalias nocapture dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %x = alloca %str_slice*
  %fmt = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  store %str_slice* %0, %str_slice** %x
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %2 = load %str_slice** %x
  %3 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %4 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22_$BP$$x27a$x20str.Show3fmt20hf827b502a0b3b7489VyE"(%str_slice* noalias dereferenceable(16) %2, %"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %3)
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %4
}

declare %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22_$BP$$x27a$x20str.Show3fmt20hf827b502a0b3b7489VyE"(%str_slice* noalias nocapture dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #3

declare void @_ZN3fmt6format20h05b71c90fa35a7ceeWqE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24), %"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32)) unnamed_addr #3

declare i32 @rust_eh_personality(i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*) unnamed_addr #3

define internal void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.192917hfa25aad1645ebedeE"(%"struct.collections::vec::Vec<[u8]>[#6]"* %1)
  ret void
}

define internal void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.192917hfa25aad1645ebedeE"(%"struct.collections::vec::Vec<[u8]>[#6]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 0
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 1
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop20h4460827240566033145E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24) %0)
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop20h4460827240566033145E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %src.i = alloca i8*
  %tmp.i = alloca i8
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %1 = alloca %"struct.core::slice::Items<[u8]>[#3]"
  %2 = alloca { i8*, i64 }
  %__adjust = alloca { i8*, i64 }
  %for_head = alloca %"struct.core::slice::Items<[u8]>[#3]"*
  %loop_option = alloca i8*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %4 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %3, i32 0, i32 1
  %5 = load i64* %4
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %then-block-1390-, label %next-block

then-block-1390-:                                 ; preds = %entry-block
  %7 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice20h3317483298635420624E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %7)
  %8 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 0
  %9 = load i8** %8
  %10 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 1
  %11 = load i64* %10
  %12 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %9, i8** %12
  %13 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %11, i64* %13
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h11572794419572564675E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  store %"struct.core::slice::Items<[u8]>[#3]"* %1, %"struct.core::slice::Items<[u8]>[#3]"** %for_head
  %14 = load %"struct.core::slice::Items<[u8]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  %15 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %16 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %15, i32 0, i32 2
  %17 = load i8** %16
  %18 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %19 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %18, i32 0, i32 1
  %20 = load i64* %19
  call void @_ZN3vec7dealloc20h7890201920845490271E(i8* %17, i64 %20)
  br label %next-block

for_loopback:                                     ; preds = %for_body, %then-block-1390-
  %21 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h7673216705032017913E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias dereferenceable(16) %14)
  store i8* %21, i8** %loop_option
  %22 = load i8** %loop_option
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i8
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %26 = load i8** %loop_option
  store i8* %26, i8** %src.i
  %27 = call i8 @_ZN3mem13uninitialized20h5873797807461613352E()
  store i8 %27, i8* %tmp.i
  %28 = load i8** %src.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp.i, i8* %28, i64 1, i32 1, i1 false)
  %29 = load i8* %tmp.i
  br label %for_loopback

next-block:                                       ; preds = %entry-block, %for_exit
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h11572794419572564675E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %p = alloca i8*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = call i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr21h10260775473269733744E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i8* %5, i8** %p
  %6 = call i64 @_ZN3mem7size_of21h17734011315783597216E()
  store i64 %6, i64* %2
  %7 = load i64* %2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %then-block-605-, label %else-block

then-block-605-:                                  ; preds = %entry-block
  %9 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 0
  %10 = load i8** %p
  store i8* %10, i8** %9
  %11 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 1
  %12 = load i8** %p
  %13 = ptrtoint i8* %12 to i64
  %14 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h2892570506883845651E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %14, i64* %3
  %15 = load i64* %3
  %16 = add i64 %13, %15
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %11
  %18 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 2
  br label %join

else-block:                                       ; preds = %entry-block
  %19 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 0
  %20 = load i8** %p
  store i8* %20, i8** %19
  %21 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 1
  %22 = load i8** %p
  %23 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h2892570506883845651E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %23, i64* %4
  %24 = load i64* %4
  %25 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h1897571364881687175E"(i8* %22, i64 %24)
  store i8* %25, i8** %21
  %26 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 2
  br label %join

join:                                             ; preds = %else-block, %then-block-605-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr21h10260775473269733744E"({ i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store { i8*, i64 }* %0, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3raw4Repr4repr21h11171383410400665978E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %1, i32 0, i32 0
  %4 = load i8** %3
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h11171383410400665978E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h7030699540732383913E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h7030699540732383913E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h13465078099147979838E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized21h13465078099147979838E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #1 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of21h17734011315783597216E() unnamed_addr #1 {
entry-block:
  ret i64 1
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h2892570506883845651E"({ i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store { i8*, i64 }* %0, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3raw4Repr4repr21h14302722547269879545E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %1, i32 0, i32 1
  %4 = load i64* %3
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h14302722547269879545E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h2900772734001530521E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h2900772734001530521E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h13465078099147979838E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h1897571364881687175E"(i8*, i64) unnamed_addr #1 {
entry-block:
  %self = alloca i8*
  %count = alloca i64
  store i8* %0, i8** %self
  store i64 %1, i64* %count
  %2 = load i8** %self
  %3 = load i64* %count
  %4 = getelementptr inbounds i8* %2, i64 %3
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice20h3317483298635420624E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca i8*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = bitcast { i8*, i64 }* %0 to %"struct.core::raw::Slice<[u8]>[#3]"*
  %4 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %6 = call i8* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr21h15013145477481766632E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %5)
  store i8* %6, i8** %2
  %7 = load i8** %2
  store i8* %7, i8** %4
  %8 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %3, i32 0, i32 1
  %9 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %10 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %9, i32 0, i32 0
  %11 = load i64* %10
  store i64 %11, i64* %8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr21h15013145477481766632E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %1, i32 0, i32 2
  %3 = load i8** %2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h7673216705032017913E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca %"struct.core::slice::Items<[u8]>[#3]"*
  %1 = alloca i64
  %old = alloca i8*
  store %"struct.core::slice::Items<[u8]>[#3]"* %0, %"struct.core::slice::Items<[u8]>[#3]"** %self
  %2 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %3 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %5 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %4, i32 0, i32 1
  %6 = load i8** %3
  %7 = load i8** %5
  %8 = icmp eq i8* %6, %7
  br i1 %8, label %then-block-856-, label %else-block

then-block-856-:                                  ; preds = %entry-block
  store i8* null, i8** %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %9 = call i64 @_ZN3mem7size_of21h17734011315783597216E()
  store i64 %9, i64* %1
  %10 = load i64* %1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then-block-867-, label %else-block1

then-block-867-:                                  ; preds = %else-block
  %12 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %13 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %12, i32 0, i32 0
  %14 = bitcast i8** %13 to i64*
  %15 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %16 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %15, i32 0, i32 0
  %17 = load i8** %16
  %18 = ptrtoint i8* %17 to i64
  %19 = add i64 %18, 1
  store i64 %19, i64* %14
  %20 = bitcast i8** %sret_slot to i64*
  store i64 1, i64* %20
  br label %join

else-block1:                                      ; preds = %else-block
  %21 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %22 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %21, i32 0, i32 0
  %23 = load i8** %22
  store i8* %23, i8** %old
  %24 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %25 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %24, i32 0, i32 0
  %26 = load %"struct.core::slice::Items<[u8]>[#3]"** %self
  %27 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %26, i32 0, i32 0
  %28 = load i8** %27
  %29 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h1897571364881687175E"(i8* %28, i64 1)
  store i8* %29, i8** %25
  %30 = load i8** %old
  store i8* %30, i8** %sret_slot
  br label %join

join:                                             ; preds = %else-block1, %then-block-867-
  br label %join2

join2:                                            ; preds = %join, %then-block-856-
  %31 = load i8** %sret_slot
  ret i8* %31
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3mem13uninitialized20h5873797807461613352E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %0 = load i8* %sret_slot
  ret i8 %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3vec7dealloc20h7890201920845490271E(i8*, i64) unnamed_addr #1 {
entry-block:
  %ptr = alloca i8*
  %len = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %len
  %5 = call i64 @_ZN3mem7size_of21h17734011315783597216E()
  store i64 %5, i64* %2
  %6 = load i64* %2
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-1468-, label %next-block

then-block-1468-:                                 ; preds = %entry-block
  %8 = load i8** %ptr
  %9 = call i64 @_ZN3mem7size_of21h17734011315783597216E()
  store i64 %9, i64* %3
  %10 = load i64* %3
  %11 = load i64* %len
  %12 = mul i64 %11, %10
  %13 = call i64 @_ZN3mem12min_align_of20h2141351565934993604E()
  store i64 %13, i64* %4
  %14 = load i64* %4
  call void @_ZN4heap10deallocate20h0ea571fa8dfc4d0cxsaE(i8* %8, i64 %12, i64 %14)
  br label %next-block

next-block:                                       ; preds = %entry-block, %then-block-1468-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem12min_align_of20h2141351565934993604E() unnamed_addr #1 {
entry-block:
  ret i64 1
}

; Function Attrs: uwtable
define void @hy_new_map(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %1 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  %2 = bitcast %"enum.HyObjType<[]>"* %1 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }*
  %3 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }* %2, i32 0, i32 1
  call void @"_ZN7treemap24TreeMap$LT$K$C$$x20V$GT$3new20h5862018730597782301E"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture sret dereferenceable(16) %3)
  %4 = getelementptr inbounds %"enum.HyObjType<[]>"* %1, i32 0, i32 0
  store i8 0, i8* %4
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN7treemap24TreeMap$LT$K$C$$x20V$GT$3new20h5862018730597782301E"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 0
  store i8* null, i8** %1
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 1
  store i64 0, i64* %2
  ret void
}

; Function Attrs: uwtable
define void @hy_new_string(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), i8*) unnamed_addr #0 {
entry-block:
  %buf = alloca i8*
  %s = alloca %"struct.collections::string::String<[]>[#6]"
  %c_str = alloca %"struct.rustrt::c_str::CString<[]>[#9]"
  %2 = alloca { i8*, i32 }
  %3 = alloca { i8*, i64 }
  %__adjust = alloca { i8*, i64 }
  store i8* %1, i8** %buf
  call void @_ZN6string6String3new20h6f6d73fbb0caa6acCyaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %s)
  %4 = load i8** %buf
  invoke void @_ZN5c_str7CString3new20h34895b63ae630fccEZaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %c_str, i8* %4, i1 zeroext true)
          to label %normal-return unwind label %unwind_ast_240_

normal-return:                                    ; preds = %entry-block
  invoke void @_ZN5c_str7CString8as_bytes20h0227d9d69aa1e389rRaE({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %3, %"struct.rustrt::c_str::CString<[]>[#9]"* noalias dereferenceable(16) %c_str)
          to label %normal-return1 unwind label %unwind_ast_249_

unwind_ast_240_:                                  ; preds = %entry-block
  %5 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %5, { i8*, i32 }* %2
  br label %clean_ast_240_

resume:                                           ; preds = %clean_custom_
  %6 = load { i8*, i32 }* %2
  resume { i8*, i32 } %6

clean_custom_:                                    ; preds = %clean_ast_240_
  br label %resume

clean_ast_240_:                                   ; preds = %clean_ast_249_, %unwind_ast_240_
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %s)
  br label %clean_custom_

normal-return1:                                   ; preds = %normal-return
  %7 = getelementptr inbounds { i8*, i64 }* %3, i32 0, i32 0
  %8 = load i8** %7
  %9 = getelementptr inbounds { i8*, i64 }* %3, i32 0, i32 1
  %10 = load i64* %9
  %11 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %8, i8** %11
  %12 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %10, i64* %12
  invoke void @_ZN6string6String10push_bytes20h7c0bb25d5089ca6b8yaE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %s, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
          to label %normal-return2 unwind label %unwind_ast_249_

unwind_ast_249_:                                  ; preds = %normal-return1, %normal-return
  %13 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %13, { i8*, i32 }* %2
  br label %clean_ast_249_

clean_ast_249_:                                   ; preds = %unwind_ast_249_
  call void @_ZN22rustrt..c_str..CString14glue_drop.207617he89bdca2568e4f93E(%"struct.rustrt::c_str::CString<[]>[#9]"* %c_str)
  br label %clean_ast_240_

normal-return2:                                   ; preds = %normal-return1
  call void @_ZN22rustrt..c_str..CString14glue_drop.207617he89bdca2568e4f93E(%"struct.rustrt::c_str::CString<[]>[#9]"* %c_str)
  %14 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  %15 = bitcast %"enum.HyObjType<[]>"* %14 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %16 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %15, i32 0, i32 1
  %17 = bitcast %"struct.collections::string::String<[]>[#6]"* %s to i8*
  %18 = bitcast %"struct.collections::string::String<[]>[#6]"* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %17, i64 24, i32 8, i1 false)
  %19 = bitcast %"struct.collections::string::String<[]>[#6]"* %s to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 24, i32 8, i1 false)
  %20 = getelementptr inbounds %"enum.HyObjType<[]>"* %14, i32 0, i32 0
  store i8 1, i8* %20
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %s)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN6string6String3new20h6f6d73fbb0caa6acCyaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN3vec12Vec$LT$T$GT$3new20h7596264441832851618E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$3new20h7596264441832851618E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 0
  store i64 0, i64* %1
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 1
  store i64 0, i64* %2
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 2
  store i8* @_ZN3vec10PTR_MARKER20hd0730fd7e79c68f4HgiE, i8** %3
  ret void
}

declare void @_ZN5c_str7CString3new20h34895b63ae630fccEZaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16), i8*, i1 zeroext) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define internal void @_ZN6string6String10push_bytes20h7c0bb25d5089ca6b8yaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::string::String<[]>[#6]"*
  %__adjust = alloca { i8*, i64 }
  store %"struct.collections::string::String<[]>[#6]"* %0, %"struct.collections::string::String<[]>[#6]"** %self
  %2 = load %"struct.collections::string::String<[]>[#6]"** %self
  %3 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %2, i32 0, i32 0
  %4 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 0
  %5 = load i8** %4
  %6 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 1
  %7 = load i64* %6
  %8 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %5, i8** %8
  %9 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %7, i64* %9
  call void @"_ZN3vec12Vec$LT$T$GT$8push_all21h16511997109267930741E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %3, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$8push_all21h16511997109267930741E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca i64
  %3 = alloca %"struct.core::iter::Range<[uint]>[#3]"
  %4 = alloca i64
  %for_head = alloca %"struct.core::iter::Range<[uint]>[#3]"*
  %loop_option = alloca %"enum.core::option::Option<[uint]>[#3]"
  %len = alloca i64
  %5 = alloca i8*
  %6 = alloca { i8*, i64 }
  %__adjust = alloca { i8*, i64 }
  %7 = alloca i8
  %8 = alloca i8*
  %__adjust1 = alloca { i8*, i64 }
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %9 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %10 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h2892570506883845651E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %10, i64* %2
  %11 = load i64* %2
  call void @"_ZN3vec12Vec$LT$T$GT$18reserve_additional20h6486285256363049741E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %9, i64 %11)
  %12 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h2892570506883845651E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %12, i64* %4
  %13 = load i64* %4
  call void @_ZN4iter5range21h10076318891615316858E(%"struct.core::iter::Range<[uint]>[#3]"* noalias nocapture sret dereferenceable(24) %3, i64 0, i64 %13)
  store %"struct.core::iter::Range<[uint]>[#3]"* %3, %"struct.core::iter::Range<[uint]>[#3]"** %for_head
  %14 = load %"struct.core::iter::Range<[uint]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  ret void

for_loopback:                                     ; preds = %for_body, %entry-block
  call void @"_ZN4iter32Range$LT$A$GT$.Iterator$LT$A$GT$4next21h12091923891891870606E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16) %loop_option, %"struct.core::iter::Range<[uint]>[#3]"* noalias dereferenceable(24) %14)
  %15 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %loop_option, i32 0, i32 0
  %16 = load i8* %15, !range !1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %18 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %loop_option to { i8, i64 }*
  %19 = getelementptr inbounds { i8, i64 }* %18, i32 0, i32 1
  %20 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %21 = call i64 @"_ZN3vec23Vec$LT$T$GT$.Collection3len20h6870413862893064918E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %20)
  store i64 %21, i64* %len
  %22 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice20h3317483298635420624E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %6, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %22)
  %23 = getelementptr inbounds { i8*, i64 }* %6, i32 0, i32 0
  %24 = load i8** %23
  %25 = getelementptr inbounds { i8*, i64 }* %6, i32 0, i32 1
  %26 = load i64* %25
  %27 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %24, i8** %27
  %28 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %26, i64* %28
  %29 = load i64* %len
  %30 = call dereferenceable(1) i8* @"_ZN5slice65_$BP$$x27a$x20mut$x20$x5bT$x5d.MutableVector$LT$$x27a$C$$x20T$GT$14unsafe_mut_ref21h11724714175618997852E"({ i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust, i64 %29)
  store i8* %30, i8** %5
  %31 = load i8** %5
  %32 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 0
  %33 = load i8** %32
  %34 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 1
  %35 = load i64* %34
  %36 = getelementptr inbounds { i8*, i64 }* %__adjust1, i32 0, i32 0
  store i8* %33, i8** %36
  %37 = getelementptr inbounds { i8*, i64 }* %__adjust1, i32 0, i32 1
  store i64 %35, i64* %37
  %38 = load i64* %19
  %39 = call dereferenceable(1) i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$10unsafe_ref20h7682320106887072234E"({ i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust1, i64 %38)
  store i8* %39, i8** %8
  %40 = load i8** %8
  %41 = call i8 @_ZN5clone8u8.Clone5clone20h0e43305a1ac94f9eDQaE(i8* noalias dereferenceable(1) %40)
  store i8 %41, i8* %7
  %42 = load i8* %7
  call void @_ZN3ptr5write21h13444695963380085282E(i8* %31, i8 %42)
  %43 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %44 = load i64* %len
  %45 = add i64 %44, 1
  call void @"_ZN3vec12Vec$LT$T$GT$7set_len20h1616985830498009962E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %43, i64 %45)
  br label %for_loopback
}

; Function Attrs: uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$18reserve_additional20h6486285256363049741E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #0 {
entry-block:
  %fmt.i = alloca %"struct.core::fmt::Arguments<[]>[#3]"*
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %extra = alloca i64
  %2 = alloca %"enum.core::option::Option<[uint]>[#3]"
  %__llmatch = alloca i64*
  %new_cap = alloca i64
  %3 = alloca { %str_slice* }
  %4 = alloca %str_slice
  %match = alloca { %str_slice* }
  %__llmatch3 = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %5 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust4 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store i64 %1, i64* %extra
  %6 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %7 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %6, i32 0, i32 1
  %8 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %9 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %8, i32 0, i32 0
  %10 = load i64* %7
  %11 = load i64* %9
  %12 = sub i64 %10, %11
  %13 = load i64* %extra
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %then-block-1634-, label %next-block

then-block-1634-:                                 ; preds = %entry-block
  %15 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %16 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %15, i32 0, i32 0
  call void @_ZN3num15uint.CheckedAdd11checked_add20h656f3f8369b3e62c0BaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16) %2, i64* noalias dereferenceable(8) %16, i64* noalias dereferenceable(8) %extra)
  %17 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %2, i32 0, i32 0
  %18 = load i8* %17, !range !1
  switch i8 %18, label %match_else [
    i8 0, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %19 = getelementptr inbounds { %str_slice* }* %3, i32 0, i32 0
  %20 = getelementptr inbounds %str_slice* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8]* @str1986, i32 0, i32 0), i8** %20
  %21 = getelementptr inbounds %str_slice* %4, i32 0, i32 1
  store i64 40, i64* %21
  store %str_slice* %4, %str_slice** %19
  %22 = load { %str_slice* }* %3
  store { %str_slice* } %22, { %str_slice* }* %match
  %23 = getelementptr inbounds { %str_slice* }* %match, i32 0, i32 0
  store %str_slice** %23, %str_slice*** %__llmatch3
  br label %case_body2

case_body1:                                       ; preds = %match_else
  %24 = load i64** %__llmatch
  %25 = load i64* %24
  store i64 %25, i64* %new_cap
  %26 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %27 = load i64* %new_cap
  call void @"_ZN3vec12Vec$LT$T$GT$7reserve21h16274671190553899031E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %26, i64 %27)
  br label %join5

match_else:                                       ; preds = %then-block-1634-
  %28 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %2 to { i8, i64 }*
  %29 = getelementptr inbounds { i8, i64 }* %28, i32 0, i32 1
  store i64* %29, i64** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %then-block-1634-
  br label %case_body

case_body2:                                       ; preds = %case_body
  %30 = load %str_slice*** %__llmatch3
  %31 = load %str_slice** %30
  store %str_slice* %31, %str_slice** %__arg0
  %32 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %5 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %33 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %5, i32 0
  %34 = load %str_slice** %__arg0
  call void @_ZN3fmt8argument20h9205917117371530789E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %33, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show21h16792740918225742705E, %str_slice* noalias dereferenceable(16) %34)
  %35 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %5, %"struct.core::fmt::Argument<[]>[#3]"** %35
  %36 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %36
  %37 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @"_ZN3vec12Vec$LT$T$GT$18reserve_additional15__STATIC_FMTSTR20hc4afdecb9c205274fyiE" to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %37
  %38 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %38
  %39 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %40 = load %"struct.core::fmt::Argument<[]>[#3]"** %39
  %41 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %42 = load i64* %41
  %43 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %40, %"struct.core::fmt::Argument<[]>[#3]"** %43
  %44 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 1
  store i64 %42, i64* %44
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h246676d58674b75eEiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust4)
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %45 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  call void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %45, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @"_ZN3vec12Vec$LT$T$GT$18reserve_additional8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dQxiE")
  unreachable

"_ZN3vec12Vec$LT$T$GT$18reserve_additional8_run_fmt20h44ea197c1082fea0iDaE.exit": ; No predecessors!
  unreachable

join:                                             ; No predecessors!
  unreachable

join5:                                            ; preds = %case_body1
  br label %next-block

next-block:                                       ; preds = %entry-block, %join5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3num15uint.CheckedAdd11checked_add20h656f3f8369b3e62c0BaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16), i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i64*
  %v = alloca i64*
  %3 = alloca { i64, i8 }
  %x = alloca i64
  %y = alloca i8
  store i64* %1, i64** %self
  store i64* %2, i64** %v
  %4 = load i64** %self
  %5 = load i64* %4
  %6 = load i64** %v
  %7 = load i64* %6
  %8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  %11 = zext i1 %10 to i8
  %12 = insertvalue { i64, i8 } undef, i64 %9, 0
  %13 = insertvalue { i64, i8 } %12, i8 %11, 1
  store { i64, i8 } %13, { i64, i8 }* %3
  %14 = getelementptr inbounds { i64, i8 }* %3, i32 0, i32 0
  %15 = load i64* %14
  store i64 %15, i64* %x
  %16 = getelementptr inbounds { i64, i8 }* %3, i32 0, i32 1
  %17 = load i8* %16
  store i8 %17, i8* %y
  %18 = load i8* %y, !range !1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %then-block-1762-, label %else-block

then-block-1762-:                                 ; preds = %entry-block
  %20 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 0, i8* %20
  br label %join

else-block:                                       ; preds = %entry-block
  %21 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %0 to { i8, i64 }*
  %22 = getelementptr inbounds { i8, i64 }* %21, i32 0, i32 1
  %23 = load i64* %x
  store i64 %23, i64* %22
  %24 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 1, i8* %24
  br label %join

join:                                             ; preds = %else-block, %then-block-1762-
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) unnamed_addr #6

; Function Attrs: cold noinline noreturn
declare void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32), { %str_slice, i64 }* noalias nocapture dereferenceable(24)) unnamed_addr #5

; Function Attrs: uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$7reserve21h16274671190553899031E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %capacity = alloca i64
  %2 = alloca i64
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store i64 %1, i64* %capacity
  %3 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %4 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %3, i32 0, i32 1
  %5 = load i64* %capacity
  %6 = load i64* %4
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %then-block-1859-, label %next-block

then-block-1859-:                                 ; preds = %entry-block
  %8 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %9 = load i64* %capacity
  %10 = call i64 @_ZN3num17next_power_of_two20h4205448151952458346E(i64 %9)
  store i64 %10, i64* %2
  %11 = load i64* %2
  call void @"_ZN3vec12Vec$LT$T$GT$13reserve_exact21h12982124033711755740E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %8, i64 %11)
  br label %next-block

next-block:                                       ; preds = %entry-block, %then-block-1859-
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$13reserve_exact21h12982124033711755740E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %capacity = alloca i64
  %2 = alloca i64
  %size = alloca i64
  %3 = alloca %"enum.core::option::Option<[uint]>[#3]"
  %4 = alloca i64
  %addr_of = alloca i64
  %5 = alloca %str_slice
  %6 = alloca i64
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store i64 %1, i64* %capacity
  %7 = call i64 @_ZN3mem7size_of21h17734011315783597216E()
  store i64 %7, i64* %2
  %8 = load i64* %2
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %then-block-1884-, label %next-block

then-block-1884-:                                 ; preds = %entry-block
  br label %clean_custom_

clean_custom_:                                    ; preds = %next-block1, %then-block-1884-
  br label %return

next-block:                                       ; preds = %entry-block
  %10 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %11 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %10, i32 0, i32 1
  %12 = load i64* %capacity
  %13 = load i64* %11
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %then-block-1891-, label %next-block1

then-block-1891-:                                 ; preds = %next-block
  %15 = call i64 @_ZN3mem7size_of21h17734011315783597216E()
  store i64 %15, i64* %4
  %16 = load i64* %4
  store i64 %16, i64* %addr_of
  call void @_ZN3num15uint.CheckedMul11checked_mul20h607f9196a819da49LHaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16) %3, i64* noalias dereferenceable(8) %capacity, i64* noalias dereferenceable(8) %addr_of)
  %17 = getelementptr inbounds %str_slice* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8]* @str2015, i32 0, i32 0), i8** %17
  %18 = getelementptr inbounds %str_slice* %5, i32 0, i32 1
  store i64 17, i64* %18
  %19 = call i64 @"_ZN6option15Option$LT$T$GT$6expect21h14271815519063765917E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture dereferenceable(16) %3, %str_slice* noalias nocapture dereferenceable(16) %5)
  store i64 %19, i64* %size
  %20 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %21 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %20, i32 0, i32 2
  %22 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %23 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %22, i32 0, i32 2
  %24 = load i8** %23
  %25 = load i64* %size
  %26 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %27 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %26, i32 0, i32 1
  %28 = call i64 @_ZN3mem7size_of21h17734011315783597216E()
  store i64 %28, i64* %6
  %29 = load i64* %6
  %30 = load i64* %27
  %31 = mul i64 %30, %29
  %32 = call i8* @_ZN3vec16alloc_or_realloc21h12169540778647088388E(i8* %24, i64 %25, i64 %31)
  store i8* %32, i8** %21
  %33 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %34 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %33, i32 0, i32 1
  %35 = load i64* %capacity
  store i64 %35, i64* %34
  br label %next-block1

next-block1:                                      ; preds = %next-block, %then-block-1891-
  br label %clean_custom_

return:                                           ; preds = %clean_custom_
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN6option15Option$LT$T$GT$6expect21h14271815519063765917E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture dereferenceable(16), %str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %fmt.i = alloca %"struct.core::fmt::Arguments<[]>[#3]"*
  %__llmatch = alloca i64*
  %val = alloca i64
  %2 = alloca { %str_slice* }
  %match = alloca { %str_slice* }
  %__llmatch3 = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %3 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust4 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %4 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  %5 = load i8* %4, !range !1
  switch i8 %5, label %match_else [
    i8 1, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %6 = load i64** %__llmatch
  %7 = load i64* %6
  store i64 %7, i64* %val
  %8 = load i64* %val
  br label %join5

case_body1:                                       ; preds = %match_else
  %9 = getelementptr inbounds { %str_slice* }* %2, i32 0, i32 0
  store %str_slice* %1, %str_slice** %9
  %10 = load { %str_slice* }* %2
  store { %str_slice* } %10, { %str_slice* }* %match
  %11 = getelementptr inbounds { %str_slice* }* %match, i32 0, i32 0
  store %str_slice** %11, %str_slice*** %__llmatch3
  br label %case_body2

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %12 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %0 to { i8, i64 }*
  %13 = getelementptr inbounds { i8, i64 }* %12, i32 0, i32 1
  store i64* %13, i64** %__llmatch
  br label %case_body

case_body2:                                       ; preds = %case_body1
  %14 = load %str_slice*** %__llmatch3
  %15 = load %str_slice** %14
  store %str_slice* %15, %str_slice** %__arg0
  %16 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %3 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %17 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %3, i32 0
  %18 = load %str_slice** %__arg0
  call void @_ZN3fmt8argument21h15544611404544925513E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %17, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show18h90105638282479786E, %str_slice* noalias dereferenceable(16) %18)
  %19 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %3, %"struct.core::fmt::Argument<[]>[#3]"** %19
  %20 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %20
  %21 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @"_ZN6option15Option$LT$T$GT$6expect15__STATIC_FMTSTR20h79b308b23b8faec4humE" to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %21
  %22 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %22
  %23 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %24 = load %"struct.core::fmt::Argument<[]>[#3]"** %23
  %25 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %26 = load i64* %25
  %27 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %24, %"struct.core::fmt::Argument<[]>[#3]"** %27
  %28 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 1
  store i64 %26, i64* %28
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h246676d58674b75eEiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust4)
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %29 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  call void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %29, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @"_ZN6option15Option$LT$T$GT$6expect8_run_fmt10_FILE_LINE20h9519b9138055b1fdStmE")
  unreachable

"_ZN6option15Option$LT$T$GT$6expect8_run_fmt20hb0f9ce24f196cec79GaE.exit": ; No predecessors!
  unreachable

join:                                             ; No predecessors!
  unreachable

join5:                                            ; preds = %case_body
  ret i64 %8
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3fmt8argument21h15544611404544925513E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16), %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %str_slice* noalias dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %f = alloca %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)*
  %t = alloca %str_slice*
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* %1, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %str_slice* %2, %str_slice** %t
  %3 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 0
  %4 = bitcast %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%"enum.core::fmt::Void<[]>[#3]"*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %3 to %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)**
  %5 = load %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %f
  store %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* %5, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)** %4
  %6 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %0, i32 0, i32 1
  %7 = bitcast %"enum.core::fmt::Void<[]>[#3]"** %6 to %str_slice**
  %8 = load %str_slice** %t
  store %str_slice* %8, %str_slice** %7
  ret void
}

; Function Attrs: uwtable
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show18h90105638282479786E(%str_slice* noalias nocapture dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
entry-block:
  %x = alloca %str_slice*
  %fmt = alloca %"struct.core::fmt::Formatter<[]>[#3]"*
  store %str_slice* %0, %str_slice** %x
  store %"struct.core::fmt::Formatter<[]>[#3]"* %1, %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %2 = load %str_slice** %x
  %3 = load %"struct.core::fmt::Formatter<[]>[#3]"** %fmt
  %4 = call %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @"_ZN3fmt22_$BP$$x27a$x20str.Show3fmt20hf827b502a0b3b7489VyE"(%str_slice* noalias dereferenceable(16) %2, %"struct.core::fmt::Formatter<[]>[#3]"* noalias dereferenceable(96) %3)
  ret %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3num15uint.CheckedMul11checked_mul20h607f9196a819da49LHaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16), i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i64*
  %v = alloca i64*
  %3 = alloca { i64, i8 }
  %x = alloca i64
  %y = alloca i8
  store i64* %1, i64** %self
  store i64* %2, i64** %v
  %4 = load i64** %self
  %5 = load i64* %4
  %6 = load i64** %v
  %7 = load i64* %6
  %8 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %5, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  %11 = zext i1 %10 to i8
  %12 = insertvalue { i64, i8 } undef, i64 %9, 0
  %13 = insertvalue { i64, i8 } %12, i8 %11, 1
  store { i64, i8 } %13, { i64, i8 }* %3
  %14 = getelementptr inbounds { i64, i8 }* %3, i32 0, i32 0
  %15 = load i64* %14
  store i64 %15, i64* %x
  %16 = getelementptr inbounds { i64, i8 }* %3, i32 0, i32 1
  %17 = load i8* %16
  store i8 %17, i8* %y
  %18 = load i8* %y, !range !1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %then-block-2119-, label %else-block

then-block-2119-:                                 ; preds = %entry-block
  %20 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 0, i8* %20
  br label %join

else-block:                                       ; preds = %entry-block
  %21 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %0 to { i8, i64 }*
  %22 = getelementptr inbounds { i8, i64 }* %21, i32 0, i32 1
  %23 = load i64* %x
  store i64 %23, i64* %22
  %24 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 1, i8* %24
  br label %join

join:                                             ; preds = %else-block, %then-block-2119-
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) unnamed_addr #6

; Function Attrs: noinline uwtable
define internal i8* @_ZN3vec16alloc_or_realloc21h12169540778647088388E(i8*, i64, i64) unnamed_addr #8 {
entry-block:
  %sret_slot = alloca i8*
  %ptr = alloca i8*
  %size = alloca i64
  %old_size = alloca i64
  %3 = alloca i8*
  %4 = alloca i64
  %5 = alloca i8*
  %6 = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %size
  store i64 %2, i64* %old_size
  %7 = load i64* %old_size
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %then-block-2168-, label %else-block

then-block-2168-:                                 ; preds = %entry-block
  %9 = load i64* %size
  %10 = call i64 @_ZN3mem12min_align_of20h2141351565934993604E()
  store i64 %10, i64* %4
  %11 = load i64* %4
  %12 = call i8* @_ZN4heap8allocate20he3ef321902262926SpaE(i64 %9, i64 %11)
  store i8* %12, i8** %3
  %13 = load i8** %3
  store i8* %13, i8** %sret_slot
  br label %join

else-block:                                       ; preds = %entry-block
  %14 = load i8** %ptr
  %15 = load i64* %size
  %16 = call i64 @_ZN3mem12min_align_of20h2141351565934993604E()
  store i64 %16, i64* %6
  %17 = load i64* %6
  %18 = load i64* %old_size
  %19 = call i8* @_ZN4heap10reallocate20hfbb4990fffb9ac69EJaE(i8* %14, i64 %15, i64 %17, i64 %18)
  store i8* %19, i8** %5
  %20 = load i8** %5
  store i8* %20, i8** %sret_slot
  br label %join

join:                                             ; preds = %else-block, %then-block-2168-
  %21 = load i8** %sret_slot
  ret i8* %21
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap10reallocate20hfbb4990fffb9ac69EJaE(i8*, i64, i64, i64) unnamed_addr #1 {
entry-block:
  %ptr = alloca i8*
  %size = alloca i64
  %align = alloca i64
  %old_size = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %size
  store i64 %2, i64* %align
  store i64 %3, i64* %old_size
  %4 = load i8** %ptr
  %5 = load i64* %size
  %6 = load i64* %align
  %7 = load i64* %old_size
  %8 = call i8* @_ZN4heap3imp10reallocate20hb803b32c5983c3bc7JaE(i8* %4, i64 %5, i64 %6, i64 %7)
  ret i8* %8
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap3imp10reallocate20hb803b32c5983c3bc7JaE(i8*, i64, i64, i64) unnamed_addr #1 {
entry-block:
  %a.i = alloca i64
  %4 = alloca i64
  %ptr = alloca i8*
  %size = alloca i64
  %align = alloca i64
  %_old_size = alloca i64
  %ptr1 = alloca i8*
  %5 = alloca i8*
  %6 = alloca i32
  %__arg = alloca i8*
  %__arg2 = alloca i64
  %__arg3 = alloca i32
  %7 = alloca i8
  store i8* %0, i8** %ptr
  store i64 %1, i64* %size
  store i64 %2, i64* %align
  store i64 %3, i64* %_old_size
  %8 = load i8** %ptr
  %9 = load i64* %size
  %10 = load i64* %align
  store i64 %10, i64* %a.i
  %11 = load i64* %a.i
  %12 = call i64 @_ZN3num8uint.Int14trailing_zeros20h80f523bde38482171qaE(i64 %11)
  store i64 %12, i64* %4
  %13 = load i64* %4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6
  %15 = load i32* %6
  store i8* %8, i8** %__arg
  %16 = load i8** %__arg
  store i64 %9, i64* %__arg2
  %17 = load i64* %__arg2
  store i32 %15, i32* %__arg3
  %18 = load i32* %__arg3
  %19 = call i8* @je_rallocx(i8* %16, i64 %17, i32 %18)
  store i8* %19, i8** %5
  %20 = load i8** %5
  store i8* %20, i8** %ptr1
  %21 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null20h3159666164353188193E"(i8** noalias dereferenceable(8) %ptr1)
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %7
  %23 = load i8* %7, !range !1
  %24 = trunc i8 %23 to i1
  br i1 %24, label %then-block-2277-, label %next-block

then-block-2277-:                                 ; preds = %entry-block
  call void @_ZN3oom20h70228b11624052eclRaE()
  unreachable

next-block:                                       ; preds = %entry-block
  %25 = load i8** %ptr1
  ret i8* %25
}

declare i8* @je_rallocx(i8*, i64, i32) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num17next_power_of_two20h4205448151952458346E(i64) unnamed_addr #1 {
entry-block:
  %n = alloca i64
  %halfbits = alloca i64
  %1 = alloca i64
  %tmp = alloca i64
  %2 = alloca i64
  %arg = alloca i64
  %shift = alloca i64
  %3 = alloca i64
  %arg1 = alloca i64
  %4 = alloca i64
  %arg2 = alloca i64
  store i64 %0, i64* %n
  %5 = call i64 @_ZN3mem7size_of20h1234091344044153793E()
  store i64 %5, i64* %1
  %6 = load i64* %1
  %7 = mul i64 %6, 4
  store i64 %7, i64* %halfbits
  %8 = call i64 @_ZN3num8uint.One3one20h05150ff4a72b09c16LaE()
  store i64 %8, i64* %2
  %9 = load i64* %2
  store i64 %9, i64* %arg
  %10 = call i64 @"_ZN3ops31uint.Sub$LT$uint$C$$x20uint$GT$3sub20hbfa8f943f9a08141cMaE"(i64* noalias dereferenceable(8) %n, i64* noalias dereferenceable(8) %arg)
  store i64 %10, i64* %tmp
  store i64 1, i64* %shift
  br label %while_cond

while_exit:                                       ; preds = %while_cond
  %11 = call i64 @_ZN3num8uint.One3one20h05150ff4a72b09c16LaE()
  store i64 %11, i64* %4
  %12 = load i64* %4
  store i64 %12, i64* %arg2
  %13 = call i64 @"_ZN3ops31uint.Add$LT$uint$C$$x20uint$GT$3add20h16e66c6e6e836127aNaE"(i64* noalias dereferenceable(8) %tmp, i64* noalias dereferenceable(8) %arg2)
  ret i64 %13

while_cond:                                       ; preds = %while_body, %entry-block
  %14 = load i64* %shift
  %15 = load i64* %halfbits
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %while_body, label %while_exit

while_body:                                       ; preds = %while_cond
  %17 = call i64 @"_ZN3ops31uint.Shr$LT$uint$C$$x20uint$GT$3shr20hce4b2b0fca4c6c43wMaE"(i64* noalias dereferenceable(8) %tmp, i64* noalias dereferenceable(8) %shift)
  store i64 %17, i64* %3
  %18 = load i64* %3
  store i64 %18, i64* %arg1
  %19 = call i64 @"_ZN3ops33uint.BitOr$LT$uint$C$$x20uint$GT$5bitor20hc2748387b6c201bfQMaE"(i64* noalias dereferenceable(8) %tmp, i64* noalias dereferenceable(8) %arg1)
  store i64 %19, i64* %tmp
  %20 = load i64* %shift
  %21 = shl i64 %20, 1
  store i64 %21, i64* %shift
  br label %while_cond
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of20h1234091344044153793E() unnamed_addr #1 {
entry-block:
  ret i64 8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num8uint.One3one20h05150ff4a72b09c16LaE() unnamed_addr #1 {
entry-block:
  ret i64 1
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3ops31uint.Sub$LT$uint$C$$x20uint$GT$3sub20hbfa8f943f9a08141cMaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i64*
  %other = alloca i64*
  store i64* %0, i64** %self
  store i64* %1, i64** %other
  %2 = load i64** %self
  %3 = load i64** %other
  %4 = load i64* %2
  %5 = load i64* %3
  %6 = sub i64 %4, %5
  ret i64 %6
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3ops31uint.Shr$LT$uint$C$$x20uint$GT$3shr20hce4b2b0fca4c6c43wMaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i64*
  %other = alloca i64*
  store i64* %0, i64** %self
  store i64* %1, i64** %other
  %2 = load i64** %self
  %3 = load i64** %other
  %4 = load i64* %2
  %5 = load i64* %3
  %6 = lshr i64 %4, %5
  ret i64 %6
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3ops33uint.BitOr$LT$uint$C$$x20uint$GT$5bitor20hc2748387b6c201bfQMaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i64*
  %rhs = alloca i64*
  store i64* %0, i64** %self
  store i64* %1, i64** %rhs
  %2 = load i64** %self
  %3 = load i64** %rhs
  %4 = load i64* %2
  %5 = load i64* %3
  %6 = or i64 %4, %5
  ret i64 %6
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3ops31uint.Add$LT$uint$C$$x20uint$GT$3add20h16e66c6e6e836127aNaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i64*
  %other = alloca i64*
  store i64* %0, i64** %self
  store i64* %1, i64** %other
  %2 = load i64** %self
  %3 = load i64** %other
  %4 = load i64* %2
  %5 = load i64* %3
  %6 = add i64 %4, %5
  ret i64 %6
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4iter5range21h10076318891615316858E(%"struct.core::iter::Range<[uint]>[#3]"* noalias nocapture sret dereferenceable(24), i64, i64) unnamed_addr #1 {
entry-block:
  %start = alloca i64
  %stop = alloca i64
  store i64 %1, i64* %start
  store i64 %2, i64* %stop
  %3 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %0, i32 0, i32 0
  %4 = load i64* %start
  store i64 %4, i64* %3
  %5 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %0, i32 0, i32 1
  %6 = load i64* %stop
  store i64 %6, i64* %5
  %7 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %0, i32 0, i32 2
  %8 = call i64 @_ZN3num8uint.One3one20h05150ff4a72b09c16LaE()
  store i64 %8, i64* %7
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4iter32Range$LT$A$GT$.Iterator$LT$A$GT$4next21h12091923891891870606E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16), %"struct.core::iter::Range<[uint]>[#3]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::iter::Range<[uint]>[#3]"*
  %2 = alloca i8
  %result = alloca i64
  store %"struct.core::iter::Range<[uint]>[#3]"* %1, %"struct.core::iter::Range<[uint]>[#3]"** %self
  %3 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %4 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %6 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %5, i32 0, i32 1
  %7 = call zeroext i1 @_ZN3cmp5impls15uint.PartialOrd2lt20h265c157954a92770AOaE(i64* noalias dereferenceable(8) %4, i64* noalias dereferenceable(8) %6)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %2
  %9 = load i8* %2, !range !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %then-block-2482-, label %else-block

then-block-2482-:                                 ; preds = %entry-block
  %11 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %12 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %11, i32 0, i32 0
  %13 = call i64 @_ZN5clone10uint.Clone5clone20h844ee821a3636c06UOaE(i64* noalias dereferenceable(8) %12)
  store i64 %13, i64* %result
  %14 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %15 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %14, i32 0, i32 0
  %16 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %17 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %16, i32 0, i32 0
  %18 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %19 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %18, i32 0, i32 2
  %20 = call i64 @"_ZN3ops31uint.Add$LT$uint$C$$x20uint$GT$3add20h16e66c6e6e836127aNaE"(i64* noalias dereferenceable(8) %17, i64* noalias dereferenceable(8) %19)
  store i64 %20, i64* %15
  %21 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %0 to { i8, i64 }*
  %22 = getelementptr inbounds { i8, i64 }* %21, i32 0, i32 1
  %23 = load i64* %result
  store i64 %23, i64* %22
  %24 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 1, i8* %24
  br label %join

else-block:                                       ; preds = %entry-block
  %25 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %0, i32 0, i32 0
  store i8 0, i8* %25
  br label %join

join:                                             ; preds = %else-block, %then-block-2482-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3cmp5impls15uint.PartialOrd2lt20h265c157954a92770AOaE(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i64*
  %other = alloca i64*
  store i64* %0, i64** %self
  store i64* %1, i64** %other
  %2 = load i64** %self
  %3 = load i64** %other
  %4 = load i64* %2
  %5 = load i64* %3
  %6 = icmp ult i64 %4, %5
  %7 = zext i1 %6 to i8
  %8 = trunc i8 %7 to i1
  ret i1 %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN5clone10uint.Clone5clone20h844ee821a3636c06UOaE(i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i64*
  store i64* %0, i64** %self
  %1 = load i64** %self
  %2 = load i64* %1
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3vec23Vec$LT$T$GT$.Collection3len20h6870413862893064918E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %1, i32 0, i32 0
  %3 = load i64* %2
  ret i64 %3
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3ptr5write21h13444695963380085282E(i8*, i8) unnamed_addr #1 {
entry-block:
  %dst = alloca i8*
  %src = alloca i8
  store i8* %0, i8** %dst
  store i8 %1, i8* %src
  %2 = load i8** %dst
  %3 = load i8* %src
  store i8 %3, i8* %2
  ret void
}

; Function Attrs: inlinehint uwtable
define internal dereferenceable(1) i8* @"_ZN5slice65_$BP$$x27a$x20mut$x20$x5bT$x5d.MutableVector$LT$$x27a$C$$x20T$GT$14unsafe_mut_ref21h11724714175618997852E"({ i8*, i64 }* noalias nocapture dereferenceable(16), i64) unnamed_addr #1 {
entry-block:
  %index = alloca i64
  %2 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %__adjust = alloca { i8*, i64 }
  store i64 %1, i64* %index
  %3 = getelementptr inbounds { i8*, i64 }* %0, i32 0, i32 0
  %4 = load i8** %3
  %5 = getelementptr inbounds { i8*, i64 }* %0, i32 0, i32 1
  %6 = load i64* %5
  %7 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %4, i8** %7
  %8 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %6, i64* %8
  call void @_ZN3raw4Repr4repr20h5744388508113130960E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %2, { i8*, i64 }* noalias dereferenceable(16) %__adjust)
  %9 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 0
  %10 = load i8** %9
  %11 = load i64* %index
  %12 = call i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset20h4501220371455240198E"(i8* %10, i64 %11)
  ret i8* %12
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset20h4501220371455240198E"(i8*, i64) unnamed_addr #1 {
entry-block:
  %self = alloca i8*
  %count = alloca i64
  %2 = alloca i8*
  store i8* %0, i8** %self
  store i64 %1, i64* %count
  %3 = load i8** %self
  %4 = load i64* %count
  %5 = getelementptr inbounds i8* %3, i64 %4
  store i8* %5, i8** %2
  %6 = load i8** %2
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr20h5744388508113130960E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy21h14472685262713003020E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy21h14472685262713003020E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h13465078099147979838E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN5clone8u8.Clone5clone20h0e43305a1ac94f9eDQaE(i8* noalias nocapture dereferenceable(1)) unnamed_addr #1 {
entry-block:
  %self = alloca i8*
  store i8* %0, i8** %self
  %1 = load i8** %self
  %2 = load i8* %1
  ret i8 %2
}

; Function Attrs: inlinehint uwtable
define internal dereferenceable(1) i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$10unsafe_ref20h7682320106887072234E"({ i8*, i64 }* noalias nocapture dereferenceable(16), i64) unnamed_addr #1 {
entry-block:
  %index = alloca i64
  %2 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store i64 %1, i64* %index
  call void @_ZN3raw4Repr4repr21h16026489206676345376E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %2, { i8*, i64 }* noalias dereferenceable(16) %0)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 0
  %4 = load i8** %3
  %5 = load i64* %index
  %6 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h1897571364881687175E"(i8* %4, i64 %5)
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h16026489206676345376E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h1040621645502712296E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h1040621645502712296E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h13465078099147979838E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
  %4 = load %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  %5 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %6 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %tmp.i to i8*
  %8 = bitcast %"struct.core::raw::Slice<[u8]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$7set_len20h1616985830498009962E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %len = alloca i64
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store i64 %1, i64* %len
  %2 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %2, i32 0, i32 0
  %4 = load i64* %len
  store i64 %4, i64* %3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5c_str7CString8as_bytes20h0227d9d69aa1e389rRaE({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.rustrt::c_str::CString<[]>[#9]"* noalias dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.rustrt::c_str::CString<[]>[#9]"*
  %2 = alloca i64
  store %"struct.rustrt::c_str::CString<[]>[#9]"* %1, %"struct.rustrt::c_str::CString<[]>[#9]"** %self
  %3 = bitcast { i8*, i64 }* %0 to %"struct.core::raw::Slice<[i8]>[#3]"*
  %4 = getelementptr inbounds %"struct.core::raw::Slice<[i8]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.rustrt::c_str::CString<[]>[#9]"** %self
  %6 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %5, i32 0, i32 0
  %7 = load i8** %6
  store i8* %7, i8** %4
  %8 = getelementptr inbounds %"struct.core::raw::Slice<[i8]>[#3]"* %3, i32 0, i32 1
  %9 = load %"struct.rustrt::c_str::CString<[]>[#9]"** %self
  %10 = call i64 @_ZN5c_str18CString.Collection3len20hafa797d68990e118PRaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias dereferenceable(16) %9)
  store i64 %10, i64* %2
  %11 = load i64* %2
  %12 = add i64 %11, 1
  store i64 %12, i64* %8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN5c_str18CString.Collection3len20hafa797d68990e118PRaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.rustrt::c_str::CString<[]>[#9]"*
  %cur = alloca i8*
  %len = alloca i64
  store %"struct.rustrt::c_str::CString<[]>[#9]"* %0, %"struct.rustrt::c_str::CString<[]>[#9]"** %self
  %1 = load %"struct.rustrt::c_str::CString<[]>[#9]"** %self
  %2 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %1, i32 0, i32 0
  %3 = load i8** %2
  store i8* %3, i8** %cur
  store i64 0, i64* %len
  br label %while_cond

while_exit:                                       ; preds = %while_cond
  %4 = load i64* %len
  br label %clean_ast_2713_

return:                                           ; preds = %clean_custom_
  ret i64 %4

while_cond:                                       ; preds = %while_body, %entry-block
  %5 = load i8** %cur
  %6 = load i8* %5
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %while_body, label %while_exit

while_body:                                       ; preds = %while_cond
  %8 = load i64* %len
  %9 = add i64 %8, 1
  store i64 %9, i64* %len
  %10 = load i8** %cur
  %11 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h4173071181494210480E"(i8* %10, i64 1)
  store i8* %11, i8** %cur
  br label %while_cond

clean_custom_:                                    ; preds = %clean_ast_2713_
  br label %return

clean_ast_2713_:                                  ; preds = %while_exit
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h4173071181494210480E"(i8*, i64) unnamed_addr #1 {
entry-block:
  %self = alloca i8*
  %count = alloca i64
  store i8* %0, i8** %self
  store i64 %1, i64* %count
  %2 = load i8** %self
  %3 = load i64* %count
  %4 = getelementptr inbounds i8* %2, i64 %3
  ret i8* %4
}

define internal void @_ZN22rustrt..c_str..CString14glue_drop.207617he89bdca2568e4f93E(%"struct.rustrt::c_str::CString<[]>[#9]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %0, i32 0, i32 2
  %2 = load i8* %1, !range !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %cond, label %next

next:                                             ; preds = %cond, %entry-block
  ret void

cond:                                             ; preds = %entry-block
  %4 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %0, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %0, i32 0, i32 1
  %6 = getelementptr inbounds %"struct.rustrt::c_str::CString<[]>[#9]"* %0, i32 0, i32 2
  call void @_ZN5c_str12CString.Drop4drop20hdec0db6cd0db6838u4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16) %0)
  br label %next
}

declare void @_ZN5c_str12CString.Drop4drop20hdec0db6cd0db6838u4aE(%"struct.rustrt::c_str::CString<[]>[#9]"*) unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) unnamed_addr #2

; Function Attrs: uwtable
define void @hy_new_int(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), i64) unnamed_addr #0 {
entry-block:
  %i = alloca i64
  store i64 %1, i64* %i
  %2 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  %3 = bitcast %"enum.HyObjType<[]>"* %2 to { i8, i64 }*
  %4 = getelementptr inbounds { i8, i64 }* %3, i32 0, i32 1
  %5 = load i64* %i
  store i64 %5, i64* %4
  %6 = getelementptr inbounds %"enum.HyObjType<[]>"* %2, i32 0, i32 0
  store i8 2, i8* %6
  ret void
}

; Function Attrs: uwtable
define void @hy_new_float(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), double) unnamed_addr #0 {
entry-block:
  %f = alloca double
  store double %1, double* %f
  %2 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  %3 = bitcast %"enum.HyObjType<[]>"* %2 to { i8, double }*
  %4 = getelementptr inbounds { i8, double }* %3, i32 0, i32 1
  %5 = load double* %f
  store double %5, double* %4
  %6 = getelementptr inbounds %"enum.HyObjType<[]>"* %2, i32 0, i32 0
  store i8 3, i8* %6
  ret void
}

; Function Attrs: uwtable
define void @hy_new_array(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %1 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  %2 = bitcast %"enum.HyObjType<[]>"* %1 to { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }*
  %3 = getelementptr inbounds { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }* %2, i32 0, i32 1
  call void @"_ZN3vec12Vec$LT$T$GT$3new21h12919754502201758245E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture sret dereferenceable(24) %3)
  %4 = getelementptr inbounds %"enum.HyObjType<[]>"* %1, i32 0, i32 0
  store i8 4, i8* %4
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$3new21h12919754502201758245E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, i32 0, i32 0
  store i64 0, i64* %1
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, i32 0, i32 1
  store i64 0, i64* %2
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, i32 0, i32 2
  store %"struct.HyObj<[]>"* bitcast (i8* @_ZN3vec10PTR_MARKER20hd0730fd7e79c68f4HgiE to %"struct.HyObj<[]>"*), %"struct.HyObj<[]>"** %3
  ret void
}

; Function Attrs: uwtable
define void @hy_new_bool(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), i1 zeroext) unnamed_addr #0 {
entry-block:
  %b = alloca i8
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %b
  %3 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  %4 = bitcast %"enum.HyObjType<[]>"* %3 to { i8, i8 }*
  %5 = getelementptr inbounds { i8, i8 }* %4, i32 0, i32 1
  %6 = load i8* %b
  store i8 %6, i8* %5
  %7 = getelementptr inbounds %"enum.HyObjType<[]>"* %3, i32 0, i32 0
  store i8 5, i8* %7
  ret void
}

; Function Attrs: uwtable
define void @hy_map_insert(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.HyObj<[]>"*
  %m = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %s = alloca %"struct.collections::string::String<[]>[#6]"*
  %4 = alloca i8
  %5 = alloca %"struct.collections::string::String<[]>[#6]"
  %6 = alloca { i8*, i32 }
  %arg = alloca %"struct.HyObj<[]>"
  %7 = alloca %str_slice
  %8 = alloca %str_slice
  store %"struct.HyObj<[]>"* %1, %"struct.HyObj<[]>"** %self
  %9 = load %"struct.HyObj<[]>"** %self
  %10 = getelementptr inbounds %"struct.HyObj<[]>"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"enum.HyObjType<[]>"* %10, i32 0, i32 0
  %12 = load i8* %11, !range !0
  switch i8 %12, label %match_else [
    i8 0, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %13 = getelementptr inbounds %"struct.HyObj<[]>"* %2, i32 0, i32 0
  %14 = getelementptr inbounds %"enum.HyObjType<[]>"* %13, i32 0, i32 0
  %15 = load i8* %14, !range !0
  switch i8 %15, label %match_else4 [
    i8 1, label %match_case5
  ]

case_body1:                                       ; preds = %match_else
  %16 = getelementptr inbounds %str_slice* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([51 x i8]* @str2201, i32 0, i32 0), i8** %16
  %17 = getelementptr inbounds %str_slice* %8, i32 0, i32 1
  store i64 51, i64* %17
  invoke void @_ZN6unwind12begin_unwind21h15233954449314110570E(%str_slice* noalias nocapture dereferenceable(16) %8, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_insert10_FILE_LINE20h8f97236c5e74de36agaE)
          to label %normal-return9 unwind label %unwind_custom_

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %18 = bitcast %"enum.HyObjType<[]>"* %10 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }*
  %19 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }* %18, i32 0, i32 1
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %19, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %m
  br label %case_body

case_body2:                                       ; preds = %match_case5
  %20 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %m
  %21 = load %"struct.collections::string::String<[]>[#6]"** %s
  invoke void @_ZN6string26String...std..clone..Clone5clone20h287aff0780be480107aE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %5, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %21)
          to label %normal-return unwind label %unwind_custom_

case_body3:                                       ; preds = %match_else4
  %22 = getelementptr inbounds %str_slice* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8]* @str2200, i32 0, i32 0), i8** %22
  %23 = getelementptr inbounds %str_slice* %7, i32 0, i32 1
  store i64 26, i64* %23
  invoke void @_ZN6unwind12begin_unwind21h15233954449314110570E(%str_slice* noalias nocapture dereferenceable(16) %7, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_insert10_FILE_LINE20h8f97236c5e74de36QfaE)
          to label %normal-return8 unwind label %unwind_custom_

match_else4:                                      ; preds = %case_body
  br label %case_body3

match_case5:                                      ; preds = %case_body
  %24 = bitcast %"enum.HyObjType<[]>"* %13 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %25 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %24, i32 0, i32 1
  store %"struct.collections::string::String<[]>[#6]"* %25, %"struct.collections::string::String<[]>[#6]"** %s
  br label %case_body2

normal-return:                                    ; preds = %case_body2
  %26 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  %27 = bitcast %"struct.HyObj<[]>"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %26, i64 32, i32 8, i1 false)
  %28 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 32, i32 8, i1 false)
  %29 = invoke zeroext i1 @_ZN10MutableMap6insert20h5058180793263952808E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %20, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %5, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg)
          to label %normal-return6 unwind label %unwind_custom_

unwind_custom_:                                   ; preds = %case_body1, %case_body3, %normal-return6, %normal-return, %case_body2
  %30 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %30, { i8*, i32 }* %6
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %31 = load { i8*, i32 }* %6
  resume { i8*, i32 } %31

clean_custom_:                                    ; preds = %unwind_custom_
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %3)
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  br label %resume

normal-return6:                                   ; preds = %normal-return
  %32 = zext i1 %29 to i8
  store i8 %32, i8* %4
  %33 = load i8* %4, !range !1
  %34 = trunc i8 %33 to i1
  invoke void @hy_new_bool(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %0, i1 zeroext %34)
          to label %normal-return7 unwind label %unwind_custom_

normal-return7:                                   ; preds = %normal-return6
  br label %join

normal-return8:                                   ; preds = %case_body3
  unreachable

join:                                             ; preds = %normal-return7
  br label %join10

normal-return9:                                   ; preds = %case_body1
  unreachable

join10:                                           ; preds = %join
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %3)
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN10MutableMap6insert20h5058180793263952808E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %3 = alloca %"enum.core::option::Option<[HyObj]>[#3]"
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %arg1 = alloca %"struct.HyObj<[]>"
  %4 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %5 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %6 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  %7 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %6, i64 24, i32 8, i1 false)
  %8 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 24, i32 8, i1 false)
  %9 = bitcast %"struct.HyObj<[]>"* %2 to i8*
  %10 = bitcast %"struct.HyObj<[]>"* %arg1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %9, i64 32, i32 8, i1 false)
  %11 = bitcast %"struct.HyObj<[]>"* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 32, i32 8, i1 false)
  invoke void @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$4swap20h6237236396088003386E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %3, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %5, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg1)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %12 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_none21h10005696021316347585E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias dereferenceable(40) %3)
          to label %normal-return2 unwind label %unwind_ast_2762_

unwind_custom_:                                   ; preds = %entry-block
  %13 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %13, { i8*, i32 }* %4
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %14 = load { i8*, i32 }* %4
  resume { i8*, i32 } %14

clean_custom_:                                    ; preds = %clean_ast_2762_, %unwind_custom_
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %1)
  br label %resume

normal-return2:                                   ; preds = %normal-return
  %15 = zext i1 %12 to i8
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %3)
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %1)
  %16 = trunc i8 %15 to i1
  ret i1 %16

unwind_ast_2762_:                                 ; preds = %normal-return
  %17 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %17, { i8*, i32 }* %4
  br label %clean_ast_2762_

clean_ast_2762_:                                  ; preds = %unwind_ast_2762_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %3)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_none21h10005696021316347585E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture dereferenceable(40)) unnamed_addr #1 {
entry-block:
  %self = alloca %"enum.core::option::Option<[HyObj]>[#3]"*
  %1 = alloca i8
  store %"enum.core::option::Option<[HyObj]>[#3]"* %0, %"enum.core::option::Option<[HyObj]>[#3]"** %self
  %2 = load %"enum.core::option::Option<[HyObj]>[#3]"** %self
  %3 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h13941718349563647439E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias dereferenceable(40) %2)
  %4 = zext i1 %3 to i8
  store i8 %4, i8* %1
  %5 = load i8* %1, !range !1
  %6 = trunc i8 %5 to i1
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i8
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h13941718349563647439E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture dereferenceable(40)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca %"enum.core::option::Option<[HyObj]>[#3]"*
  store %"enum.core::option::Option<[HyObj]>[#3]"* %0, %"enum.core::option::Option<[HyObj]>[#3]"** %self
  %1 = load %"enum.core::option::Option<[HyObj]>[#3]"** %self
  %2 = getelementptr inbounds %"enum.core::option::Option<[HyObj]>[#3]"* %1, i32 0, i32 0
  %3 = load i8* %2, !range !1
  switch i8 %3, label %match_else [
    i8 1, label %match_case
  ]

case_body:                                        ; preds = %match_case
  store i8 1, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  store i8 0, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %4 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %1 to { i8, %"struct.HyObj<[]>" }*
  %5 = getelementptr inbounds { i8, %"struct.HyObj<[]>" }* %4, i32 0, i32 1
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %6 = load i8* %sret_slot, !range !1
  %7 = trunc i8 %6 to i1
  ret i1 %7
}

; Function Attrs: uwtable
define internal void @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$4swap20h6237236396088003386E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40), %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %ret = alloca %"enum.core::option::Option<[HyObj]>[#3]"
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %arg1 = alloca %"struct.HyObj<[]>"
  %4 = alloca { i8*, i32 }
  %5 = alloca i8
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %1, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %6 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %7 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %6, i32 0, i32 0
  %8 = bitcast %"struct.collections::string::String<[]>[#6]"* %2 to i8*
  %9 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %8, i64 24, i32 8, i1 false)
  %10 = bitcast %"struct.collections::string::String<[]>[#6]"* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false)
  %11 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  %12 = bitcast %"struct.HyObj<[]>"* %arg1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %11, i64 32, i32 8, i1 false)
  %13 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 32, i32 8, i1 false)
  invoke void @_ZN7treemap6insert20h8393856408609182227E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %ret, i8** noalias nocapture dereferenceable(8) %7, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg1)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %14 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_none21h10005696021316347585E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias dereferenceable(40) %ret)
          to label %normal-return2 unwind label %unwind_ast_2812_

unwind_custom_:                                   ; preds = %entry-block
  %15 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %15, { i8*, i32 }* %4
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %16 = load { i8*, i32 }* %4
  resume { i8*, i32 } %16

clean_custom_:                                    ; preds = %clean_ast_2812_, %unwind_custom_
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %3)
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %2)
  br label %resume

normal-return2:                                   ; preds = %normal-return
  %17 = zext i1 %14 to i8
  store i8 %17, i8* %5
  %18 = load i8* %5, !range !1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %then-block-2828-, label %next-block

unwind_ast_2812_:                                 ; preds = %normal-return
  %20 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %20, { i8*, i32 }* %4
  br label %clean_ast_2812_

clean_ast_2812_:                                  ; preds = %unwind_ast_2812_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  br label %clean_custom_

then-block-2828-:                                 ; preds = %normal-return2
  %21 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %22 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %21, i32 0, i32 1
  %23 = load i64* %22
  %24 = add i64 %23, 1
  store i64 %24, i64* %22
  br label %next-block

next-block:                                       ; preds = %normal-return2, %then-block-2828-
  %25 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  %26 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %25, i64 40, i32 8, i1 false)
  %27 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 40, i32 8, i1 false)
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %3)
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %2)
  ret void
}

; Function Attrs: uwtable
define internal void @_ZN7treemap6insert20h8393856408609182227E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40), i8** noalias nocapture dereferenceable(8), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %node = alloca i8**
  %save = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %4 = alloca i8
  %5 = alloca { i8*, i32 }
  %match = alloca i8
  %inserted = alloca %"enum.core::option::Option<[HyObj]>[#3]"
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %arg8 = alloca %"struct.HyObj<[]>"
  %inserted13 = alloca %"enum.core::option::Option<[HyObj]>[#3]"
  %arg14 = alloca %"struct.collections::string::String<[]>[#6]"
  %arg15 = alloca %"struct.HyObj<[]>"
  %ExprAssign = alloca %"struct.collections::string::String<[]>[#6]"
  %arg19 = alloca %"struct.HyObj<[]>"
  %6 = alloca i8*
  %arg22 = alloca %"struct.collections::string::String<[]>[#6]"
  %arg23 = alloca %"struct.HyObj<[]>"
  store i8** %1, i8*** %node
  %7 = load i8*** %node
  %8 = load i8** %7
  %9 = icmp ne i8* %8, null
  switch i1 %9, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %10 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %11 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %10
  %12 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %11, i32 0, i32 0
  %13 = invoke i8 @_ZN6string22String...std..cmp..Ord3cmp20ha705343ffe40c966QVaE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %2, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %12)
          to label %normal-return unwind label %unwind_custom_

case_body1:                                       ; preds = %match_else
  %14 = load i8*** %node
  %15 = bitcast i8** %6 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %16 = invoke i8* @_ZN4heap15exchange_malloc20h216b81810816ba88epaE(i64 80, i64 8)
          to label %normal-return21 unwind label %unwind_custom_

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %17 = bitcast i8** %7 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %17, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  br label %case_body

normal-return:                                    ; preds = %case_body
  store i8 %13, i8* %4
  %18 = load i8* %4
  store i8 %18, i8* %match
  %19 = load i8* %match, !range !2
  switch i8 %19, label %match_else5 [
    i8 -1, label %match_case6
    i8 1, label %match_case7
  ]

unwind_custom_:                                   ; preds = %case_body1, %case_body4, %case_body3, %case_body2, %case_body
  %20 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %20, { i8*, i32 }* %5
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %21 = load { i8*, i32 }* %5
  resume { i8*, i32 } %21

clean_custom_:                                    ; preds = %clean_custom_26, %clean_custom_11, %unwind_custom_
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %3)
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %2)
  br label %resume

case_body2:                                       ; preds = %match_case6
  %22 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %22
  %24 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %23, i32 0, i32 2
  %25 = bitcast %"struct.collections::string::String<[]>[#6]"* %2 to i8*
  %26 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %25, i64 24, i32 8, i1 false)
  %27 = bitcast %"struct.collections::string::String<[]>[#6]"* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 24, i32 8, i1 false)
  %28 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  %29 = bitcast %"struct.HyObj<[]>"* %arg8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %28, i64 32, i32 8, i1 false)
  %30 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 32, i32 8, i1 false)
  invoke void @_ZN7treemap6insert20h8393856408609182227E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %inserted, i8** noalias nocapture dereferenceable(8) %24, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg8)
          to label %normal-return9 unwind label %unwind_custom_

case_body3:                                       ; preds = %match_case7
  %31 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %32 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %31
  %33 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %32, i32 0, i32 3
  %34 = bitcast %"struct.collections::string::String<[]>[#6]"* %2 to i8*
  %35 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %34, i64 24, i32 8, i1 false)
  %36 = bitcast %"struct.collections::string::String<[]>[#6]"* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 24, i32 8, i1 false)
  %37 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  %38 = bitcast %"struct.HyObj<[]>"* %arg15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %37, i64 32, i32 8, i1 false)
  %39 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 32, i32 8, i1 false)
  invoke void @_ZN7treemap6insert20h8393856408609182227E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %inserted13, i8** noalias nocapture dereferenceable(8) %33, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg14, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg15)
          to label %normal-return16 unwind label %unwind_custom_

case_body4:                                       ; preds = %match_else5
  %40 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %41 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %40
  %42 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %41, i32 0, i32 0
  %43 = bitcast %"struct.collections::string::String<[]>[#6]"* %2 to i8*
  %44 = bitcast %"struct.collections::string::String<[]>[#6]"* %ExprAssign to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %43, i64 24, i32 8, i1 false)
  %45 = bitcast %"struct.collections::string::String<[]>[#6]"* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 24, i32 8, i1 false)
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %42)
  %46 = bitcast %"struct.collections::string::String<[]>[#6]"* %ExprAssign to i8*
  %47 = bitcast %"struct.collections::string::String<[]>[#6]"* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %46, i64 24, i32 8, i1 false)
  %48 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to { i8, %"struct.HyObj<[]>" }*
  %49 = getelementptr inbounds { i8, %"struct.HyObj<[]>" }* %48, i32 0, i32 1
  %50 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %51 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %50
  %52 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %51, i32 0, i32 1
  %53 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  %54 = bitcast %"struct.HyObj<[]>"* %arg19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %53, i64 32, i32 8, i1 false)
  %55 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %55, i8 0, i64 32, i32 8, i1 false)
  invoke void @_ZN3mem7replace21h12474330962417798921E(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %49, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %52, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg19)
          to label %normal-return20 unwind label %unwind_custom_

match_else5:                                      ; preds = %normal-return
  br label %case_body4

match_case6:                                      ; preds = %normal-return
  br label %case_body2

match_case7:                                      ; preds = %normal-return
  br label %case_body3

normal-return9:                                   ; preds = %case_body2
  %56 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap4skew21h15979204421070069757E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %56)
          to label %normal-return10 unwind label %unwind_ast_2880_

normal-return10:                                  ; preds = %normal-return9
  %57 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap5split20h9575189442201275569E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %57)
          to label %normal-return12 unwind label %unwind_ast_2880_

unwind_ast_2880_:                                 ; preds = %normal-return10, %normal-return9
  %58 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %58, { i8*, i32 }* %5
  br label %clean_ast_2880_

clean_custom_11:                                  ; preds = %clean_ast_2870_
  br label %clean_custom_

clean_ast_2870_:                                  ; preds = %clean_ast_2903_, %clean_ast_2880_
  br label %clean_custom_11

clean_ast_2880_:                                  ; preds = %unwind_ast_2880_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %inserted)
  br label %clean_ast_2870_

normal-return12:                                  ; preds = %normal-return10
  %59 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %inserted to i8*
  %60 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %59, i64 40, i32 8, i1 false)
  %61 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %inserted to i8*
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 40, i32 8, i1 false)
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %inserted)
  br label %join

normal-return16:                                  ; preds = %case_body3
  %62 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap4skew21h15979204421070069757E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %62)
          to label %normal-return17 unwind label %unwind_ast_2903_

normal-return17:                                  ; preds = %normal-return16
  %63 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap5split20h9575189442201275569E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %63)
          to label %normal-return18 unwind label %unwind_ast_2903_

unwind_ast_2903_:                                 ; preds = %normal-return17, %normal-return16
  %64 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %64, { i8*, i32 }* %5
  br label %clean_ast_2903_

clean_ast_2903_:                                  ; preds = %unwind_ast_2903_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %inserted13)
  br label %clean_ast_2870_

normal-return18:                                  ; preds = %normal-return17
  %65 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %inserted13 to i8*
  %66 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %65, i64 40, i32 8, i1 false)
  %67 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %inserted13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %67, i8 0, i64 40, i32 8, i1 false)
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %inserted13)
  br label %join

normal-return20:                                  ; preds = %case_body4
  %68 = getelementptr inbounds %"enum.core::option::Option<[HyObj]>[#3]"* %0, i32 0, i32 0
  store i8 1, i8* %68
  br label %join

join:                                             ; preds = %normal-return20, %normal-return18, %normal-return12
  br label %join27

normal-return21:                                  ; preds = %case_body1
  %69 = bitcast i8* %16 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %70 = bitcast %"struct.collections::string::String<[]>[#6]"* %2 to i8*
  %71 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %70, i64 24, i32 8, i1 false)
  %72 = bitcast %"struct.collections::string::String<[]>[#6]"* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %72, i8 0, i64 24, i32 8, i1 false)
  %73 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  %74 = bitcast %"struct.HyObj<[]>"* %arg23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %73, i64 32, i32 8, i1 false)
  %75 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %75, i8 0, i64 32, i32 8, i1 false)
  invoke void @"_ZN7treemap25TreeNode$LT$K$C$$x20V$GT$3new21h11010550944583963359E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias nocapture sret dereferenceable(80) %69, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg22, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg23)
          to label %normal-return24 unwind label %unwind_custom_25

normal-return24:                                  ; preds = %normal-return21
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %69, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %15
  %76 = load i8** %6
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %14)
  store i8* %76, i8** %14
  %77 = getelementptr inbounds %"enum.core::option::Option<[HyObj]>[#3]"* %0, i32 0, i32 0
  store i8 0, i8* %77
  br label %join27

unwind_custom_25:                                 ; preds = %normal-return21
  %78 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %78, { i8*, i32 }* %5
  br label %clean_custom_26

clean_custom_26:                                  ; preds = %unwind_custom_25
  %79 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %69 to i8*
  call void @_ZN4heap13exchange_free20h0bc72fdf58e19b8easaE(i8* %79, i64 80, i64 8)
  br label %clean_custom_

join27:                                           ; preds = %normal-return24, %join
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %3)
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN6string22String...std..cmp..Ord3cmp20ha705343ffe40c966QVaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca %"struct.collections::string::String<[]>[#6]"*
  %__arg_0 = alloca %"struct.collections::string::String<[]>[#6]"*
  %__self_1_0 = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %__self_0_0 = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %__test = alloca i8
  %2 = alloca i8
  %3 = alloca i8
  %arg = alloca i8
  store %"struct.collections::string::String<[]>[#6]"* %0, %"struct.collections::string::String<[]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %__arg_0
  %4 = load %"struct.collections::string::String<[]>[#6]"** %__arg_0
  %5 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %4, i32 0, i32 0
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %5, %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_1_0
  br label %case_body

case_body:                                        ; preds = %entry-block
  %6 = load %"struct.collections::string::String<[]>[#6]"** %self
  %7 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %6, i32 0, i32 0
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %7, %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_0_0
  br label %case_body1

case_body1:                                       ; preds = %case_body
  %8 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_0_0
  %9 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_1_0
  %10 = call i8 @"_ZN3vec16Vec$LT$T$GT$.Ord3cmp20h3117722669979284157E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %8, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %9)
  store i8 %10, i8* %__test
  store i8 0, i8* %3
  %11 = load i8* %3
  store i8 %11, i8* %arg
  %12 = call zeroext i1 @_ZN3cmp30Ordering...std..cmp..PartialEq2eq20h359d0f8e08529a208YaE(i8* noalias dereferenceable(1) %__test, i8* noalias dereferenceable(1) %arg)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %2
  %14 = load i8* %2, !range !1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %then-block-2996-, label %else-block

then-block-2996-:                                 ; preds = %case_body1
  store i8 0, i8* %sret_slot
  br label %join

else-block:                                       ; preds = %case_body1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %sret_slot, i8* %__test, i64 1, i32 1, i1 false)
  br label %join

join:                                             ; preds = %else-block, %then-block-2996-
  br label %join2

join2:                                            ; preds = %join
  br label %join3

join3:                                            ; preds = %join2
  %16 = load i8* %sret_slot
  ret i8 %16
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN3vec16Vec$LT$T$GT$.Ord3cmp20h3117722669979284157E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %other = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca { i8*, i64 }
  %3 = alloca { i8*, i64 }
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %other
  %4 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice21h13688098575715568063E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %4)
  %5 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %other
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice21h13688098575715568063E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %3, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %5)
  %6 = call i8 @"_ZN5slice27_$BP$$x27a$x20$x5bT$x5d.Ord3cmp21h13063484597143589851E"({ i8*, i64 }* noalias dereferenceable(16) %2, { i8*, i64 }* noalias dereferenceable(16) %3)
  ret i8 %6
}

; Function Attrs: uwtable
define internal i8 @"_ZN5slice27_$BP$$x27a$x20$x5bT$x5d.Ord3cmp21h13063484597143589851E"({ i8*, i64 }* noalias nocapture dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %self = alloca { i8*, i64 }*
  %other = alloca { i8*, i64 }*
  %2 = alloca %"struct.core::slice::Items<[u8]>[#3]"
  %__adjust = alloca { i8*, i64 }
  %3 = alloca %"struct.core::slice::Items<[u8]>[#3]"
  %__adjust1 = alloca { i8*, i64 }
  store { i8*, i64 }* %0, { i8*, i64 }** %self
  store { i8*, i64 }* %1, { i8*, i64 }** %other
  %4 = load { i8*, i64 }** %self
  %5 = getelementptr inbounds { i8*, i64 }* %4, i32 0, i32 0
  %6 = load i8** %5
  %7 = getelementptr inbounds { i8*, i64 }* %4, i32 0, i32 1
  %8 = load i64* %7
  %9 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %6, i8** %9
  %10 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %8, i64* %10
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h11572794419572564675E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %2, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  %11 = load { i8*, i64 }** %other
  %12 = getelementptr inbounds { i8*, i64 }* %11, i32 0, i32 0
  %13 = load i8** %12
  %14 = getelementptr inbounds { i8*, i64 }* %11, i32 0, i32 1
  %15 = load i64* %14
  %16 = getelementptr inbounds { i8*, i64 }* %__adjust1, i32 0, i32 0
  store i8* %13, i8** %16
  %17 = getelementptr inbounds { i8*, i64 }* %__adjust1, i32 0, i32 1
  store i64 %15, i64* %17
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h11572794419572564675E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %3, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust1)
  %18 = call i8 @_ZN4iter5order3cmp21h15772816126257048463E(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16) %2, %"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16) %3)
  ret i8 %18
}

; Function Attrs: uwtable
define internal i8 @_ZN4iter5order3cmp21h15772816126257048463E(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16), %"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %llretslotptr = alloca i8*
  %iret_slot = alloca {}
  %2 = alloca { i8*, i8* }
  %__llmatch = alloca i8**
  %x = alloca i8*
  %__llmatch4 = alloca i8**
  %y = alloca i8*
  %ret_slot = alloca i8
  %ret_slot11 = alloca i8
  %ret_slot12 = alloca i8
  %3 = alloca i8
  %match = alloca i8
  %__llmatch15 = alloca i8*
  %non_eq = alloca i8
  %ret_slot18 = alloca i8
  br label %loop_body

loop_exit:                                        ; No predecessors!
  unreachable

return:                                           ; preds = %clean_custom_
  %4 = load i8** %llretslotptr
  %5 = load i8* %4
  ret i8 %5

loop_body:                                        ; preds = %join21, %entry-block
  %6 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 0
  %7 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h7673216705032017913E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias dereferenceable(16) %0)
  store i8* %7, i8** %6
  %8 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 1
  %9 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h7673216705032017913E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias dereferenceable(16) %1)
  store i8* %9, i8** %8
  %10 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 0
  %11 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 1
  %12 = load i8** %10
  %13 = icmp ne i8* %12, null
  switch i1 %13, label %match_else [
    i1 false, label %match_case
    i1 true, label %match_case7
  ]

case_body:                                        ; preds = %match_case6
  store i8 0, i8* %ret_slot
  store i8* %ret_slot, i8** %llretslotptr
  br label %clean_ast_3068_

case_body1:                                       ; preds = %match_else5
  store i8 -1, i8* %ret_slot11
  store i8* %ret_slot11, i8** %llretslotptr
  br label %clean_ast_3068_

case_body2:                                       ; preds = %match_else10, %match_case9
  store i8 1, i8* %ret_slot12
  store i8* %ret_slot12, i8** %llretslotptr
  br label %clean_ast_3068_

case_body3:                                       ; preds = %match_else8
  %14 = load i8*** %__llmatch
  %15 = load i8** %14
  store i8* %15, i8** %x
  %16 = load i8*** %__llmatch4
  %17 = load i8** %16
  store i8* %17, i8** %y
  %18 = call i8 @"_ZN3cmp5impls19_$BP$$x27a$x20T.Ord3cmp20h8844210915587222908E"(i8** noalias dereferenceable(8) %x, i8** noalias dereferenceable(8) %y)
  store i8 %18, i8* %3
  %19 = load i8* %3
  store i8 %19, i8* %match
  %20 = load i8* %match, !range !2
  switch i8 %20, label %match_else16 [
    i8 0, label %match_case17
  ]

match_else:                                       ; preds = %loop_body
  %21 = load i8** %11
  %22 = icmp ne i8* %21, null
  switch i1 %22, label %match_else10 [
  ]

match_case:                                       ; preds = %loop_body
  %23 = load i8** %11
  %24 = icmp ne i8* %23, null
  switch i1 %24, label %match_else5 [
    i1 false, label %match_case6
  ]

match_else5:                                      ; preds = %match_case
  br label %case_body1

match_case6:                                      ; preds = %match_case
  br label %case_body

match_case7:                                      ; preds = %loop_body
  %25 = load i8** %11
  %26 = icmp ne i8* %25, null
  switch i1 %26, label %match_else8 [
    i1 false, label %match_case9
  ]

match_else8:                                      ; preds = %match_case7
  store i8** %10, i8*** %__llmatch
  store i8** %11, i8*** %__llmatch4
  br label %case_body3

match_case9:                                      ; preds = %match_case7
  br label %case_body2

match_else10:                                     ; preds = %match_else
  br label %case_body2

clean_custom_:                                    ; preds = %clean_ast_3068_
  br label %return

clean_ast_3068_:                                  ; preds = %clean_custom_19, %case_body2, %case_body1, %case_body
  br label %clean_custom_

case_body13:                                      ; preds = %match_case17
  br label %join

case_body14:                                      ; preds = %match_else16
  %27 = load i8** %__llmatch15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %non_eq, i8* %27, i64 1, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ret_slot18, i8* %non_eq, i64 1, i32 1, i1 false)
  store i8* %ret_slot18, i8** %llretslotptr
  br label %clean_custom_20

match_else16:                                     ; preds = %case_body3
  store i8* %match, i8** %__llmatch15
  br label %case_body14

match_case17:                                     ; preds = %case_body3
  br label %case_body13

clean_custom_19:                                  ; preds = %clean_ast_3095_
  br label %clean_ast_3068_

clean_ast_3095_:                                  ; preds = %clean_custom_20
  br label %clean_custom_19

clean_custom_20:                                  ; preds = %case_body14
  br label %clean_ast_3095_

join:                                             ; preds = %case_body13
  br label %join21

join21:                                           ; preds = %join
  br label %loop_body
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN3cmp5impls19_$BP$$x27a$x20T.Ord3cmp20h8844210915587222908E"(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %other = alloca i8**
  store i8** %0, i8*** %self
  store i8** %1, i8*** %other
  %2 = load i8*** %self
  %3 = load i8** %2
  %4 = load i8*** %other
  %5 = load i8** %4
  %6 = call i8 @_ZN3cmp5impls6u8.Ord3cmp20hff0bfc350dff9a50CYaE(i8* noalias dereferenceable(1) %3, i8* noalias dereferenceable(1) %5)
  ret i8 %6
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3cmp5impls6u8.Ord3cmp20hff0bfc350dff9a50CYaE(i8* noalias nocapture dereferenceable(1), i8* noalias nocapture dereferenceable(1)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8*
  %other = alloca i8*
  store i8* %0, i8** %self
  store i8* %1, i8** %other
  %2 = load i8** %self
  %3 = load i8** %other
  %4 = load i8* %2
  %5 = load i8* %3
  %6 = icmp ult i8 %4, %5
  br i1 %6, label %then-block-3146-, label %else-block

then-block-3146-:                                 ; preds = %entry-block
  store i8 -1, i8* %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %7 = load i8** %self
  %8 = load i8** %other
  %9 = load i8* %7
  %10 = load i8* %8
  %11 = icmp ugt i8 %9, %10
  br i1 %11, label %then-block-3154-, label %else-block1

then-block-3154-:                                 ; preds = %else-block
  store i8 1, i8* %sret_slot
  br label %join

else-block1:                                      ; preds = %else-block
  store i8 0, i8* %sret_slot
  br label %join

join:                                             ; preds = %else-block1, %then-block-3154-
  br label %join2

join2:                                            ; preds = %join, %then-block-3146-
  %12 = load i8* %sret_slot
  ret i8 %12
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3cmp30Ordering...std..cmp..PartialEq2eq20h359d0f8e08529a208YaE(i8* noalias nocapture dereferenceable(1), i8* noalias nocapture dereferenceable(1)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8*
  %__arg_0 = alloca i8*
  %2 = alloca { i8*, i8* }
  %__self_vi = alloca i64
  %__arg_1_vi = alloca i64
  store i8* %0, i8** %self
  store i8* %1, i8** %__arg_0
  %3 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 0
  %4 = load i8** %self
  store i8* %4, i8** %3
  %5 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 1
  %6 = load i8** %__arg_0
  store i8* %6, i8** %5
  %7 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 0
  %8 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 1
  %9 = load i8** %7
  %10 = load i8* %9, !range !2
  switch i8 %10, label %match_else [
    i8 -1, label %match_case
    i8 0, label %match_case6
    i8 1, label %match_case9
  ]

case_body:                                        ; preds = %match_case5
  store i8 1, i8* %sret_slot
  br label %join25

case_body1:                                       ; preds = %match_case8
  store i8 1, i8* %sret_slot
  br label %join25

case_body2:                                       ; preds = %match_case11
  store i8 1, i8* %sret_slot
  br label %join25

case_body3:                                       ; preds = %match_else, %match_else10, %match_else7, %match_else4
  %11 = load i8** %self
  %12 = load i8* %11, !range !2
  switch i8 %12, label %match_else15 [
    i8 -1, label %match_case16
    i8 0, label %match_case17
  ]

match_else:                                       ; preds = %entry-block
  br label %case_body3

match_case:                                       ; preds = %entry-block
  %13 = load i8** %8
  %14 = load i8* %13, !range !2
  switch i8 %14, label %match_else4 [
    i8 -1, label %match_case5
  ]

match_else4:                                      ; preds = %match_case
  br label %case_body3

match_case5:                                      ; preds = %match_case
  br label %case_body

match_case6:                                      ; preds = %entry-block
  %15 = load i8** %8
  %16 = load i8* %15, !range !2
  switch i8 %16, label %match_else7 [
    i8 0, label %match_case8
  ]

match_else7:                                      ; preds = %match_case6
  br label %case_body3

match_case8:                                      ; preds = %match_case6
  br label %case_body1

match_case9:                                      ; preds = %entry-block
  %17 = load i8** %8
  %18 = load i8* %17, !range !2
  switch i8 %18, label %match_else10 [
    i8 1, label %match_case11
  ]

match_else10:                                     ; preds = %match_case9
  br label %case_body3

match_case11:                                     ; preds = %match_case9
  br label %case_body2

case_body12:                                      ; preds = %match_case16
  store i64 0, i64* %__self_vi
  br label %join

case_body13:                                      ; preds = %match_case17
  store i64 1, i64* %__self_vi
  br label %join

case_body14:                                      ; preds = %match_else15
  store i64 2, i64* %__self_vi
  br label %join

match_else15:                                     ; preds = %case_body3
  br label %case_body14

match_case16:                                     ; preds = %case_body3
  br label %case_body12

match_case17:                                     ; preds = %case_body3
  br label %case_body13

join:                                             ; preds = %case_body14, %case_body13, %case_body12
  %19 = load i8** %__arg_0
  %20 = load i8* %19, !range !2
  switch i8 %20, label %match_else21 [
    i8 -1, label %match_case22
    i8 0, label %match_case23
  ]

case_body18:                                      ; preds = %match_case22
  store i64 0, i64* %__arg_1_vi
  br label %join24

case_body19:                                      ; preds = %match_case23
  store i64 1, i64* %__arg_1_vi
  br label %join24

case_body20:                                      ; preds = %match_else21
  store i64 2, i64* %__arg_1_vi
  br label %join24

match_else21:                                     ; preds = %join
  br label %case_body20

match_case22:                                     ; preds = %join
  br label %case_body18

match_case23:                                     ; preds = %join
  br label %case_body19

join24:                                           ; preds = %case_body20, %case_body19, %case_body18
  store i8 0, i8* %sret_slot
  br label %join25

join25:                                           ; preds = %join24, %case_body2, %case_body1, %case_body
  %21 = load i8* %sret_slot, !range !1
  %22 = trunc i8 %21 to i1
  ret i1 %22
}

define internal void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  call void @_ZN9HyObjType14glue_drop.211317h4ee3304241eff94eE(%"enum.HyObjType<[]>"* %1)
  ret void
}

define internal void @_ZN9HyObjType14glue_drop.211317h4ee3304241eff94eE(%"enum.HyObjType<[]>"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"enum.HyObjType<[]>"* %0, i32 0, i32 0
  %2 = load i8* %1, !range !0
  switch i8 %2, label %enum-iter-unr [
    i8 0, label %enum-iter-variant-0
    i8 1, label %enum-iter-variant-1
    i8 2, label %enum-iter-variant-2
    i8 3, label %enum-iter-variant-3
    i8 4, label %enum-iter-variant-4
    i8 5, label %enum-iter-variant-5
  ]

enum-iter-unr:                                    ; preds = %entry-block
  unreachable

enum-iter-next:                                   ; preds = %enum-iter-variant-5, %enum-iter-variant-4, %enum-iter-variant-3, %enum-iter-variant-2, %enum-iter-variant-1, %enum-iter-variant-0
  ret void

enum-iter-variant-0:                              ; preds = %entry-block
  %3 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }*
  %4 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }* %3, i32 0, i32 1
  call void @"_ZN72collections..treemap..TreeMap$LT$collections..string..String$C$HyObj$GT$14glue_drop.211617h4a2f08127eb0ad56E"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %4)
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %entry-block
  %5 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %6 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %5, i32 0, i32 1
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %6)
  br label %enum-iter-next

enum-iter-variant-2:                              ; preds = %entry-block
  %7 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, i64 }*
  %8 = getelementptr inbounds { i8, i64 }* %7, i32 0, i32 1
  br label %enum-iter-next

enum-iter-variant-3:                              ; preds = %entry-block
  %9 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, double }*
  %10 = getelementptr inbounds { i8, double }* %9, i32 0, i32 1
  br label %enum-iter-next

enum-iter-variant-4:                              ; preds = %entry-block
  %11 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }*
  %12 = getelementptr inbounds { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }* %11, i32 0, i32 1
  call void @"_ZN34collections..vec..Vec$LT$HyObj$GT$14glue_drop.212817h167f3ba51fd64fedE"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* %12)
  br label %enum-iter-next

enum-iter-variant-5:                              ; preds = %entry-block
  %13 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, i8 }*
  %14 = getelementptr inbounds { i8, i8 }* %13, i32 0, i32 1
  br label %enum-iter-next
}

define internal void @"_ZN72collections..treemap..TreeMap$LT$collections..string..String$C$HyObj$GT$14glue_drop.211617h4a2f08127eb0ad56E"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %1)
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 1
  ret void
}

define internal void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8**) unnamed_addr #3 {
entry-block:
  %1 = load i8** %0
  %2 = icmp ne i8* %1, null
  switch i1 %2, label %enum-iter-unr [
    i1 false, label %enum-iter-variant-0
    i1 true, label %enum-iter-variant-1
  ]

enum-iter-unr:                                    ; preds = %entry-block
  unreachable

enum-iter-next:                                   ; preds = %enum-iter-variant-1, %enum-iter-variant-0
  ret void

enum-iter-variant-0:                              ; preds = %entry-block
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %entry-block
  %3 = bitcast i8** %0 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %3)
  br label %enum-iter-next
}

define internal void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**) unnamed_addr #3 {
entry-block:
  %1 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %0
  %2 = icmp ne %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %1, null
  br i1 %2, label %cond, label %next

next:                                             ; preds = %cond, %entry-block
  ret void

cond:                                             ; preds = %entry-block
  call void @"_ZN73collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$14glue_drop.212517h1152ce03cce2f484E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %1)
  %3 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %1 to i8*
  call void @_ZN4heap13exchange_free20h0bc72fdf58e19b8easaE(i8* %3, i64 80, i64 8)
  br label %next
}

define internal void @"_ZN73collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$14glue_drop.212517h1152ce03cce2f484E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 0
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %1)
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 1
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  %3 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %3)
  %4 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 3
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %4)
  %5 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 4
  ret void
}

define internal void @"_ZN34collections..vec..Vec$LT$HyObj$GT$14glue_drop.212817h167f3ba51fd64fedE"(%"struct.collections::vec::Vec<[HyObj]>[#6]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, i32 0, i32 0
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, i32 0, i32 1
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop20h4416693129012134804E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture dereferenceable(24) %0)
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop20h4416693129012134804E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %src.i = alloca %"struct.HyObj<[]>"*
  %tmp.i = alloca %"struct.HyObj<[]>"
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  %1 = alloca %"struct.core::slice::Items<[HyObj]>[#3]"
  %2 = alloca { %"struct.HyObj<[]>"*, i64 }
  %__adjust = alloca { %"struct.HyObj<[]>"*, i64 }
  %for_head = alloca %"struct.core::slice::Items<[HyObj]>[#3]"*
  %loop_option = alloca i8*
  %3 = alloca %"struct.HyObj<[]>"
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %4 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %5 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %4, i32 0, i32 1
  %6 = load i64* %5
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-1390-, label %next-block

then-block-1390-:                                 ; preds = %entry-block
  %8 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice21h15315688070211870861E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24) %8)
  %9 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %2, i32 0, i32 0
  %10 = load %"struct.HyObj<[]>"** %9
  %11 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %2, i32 0, i32 1
  %12 = load i64* %11
  %13 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %__adjust, i32 0, i32 0
  store %"struct.HyObj<[]>"* %10, %"struct.HyObj<[]>"** %13
  %14 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %__adjust, i32 0, i32 1
  store i64 %12, i64* %14
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h16388945406815431093E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  store %"struct.core::slice::Items<[HyObj]>[#3]"* %1, %"struct.core::slice::Items<[HyObj]>[#3]"** %for_head
  %15 = load %"struct.core::slice::Items<[HyObj]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  %16 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %17 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %16, i32 0, i32 2
  %18 = load %"struct.HyObj<[]>"** %17
  %19 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %20 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %19, i32 0, i32 1
  %21 = load i64* %20
  call void @_ZN3vec7dealloc20h2813803627447101815E(%"struct.HyObj<[]>"* %18, i64 %21)
  br label %next-block

for_loopback:                                     ; preds = %for_body, %then-block-1390-
  %22 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6807504957671280723E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias dereferenceable(16) %15)
  store i8* %22, i8** %loop_option
  %23 = load i8** %loop_option
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i8
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %27 = bitcast i8** %loop_option to %"struct.HyObj<[]>"**
  %28 = load %"struct.HyObj<[]>"** %27
  store %"struct.HyObj<[]>"* %28, %"struct.HyObj<[]>"** %src.i
  call void @_ZN3mem13uninitialized20h2537606451615014841E(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %tmp.i)
  %29 = load %"struct.HyObj<[]>"** %src.i
  %30 = bitcast %"struct.HyObj<[]>"* %tmp.i to i8*
  %31 = bitcast %"struct.HyObj<[]>"* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  %32 = bitcast %"struct.HyObj<[]>"* %tmp.i to i8*
  %33 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %32, i64 32, i32 8, i1 false)
  %34 = bitcast %"struct.HyObj<[]>"* %tmp.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 32, i32 8, i1 false)
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %tmp.i)
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %3)
  br label %for_loopback

next-block:                                       ; preds = %entry-block, %for_exit
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice21h15315688070211870861E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  %2 = alloca %"struct.HyObj<[]>"*
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %1, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %3 = bitcast { %"struct.HyObj<[]>"*, i64 }* %0 to %"struct.core::raw::Slice<[HyObj]>[#3]"*
  %4 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %6 = call %"struct.HyObj<[]>"* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr20h9668119288292917374E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24) %5)
  store %"struct.HyObj<[]>"* %6, %"struct.HyObj<[]>"** %2
  %7 = load %"struct.HyObj<[]>"** %2
  store %"struct.HyObj<[]>"* %7, %"struct.HyObj<[]>"** %4
  %8 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %3, i32 0, i32 1
  %9 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %10 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %9, i32 0, i32 0
  %11 = load i64* %10
  store i64 %11, i64* %8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal %"struct.HyObj<[]>"* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr20h9668119288292917374E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %1, i32 0, i32 2
  %3 = load %"struct.HyObj<[]>"** %2
  ret %"struct.HyObj<[]>"* %3
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized20h2537606451615014841E(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32)) unnamed_addr #1 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3vec7dealloc20h2813803627447101815E(%"struct.HyObj<[]>"*, i64) unnamed_addr #1 {
entry-block:
  %ptr = alloca %"struct.HyObj<[]>"*
  %len = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %ptr
  store i64 %1, i64* %len
  %5 = call i64 @_ZN3mem7size_of21h12513579423787918067E()
  store i64 %5, i64* %2
  %6 = load i64* %2
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-1468-, label %next-block

then-block-1468-:                                 ; preds = %entry-block
  %8 = load %"struct.HyObj<[]>"** %ptr
  %9 = bitcast %"struct.HyObj<[]>"* %8 to i8*
  %10 = call i64 @_ZN3mem7size_of21h12513579423787918067E()
  store i64 %10, i64* %3
  %11 = load i64* %3
  %12 = load i64* %len
  %13 = mul i64 %12, %11
  %14 = call i64 @_ZN3mem12min_align_of19h473435036134124028E()
  store i64 %14, i64* %4
  %15 = load i64* %4
  call void @_ZN4heap10deallocate20h0ea571fa8dfc4d0cxsaE(i8* %9, i64 %13, i64 %15)
  br label %next-block

next-block:                                       ; preds = %entry-block, %then-block-1468-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem12min_align_of19h473435036134124028E() unnamed_addr #1 {
entry-block:
  ret i64 8
}

; Function Attrs: uwtable
define internal void @_ZN7treemap4skew21h15979204421070069757E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8)) unnamed_addr #0 {
entry-block:
  %node = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %1 = alloca i8
  %2 = alloca i8*
  %3 = alloca { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }
  %__closure = alloca { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }
  %save = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %4 = alloca { i8*, i32 }
  %5 = alloca i8*
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %6
  %8 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %7, i32 0, i32 2
  %9 = call i8* @"_ZN6option15Option$LT$T$GT$6as_ref19h192773552198828614E"(i8** noalias dereferenceable(8) %8)
  store i8* %9, i8** %2
  %10 = load i8** %2
  %11 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %11
  %12 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 0
  store i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)* @_ZN7treemap4skew12closure.2145E, i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %12
  %13 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure to i8*
  %14 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 1
  store i8* %13, i8** %14
  %15 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or21h13384801018102625346E"(i8* %10, i1 zeroext false, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %3)
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %1
  %17 = load i8* %1, !range !1
  %18 = trunc i8 %17 to i1
  br i1 %18, label %then-block-3263-, label %next-block

then-block-3263-:                                 ; preds = %entry-block
  %19 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %20 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %19
  %21 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %20, i32 0, i32 2
  %22 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap21h12857417904506760058E"(i8** noalias dereferenceable(8) %21)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %22, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %24 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %23
  %25 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %24, i32 0, i32 2
  %26 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  %27 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %26, i32 0, i32 3
  invoke void @_ZN3mem4swap20h5732509590869325980E(i8** noalias nocapture dereferenceable(8) %25, i8** noalias nocapture dereferenceable(8) %27)
          to label %normal-return unwind label %unwind_ast_3263_

normal-return:                                    ; preds = %then-block-3263-
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  invoke void @_ZN3mem4swap20h9415957163612546625E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %28, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %save)
          to label %normal-return1 unwind label %unwind_ast_3263_

unwind_ast_3263_:                                 ; preds = %normal-return, %then-block-3263-
  %29 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %29, { i8*, i32 }* %4
  br label %clean_ast_3263_

resume:                                           ; preds = %clean_custom_
  %30 = load { i8*, i32 }* %4
  resume { i8*, i32 } %30

clean_custom_:                                    ; preds = %clean_ast_3263_
  br label %resume

clean_ast_3263_:                                  ; preds = %unwind_ast_3263_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save)
  br label %clean_custom_

normal-return1:                                   ; preds = %normal-return
  %31 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %32 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %31
  %33 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %32, i32 0, i32 3
  %34 = bitcast i8** %5 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %35 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %35, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %34
  %36 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 8, i32 8, i1 false)
  %37 = load i8** %5
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %33)
  store i8* %37, i8** %33
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save)
  br label %next-block

next-block:                                       ; preds = %entry-block, %normal-return1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or21h13384801018102625346E"(i8*, i1 zeroext, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8*
  %def = alloca i8
  %__llmatch = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store i8* %0, i8** %self
  %3 = zext i1 %1 to i8
  store i8 %3, i8* %def
  %4 = load i8** %self
  %5 = icmp ne i8* %4, null
  switch i1 %5, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %6 = load i8* %def
  store i8 %6, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %__llmatch
  %8 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %7
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %8, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %t
  %9 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %2, i32 0, i32 0
  %10 = load i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %9
  %11 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %2, i32 0, i32 1
  %12 = load i8** %11
  %13 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %t
  %14 = call zeroext i1 %10(i8* %12, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8) %13)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  %16 = bitcast i8** %self to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %16, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %17 = load i8* %sret_slot, !range !1
  %18 = trunc i8 %17 to i1
  ret i1 %18
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$6as_ref19h192773552198828614E"(i8** noalias dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca i8**
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store i8** %0, i8*** %self
  %1 = load i8*** %self
  %2 = load i8** %1
  %3 = icmp ne i8* %2, null
  switch i1 %3, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %4 = bitcast i8** %sret_slot to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %5 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %5, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %4
  br label %join

case_body1:                                       ; preds = %match_else
  store i8* null, i8** %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %6 = bitcast i8** %1 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %6, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %7 = load i8** %sret_slot
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN7treemap4skew12closure.2145E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %2 = bitcast i8* %0 to { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %2, i32 0, i32 4
  %4 = getelementptr inbounds { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** }* %3, i32 0, i32 0
  %5 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %4
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %6
  %8 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %7, i32 0, i32 4
  %9 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %5
  %10 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %9
  %11 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %10, i32 0, i32 4
  %12 = load i64* %8
  %13 = load i64* %11
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i8
  %16 = trunc i8 %15 to i1
  ret i1 %16
}

; Function Attrs: inlinehint uwtable
define internal noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap21h12857417904506760058E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %fmt.i = alloca %"struct.core::fmt::Arguments<[]>[#3]"*
  %self = alloca i8**
  %1 = alloca i8*
  %match = alloca i8*
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %2 = alloca { %str_slice* }
  %3 = alloca %str_slice
  %match2 = alloca { %str_slice* }
  %__llmatch = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %4 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %5 = alloca { i8*, i32 }
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust4 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store i8** %0, i8*** %self
  %6 = load i8*** %self
  %7 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h7848564969736036808E"(i8** noalias dereferenceable(8) %6)
  store i8* %7, i8** %1
  %8 = load i8** %1
  store i8* %8, i8** %match
  %9 = load i8** %match
  %10 = icmp ne i8* %9, null
  switch i1 %10, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %11 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %12 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11
  %13 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11)
  %14 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 8, i32 8, i1 false)
  br label %join7

case_body1:                                       ; preds = %match_else
  %15 = getelementptr inbounds { %str_slice* }* %2, i32 0, i32 0
  %16 = getelementptr inbounds %str_slice* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([48 x i8]* @str2184, i32 0, i32 0), i8** %16
  %17 = getelementptr inbounds %str_slice* %3, i32 0, i32 1
  store i64 48, i64* %17
  store %str_slice* %3, %str_slice** %15
  %18 = load { %str_slice* }* %2
  store { %str_slice* } %18, { %str_slice* }* %match2
  %19 = getelementptr inbounds { %str_slice* }* %match2, i32 0, i32 0
  store %str_slice** %19, %str_slice*** %__llmatch
  br label %case_body3

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %20 = bitcast i8** %match to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %20, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  br label %case_body

case_body3:                                       ; preds = %case_body1
  %21 = load %str_slice*** %__llmatch
  %22 = load %str_slice** %21
  store %str_slice* %22, %str_slice** %__arg0
  %23 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %4 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %24 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %4, i32 0
  %25 = load %str_slice** %__arg0
  invoke void @_ZN3fmt8argument20h9205917117371530789E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %24, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show21h16792740918225742705E, %str_slice* noalias dereferenceable(16) %25)
          to label %normal-return unwind label %unwind_ast_3355_

normal-return:                                    ; preds = %case_body3
  %26 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %4, %"struct.core::fmt::Argument<[]>[#3]"** %26
  %27 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %27
  %28 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @"_ZN6option15Option$LT$T$GT$11take_unwrap15__STATIC_FMTSTR20h79b308b23b8faec4KDmE" to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %28
  %29 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %29
  %30 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %31 = load %"struct.core::fmt::Argument<[]>[#3]"** %30
  %32 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %33 = load i64* %32
  %34 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %31, %"struct.core::fmt::Argument<[]>[#3]"** %34
  %35 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust4, i32 0, i32 1
  store i64 %33, i64* %35
  invoke void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h246676d58674b75eEiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust4)
          to label %normal-return5 unwind label %unwind_ast_3355_

unwind_ast_3355_:                                 ; preds = %normal-return5, %normal-return, %case_body3
  %36 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %36, { i8*, i32 }* %5
  br label %clean_ast_3355_

resume:                                           ; preds = %clean_custom_
  %37 = load { i8*, i32 }* %5
  resume { i8*, i32 } %37

clean_custom_:                                    ; preds = %clean_ast_3355_
  br label %resume

clean_ast_3355_:                                  ; preds = %unwind_ast_3355_
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %match)
  br label %clean_custom_

normal-return5:                                   ; preds = %normal-return
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %38 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  invoke void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %38, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt10_FILE_LINE20h9519b9138055b1fdlDmE")
          to label %.noexc unwind label %unwind_ast_3355_

.noexc:                                           ; preds = %normal-return5
  unreachable

"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt20hc2bbed3b6c955ec6I5aE.exit": ; No predecessors!
  br label %normal-return6

normal-return6:                                   ; preds = %"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt20hc2bbed3b6c955ec6I5aE.exit"
  unreachable

join:                                             ; No predecessors!
  unreachable

join7:                                            ; preds = %case_body
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %match)
  ret %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %12
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h7848564969736036808E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace20h4235719478024966744E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace20h4235719478024966744E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  %2 = alloca { i8*, i32 }
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %3 = load i8*** %dest
  invoke void @_ZN3mem4swap20h5732509590869325980E(i8** noalias nocapture dereferenceable(8) %3, i8** noalias nocapture dereferenceable(8) %src)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %4 = bitcast i8** %src to i8*
  %5 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 8, i32 8, i1 false)
  %6 = bitcast i8** %src to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %src)
  %7 = load i8** %sret_slot
  ret i8* %7

unwind_custom_:                                   ; preds = %entry-block
  %8 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %8, { i8*, i32 }* %2
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %9 = load { i8*, i32 }* %2
  resume { i8*, i32 } %9

clean_custom_:                                    ; preds = %unwind_custom_
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %src)
  br label %resume
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h5732509590869325980E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  %2 = alloca { i8*, i32 }
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %3 = call i8* @_ZN3mem13uninitialized21h18413453909141084967E()
  store i8* %3, i8** %t
  %4 = load i8*** %x
  %5 = bitcast i8** %t to i8*
  %6 = bitcast i8** %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = load i8*** %x
  %8 = load i8*** %y
  %9 = bitcast i8** %7 to i8*
  %10 = bitcast i8** %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = load i8*** %y
  %12 = bitcast i8** %11 to i8*
  %13 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %14 = load i8** %t
  %15 = bitcast i8** %t to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 8, i32 8, i1 false)
  invoke void @_ZN3mem6forget20h1542776106552437429E(i8* %14)
          to label %normal-return unwind label %unwind_ast_3493_

normal-return:                                    ; preds = %entry-block
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %t)
  ret void

unwind_ast_3493_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_3493_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_3493_
  br label %resume

clean_ast_3493_:                                  ; preds = %unwind_ast_3493_
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized21h18413453909141084967E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h1542776106552437429E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  %2 = bitcast i8** %thing to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %thing)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h9415957163612546625E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8), %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %y = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %2 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %y
  %3 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @_ZN3mem13uninitialized21h10228680671715002299E()
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %3, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %t
  %4 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %5 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %t to i8*
  %6 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %8 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %y
  %9 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %7 to i8*
  %10 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %y
  %12 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11 to i8*
  %13 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %14 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %t
  %15 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %t to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 8, i32 8, i1 false)
  invoke void @_ZN3mem6forget21h11841498711661370324E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(80) %14)
          to label %normal-return unwind label %unwind_ast_3493_

normal-return:                                    ; preds = %entry-block
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %t)
  ret void

unwind_ast_3493_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_3493_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_3493_
  br label %resume

clean_ast_3493_:                                  ; preds = %unwind_ast_3493_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @_ZN3mem13uninitialized21h10228680671715002299E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %0 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %sret_slot
  ret %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget21h11841498711661370324E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(80)) unnamed_addr #1 {
entry-block:
  %thing = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %thing
  %1 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %thing
  %2 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %thing to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %thing)
  ret void
}

define internal void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"enum.core::option::Option<[HyObj]>[#3]"* %0, i32 0, i32 0
  %2 = load i8* %1, !range !1
  switch i8 %2, label %enum-iter-unr [
    i8 0, label %enum-iter-variant-0
    i8 1, label %enum-iter-variant-1
  ]

enum-iter-unr:                                    ; preds = %entry-block
  unreachable

enum-iter-next:                                   ; preds = %enum-iter-variant-1, %enum-iter-variant-0
  ret void

enum-iter-variant-0:                              ; preds = %entry-block
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %entry-block
  %3 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to { i8, %"struct.HyObj<[]>" }*
  %4 = getelementptr inbounds { i8, %"struct.HyObj<[]>" }* %3, i32 0, i32 1
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %4)
  br label %enum-iter-next
}

; Function Attrs: uwtable
define internal void @_ZN7treemap5split20h9575189442201275569E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8)) unnamed_addr #0 {
entry-block:
  %node = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %1 = alloca i8
  %2 = alloca i8*
  %3 = alloca { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }
  %__closure = alloca { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }
  %save = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %4 = alloca { i8*, i32 }
  %5 = alloca i8*
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %6
  %8 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %7, i32 0, i32 3
  %9 = call i8* @"_ZN6option15Option$LT$T$GT$6as_ref19h192773552198828614E"(i8** noalias dereferenceable(8) %8)
  store i8* %9, i8** %2
  %10 = load i8** %2
  %11 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %11
  %12 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 0
  store i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)* @_ZN7treemap5split12closure.2188E, i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %12
  %13 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure to i8*
  %14 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 1
  store i8* %13, i8** %14
  %15 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or19h736068483881948971E"(i8* %10, i1 zeroext false, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %3)
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %1
  %17 = load i8* %1, !range !1
  %18 = trunc i8 %17 to i1
  br i1 %18, label %then-block-3651-, label %next-block

then-block-3651-:                                 ; preds = %entry-block
  %19 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %20 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %19
  %21 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %20, i32 0, i32 3
  %22 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap21h12857417904506760058E"(i8** noalias dereferenceable(8) %21)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %22, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %24 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %23
  %25 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %24, i32 0, i32 3
  %26 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  %27 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %26, i32 0, i32 2
  invoke void @_ZN3mem4swap20h5732509590869325980E(i8** noalias nocapture dereferenceable(8) %25, i8** noalias nocapture dereferenceable(8) %27)
          to label %normal-return unwind label %unwind_ast_3651_

normal-return:                                    ; preds = %then-block-3651-
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  %29 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %28, i32 0, i32 4
  %30 = load i64* %29
  %31 = add i64 %30, 1
  store i64 %31, i64* %29
  %32 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  invoke void @_ZN3mem4swap20h9415957163612546625E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %32, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %save)
          to label %normal-return1 unwind label %unwind_ast_3651_

unwind_ast_3651_:                                 ; preds = %normal-return, %then-block-3651-
  %33 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %33, { i8*, i32 }* %4
  br label %clean_ast_3651_

resume:                                           ; preds = %clean_custom_
  %34 = load { i8*, i32 }* %4
  resume { i8*, i32 } %34

clean_custom_:                                    ; preds = %clean_ast_3651_
  br label %resume

clean_ast_3651_:                                  ; preds = %unwind_ast_3651_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save)
  br label %clean_custom_

normal-return1:                                   ; preds = %normal-return
  %35 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %36 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %35
  %37 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %36, i32 0, i32 2
  %38 = bitcast i8** %5 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %39 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %39, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %38
  %40 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 8, i32 8, i1 false)
  %41 = load i8** %5
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %37)
  store i8* %41, i8** %37
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save)
  br label %next-block

next-block:                                       ; preds = %entry-block, %normal-return1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or19h736068483881948971E"(i8*, i1 zeroext, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8*
  %def = alloca i8
  %__llmatch = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store i8* %0, i8** %self
  %3 = zext i1 %1 to i8
  store i8 %3, i8* %def
  %4 = load i8** %self
  %5 = icmp ne i8* %4, null
  switch i1 %5, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %6 = load i8* %def
  store i8 %6, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %__llmatch
  %8 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %7
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %8, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %t
  %9 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %2, i32 0, i32 0
  %10 = load i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %9
  %11 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %2, i32 0, i32 1
  %12 = load i8** %11
  %13 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %t
  %14 = call zeroext i1 %10(i8* %12, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8) %13)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  %16 = bitcast i8** %self to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %16, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %17 = load i8* %sret_slot, !range !1
  %18 = trunc i8 %17 to i1
  ret i1 %18
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN7treemap5split12closure.2188E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %2 = alloca i8*
  %3 = alloca { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }
  %__closure = alloca { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %4 = bitcast i8* %0 to { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }*
  %5 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %4, i32 0, i32 4
  %6 = getelementptr inbounds { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** }* %5, i32 0, i32 0
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %6
  %8 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %9 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %8
  %10 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %9, i32 0, i32 3
  %11 = call i8* @"_ZN6option15Option$LT$T$GT$6as_ref19h192773552198828614E"(i8** noalias dereferenceable(8) %10)
  store i8* %11, i8** %2
  %12 = load i8** %2
  %13 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %7, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %13
  %14 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 0
  store i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)* @_ZN7treemap5split12closure.2190E, i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %14
  %15 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure to i8*
  %16 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 1
  store i8* %15, i8** %16
  %17 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or21h17773512705674342417E"(i8* %12, i1 zeroext false, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %3)
  %18 = zext i1 %17 to i8
  %19 = trunc i8 %18 to i1
  ret i1 %19
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or21h17773512705674342417E"(i8*, i1 zeroext, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8*
  %def = alloca i8
  %__llmatch = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store i8* %0, i8** %self
  %3 = zext i1 %1 to i8
  store i8 %3, i8* %def
  %4 = load i8** %self
  %5 = icmp ne i8* %4, null
  switch i1 %5, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %6 = load i8* %def
  store i8 %6, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %__llmatch
  %8 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %7
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %8, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %t
  %9 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %2, i32 0, i32 0
  %10 = load i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %9
  %11 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %2, i32 0, i32 1
  %12 = load i8** %11
  %13 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %t
  %14 = call zeroext i1 %10(i8* %12, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8) %13)
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  %16 = bitcast i8** %self to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %16, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %17 = load i8* %sret_slot, !range !1
  %18 = trunc i8 %17 to i1
  ret i1 %18
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN7treemap5split12closure.2190E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %y = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %y
  %2 = bitcast i8* %0 to { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %2, i32 0, i32 4
  %4 = getelementptr inbounds { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** }* %3, i32 0, i32 0
  %5 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %4
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %y
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %6
  %8 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %7, i32 0, i32 4
  %9 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %5
  %10 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %9
  %11 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %10, i32 0, i32 4
  %12 = load i64* %8
  %13 = load i64* %11
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i8
  %16 = trunc i8 %15 to i1
  ret i1 %16
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem7replace21h12474330962417798921E(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #1 {
entry-block:
  %dest = alloca %"struct.HyObj<[]>"*
  %3 = alloca { i8*, i32 }
  store %"struct.HyObj<[]>"* %1, %"struct.HyObj<[]>"** %dest
  %4 = load %"struct.HyObj<[]>"** %dest
  invoke void @_ZN3mem4swap20h1209716546684472671E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %4, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %2)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %5 = bitcast %"struct.HyObj<[]>"* %2 to i8*
  %6 = bitcast %"struct.HyObj<[]>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 32, i32 8, i1 false)
  %7 = bitcast %"struct.HyObj<[]>"* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 32, i32 8, i1 false)
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  ret void

unwind_custom_:                                   ; preds = %entry-block
  %8 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %8, { i8*, i32 }* %3
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %9 = load { i8*, i32 }* %3
  resume { i8*, i32 } %9

clean_custom_:                                    ; preds = %unwind_custom_
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  br label %resume
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h1209716546684472671E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #1 {
entry-block:
  %x = alloca %"struct.HyObj<[]>"*
  %y = alloca %"struct.HyObj<[]>"*
  %t = alloca %"struct.HyObj<[]>"
  %arg = alloca %"struct.HyObj<[]>"
  %2 = alloca { i8*, i32 }
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %x
  store %"struct.HyObj<[]>"* %1, %"struct.HyObj<[]>"** %y
  call void @_ZN3mem13uninitialized20h2537606451615014841E(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %t)
  %3 = load %"struct.HyObj<[]>"** %x
  %4 = bitcast %"struct.HyObj<[]>"* %t to i8*
  %5 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = load %"struct.HyObj<[]>"** %x
  %7 = load %"struct.HyObj<[]>"** %y
  %8 = bitcast %"struct.HyObj<[]>"* %6 to i8*
  %9 = bitcast %"struct.HyObj<[]>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load %"struct.HyObj<[]>"** %y
  %11 = bitcast %"struct.HyObj<[]>"* %10 to i8*
  %12 = bitcast %"struct.HyObj<[]>"* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  %13 = bitcast %"struct.HyObj<[]>"* %t to i8*
  %14 = bitcast %"struct.HyObj<[]>"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %13, i64 32, i32 8, i1 false)
  %15 = bitcast %"struct.HyObj<[]>"* %t to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 32, i32 8, i1 false)
  invoke void @_ZN3mem6forget19h763088412608781890E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg)
          to label %normal-return unwind label %unwind_ast_3493_

normal-return:                                    ; preds = %entry-block
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %t)
  ret void

unwind_ast_3493_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_3493_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_3493_
  br label %resume

clean_ast_3493_:                                  ; preds = %unwind_ast_3493_
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget19h763088412608781890E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #1 {
entry-block:
  %arg = alloca %"struct.HyObj<[]>"
  %1 = bitcast %"struct.HyObj<[]>"* %0 to i8*
  %2 = bitcast %"struct.HyObj<[]>"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 32, i32 8, i1 false)
  %3 = bitcast %"struct.HyObj<[]>"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 8, i1 false)
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %0)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN7treemap25TreeNode$LT$K$C$$x20V$GT$3new21h11010550944583963359E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias nocapture sret dereferenceable(80), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #1 {
entry-block:
  %3 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 0
  %4 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  %5 = bitcast %"struct.collections::string::String<[]>[#6]"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 24, i32 8, i1 false)
  %6 = bitcast %"struct.collections::string::String<[]>[#6]"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false)
  %7 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 1
  %8 = bitcast %"struct.HyObj<[]>"* %2 to i8*
  %9 = bitcast %"struct.HyObj<[]>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %8, i64 32, i32 8, i1 false)
  %10 = bitcast %"struct.HyObj<[]>"* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 32, i32 8, i1 false)
  %11 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 2
  store i8* null, i8** %11
  %12 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 3
  store i8* null, i8** %12
  %13 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 4
  store i64 1, i64* %13
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN6string26String...std..clone..Clone5clone20h287aff0780be480107aE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::string::String<[]>[#6]"*
  %__self_0_0 = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %self
  %2 = load %"struct.collections::string::String<[]>[#6]"** %self
  %3 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %2, i32 0, i32 0
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %3, %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_0_0
  br label %case_body

case_body:                                        ; preds = %entry-block
  %4 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %0, i32 0, i32 0
  %5 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %__self_0_0
  call void @"_ZN3vec18Vec$LT$T$GT$.Clone5clone21h15168717421912269437E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %4, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %5)
  br label %join

join:                                             ; preds = %case_body
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec18Vec$LT$T$GT$.Clone5clone21h15168717421912269437E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca { i8*, i64 }
  %__adjust = alloca { i8*, i64 }
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice21h13688098575715568063E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %3)
  %4 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 0
  %5 = load i8** %4
  %6 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 1
  %7 = load i64* %6
  %8 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %5, i8** %8
  %9 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %7, i64* %9
  call void @"_ZN3vec12Vec$LT$T$GT$10from_slice21h13457343005872852961E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$10from_slice21h13457343005872852961E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %vector = alloca %"struct.collections::vec::Vec<[u8]>[#6]"
  %__adjust = alloca { i8*, i64 }
  %2 = alloca { i8*, i32 }
  call void @"_ZN3vec12Vec$LT$T$GT$3new20h7596264441832851618E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %vector)
  %3 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 0
  %4 = load i8** %3
  %5 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 1
  %6 = load i64* %5
  %7 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %4, i8** %7
  %8 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %6, i64* %8
  invoke void @"_ZN3vec12Vec$LT$T$GT$8push_all21h16511997109267930741E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %vector, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
          to label %normal-return unwind label %unwind_ast_3753_

normal-return:                                    ; preds = %entry-block
  %9 = bitcast %"struct.collections::vec::Vec<[u8]>[#6]"* %vector to i8*
  %10 = bitcast %"struct.collections::vec::Vec<[u8]>[#6]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %9, i64 24, i32 8, i1 false)
  %11 = bitcast %"struct.collections::vec::Vec<[u8]>[#6]"* %vector to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false)
  call void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.192917hfa25aad1645ebedeE"(%"struct.collections::vec::Vec<[u8]>[#6]"* %vector)
  ret void

unwind_ast_3753_:                                 ; preds = %entry-block
  %12 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %12, { i8*, i32 }* %2
  br label %clean_ast_3753_

resume:                                           ; preds = %clean_custom_
  %13 = load { i8*, i32 }* %2
  resume { i8*, i32 } %13

clean_custom_:                                    ; preds = %clean_ast_3753_
  br label %resume

clean_ast_3753_:                                  ; preds = %unwind_ast_3753_
  call void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.192917hfa25aad1645ebedeE"(%"struct.collections::vec::Vec<[u8]>[#6]"* %vector)
  br label %clean_custom_
}

; Function Attrs: uwtable
define void @hy_map_delete(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.HyObj<[]>"*
  %m = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %s = alloca %"struct.collections::string::String<[]>[#6]"*
  %3 = alloca i8
  %4 = alloca { i8*, i32 }
  %5 = alloca %str_slice
  %6 = alloca %str_slice
  store %"struct.HyObj<[]>"* %1, %"struct.HyObj<[]>"** %self
  %7 = load %"struct.HyObj<[]>"** %self
  %8 = getelementptr inbounds %"struct.HyObj<[]>"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"enum.HyObjType<[]>"* %8, i32 0, i32 0
  %10 = load i8* %9, !range !0
  switch i8 %10, label %match_else [
    i8 0, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %11 = getelementptr inbounds %"struct.HyObj<[]>"* %2, i32 0, i32 0
  %12 = getelementptr inbounds %"enum.HyObjType<[]>"* %11, i32 0, i32 0
  %13 = load i8* %12, !range !0
  switch i8 %13, label %match_else4 [
    i8 1, label %match_case5
  ]

case_body1:                                       ; preds = %match_else
  %14 = getelementptr inbounds %str_slice* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([51 x i8]* @str2232, i32 0, i32 0), i8** %14
  %15 = getelementptr inbounds %str_slice* %6, i32 0, i32 1
  store i64 51, i64* %15
  invoke void @_ZN6unwind12begin_unwind21h15233954449314110570E(%str_slice* noalias nocapture dereferenceable(16) %6, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_delete10_FILE_LINE20h8f97236c5e74de36ihaE)
          to label %normal-return8 unwind label %unwind_custom_

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %16 = bitcast %"enum.HyObjType<[]>"* %8 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }*
  %17 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }* %16, i32 0, i32 1
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %17, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %m
  br label %case_body

case_body2:                                       ; preds = %match_case5
  %18 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %m
  %19 = load %"struct.collections::string::String<[]>[#6]"** %s
  %20 = invoke zeroext i1 @_ZN10MutableMap6remove20h1521664005272432664E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %18, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %19)
          to label %normal-return unwind label %unwind_custom_

case_body3:                                       ; preds = %match_else4
  %21 = getelementptr inbounds %str_slice* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8]* @str2200, i32 0, i32 0), i8** %21
  %22 = getelementptr inbounds %str_slice* %5, i32 0, i32 1
  store i64 26, i64* %22
  invoke void @_ZN6unwind12begin_unwind21h15233954449314110570E(%str_slice* noalias nocapture dereferenceable(16) %5, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_delete10_FILE_LINE20h8f97236c5e74de36YgaE)
          to label %normal-return7 unwind label %unwind_custom_

match_else4:                                      ; preds = %case_body
  br label %case_body3

match_case5:                                      ; preds = %case_body
  %23 = bitcast %"enum.HyObjType<[]>"* %11 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %24 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %23, i32 0, i32 1
  store %"struct.collections::string::String<[]>[#6]"* %24, %"struct.collections::string::String<[]>[#6]"** %s
  br label %case_body2

normal-return:                                    ; preds = %case_body2
  %25 = zext i1 %20 to i8
  store i8 %25, i8* %3
  %26 = load i8* %3, !range !1
  %27 = trunc i8 %26 to i1
  invoke void @hy_new_bool(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %0, i1 zeroext %27)
          to label %normal-return6 unwind label %unwind_custom_

unwind_custom_:                                   ; preds = %case_body1, %case_body3, %normal-return, %case_body2
  %28 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %28, { i8*, i32 }* %4
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %29 = load { i8*, i32 }* %4
  resume { i8*, i32 } %29

clean_custom_:                                    ; preds = %unwind_custom_
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  br label %resume

normal-return6:                                   ; preds = %normal-return
  br label %join

normal-return7:                                   ; preds = %case_body3
  unreachable

join:                                             ; preds = %normal-return6
  br label %join9

normal-return8:                                   ; preds = %case_body1
  unreachable

join9:                                            ; preds = %join
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN10MutableMap6remove20h1521664005272432664E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca %"enum.core::option::Option<[HyObj]>[#3]"
  %3 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %key
  %4 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %5 = load %"struct.collections::string::String<[]>[#6]"** %key
  call void @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$3pop20h8101232868945238203E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %2, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %4, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %5)
  %6 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h13941718349563647439E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias dereferenceable(40) %2)
          to label %normal-return unwind label %unwind_ast_3777_

normal-return:                                    ; preds = %entry-block
  %7 = zext i1 %6 to i8
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %2)
  %8 = trunc i8 %7 to i1
  ret i1 %8

unwind_ast_3777_:                                 ; preds = %entry-block
  %9 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %9, { i8*, i32 }* %3
  br label %clean_ast_3777_

resume:                                           ; preds = %clean_custom_
  %10 = load { i8*, i32 }* %3
  resume { i8*, i32 } %10

clean_custom_:                                    ; preds = %clean_ast_3777_
  br label %resume

clean_ast_3777_:                                  ; preds = %unwind_ast_3777_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %2)
  br label %clean_custom_
}

; Function Attrs: uwtable
define internal void @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$3pop20h8101232868945238203E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40), %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %ret = alloca %"enum.core::option::Option<[HyObj]>[#3]"
  %3 = alloca i8
  %4 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %1, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %2, %"struct.collections::string::String<[]>[#6]"** %key
  %5 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %6 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %5, i32 0, i32 0
  %7 = load %"struct.collections::string::String<[]>[#6]"** %key
  call void @_ZN7treemap6remove21h16187747688549353355E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %ret, i8** noalias nocapture dereferenceable(8) %6, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %7)
  %8 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h13941718349563647439E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias dereferenceable(40) %ret)
          to label %normal-return unwind label %unwind_ast_3796_

normal-return:                                    ; preds = %entry-block
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %3
  %10 = load i8* %3, !range !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %then-block-3811-, label %next-block

unwind_ast_3796_:                                 ; preds = %entry-block
  %12 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %12, { i8*, i32 }* %4
  br label %clean_ast_3796_

resume:                                           ; preds = %clean_custom_
  %13 = load { i8*, i32 }* %4
  resume { i8*, i32 } %13

clean_custom_:                                    ; preds = %clean_ast_3796_
  br label %resume

clean_ast_3796_:                                  ; preds = %unwind_ast_3796_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  br label %clean_custom_

then-block-3811-:                                 ; preds = %normal-return
  %14 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %15 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %14, i32 0, i32 1
  %16 = load i64* %15
  %17 = sub i64 %16, 1
  store i64 %17, i64* %15
  br label %next-block

next-block:                                       ; preds = %normal-return, %then-block-3811-
  %18 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  %19 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %18, i64 40, i32 8, i1 false)
  %20 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 40, i32 8, i1 false)
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  ret void
}

; Function Attrs: uwtable
define internal void @_ZN7treemap6remove21h16187747688549353355E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40), i8** noalias nocapture dereferenceable(8), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %fmt.i = alloca %"struct.core::fmt::Arguments<[]>[#3]"*
  %node = alloca i8**
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %save = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %3 = alloca { %"enum.core::option::Option<[HyObj]>[#3]", i8 }
  %4 = alloca i8
  %match = alloca i8
  %5 = alloca i8
  %6 = alloca i8
  %left = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %7 = alloca i8
  %8 = alloca { i8*, i32 }
  %9 = alloca i8*
  %new = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %10 = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %let = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %value = alloca %"struct.HyObj<[]>"
  %11 = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %12 = alloca i8
  %new21 = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %13 = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %let23 = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %value24 = alloca %"struct.HyObj<[]>"
  %ret = alloca %"enum.core::option::Option<[HyObj]>[#3]"
  %rebalance = alloca i8
  %left_level = alloca i64
  %14 = alloca i8*
  %15 = alloca { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }
  %right_level = alloca i64
  %16 = alloca i8*
  %17 = alloca { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }
  %save_level = alloca i64
  %18 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %autoref = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %for_head = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  %loop_option = alloca i8*
  %19 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %autoref38 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %for_head39 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  %loop_option43 = alloca i8*
  %20 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %autoref47 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %for_head48 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  %loop_option52 = alloca i8*
  %21 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %autoref57 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %for_head58 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  %loop_option62 = alloca i8*
  %22 = alloca i8*
  %match70 = alloca i8*
  %value72 = alloca %"struct.HyObj<[]>"*
  %23 = alloca { %str_slice* }
  %24 = alloca %str_slice
  %match76 = alloca { %str_slice* }
  %__llmatch = alloca %str_slice**
  %__arg0 = alloca %str_slice*
  %__args_vec = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  %25 = alloca %"struct.core::fmt::Argument<[]>[#3]"
  %__args = alloca %"struct.core::fmt::Arguments<[]>[#3]"
  %__adjust = alloca { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }
  %__adjust79 = alloca { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }
  store i8** %1, i8*** %node
  store %"struct.collections::string::String<[]>[#6]"* %2, %"struct.collections::string::String<[]>[#6]"** %key
  %26 = load i8*** %node
  %27 = load i8** %26
  %28 = icmp ne i8* %27, null
  switch i1 %28, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %29 = getelementptr inbounds %"enum.core::option::Option<[HyObj]>[#3]"* %0, i32 0, i32 0
  store i8 0, i8* %29
  br label %clean_custom_

case_body1:                                       ; preds = %match_else
  %30 = load %"struct.collections::string::String<[]>[#6]"** %key
  %31 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %32 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %31
  %33 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %32, i32 0, i32 0
  %34 = call i8 @_ZN6string22String...std..cmp..Ord3cmp20ha705343ffe40c966QVaE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %30, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %33)
  store i8 %34, i8* %4
  %35 = load i8* %4
  store i8 %35, i8* %match
  %36 = load i8* %match, !range !2
  switch i8 %36, label %match_else5 [
    i8 -1, label %match_case6
    i8 1, label %match_case7
  ]

match_else:                                       ; preds = %entry-block
  %37 = bitcast i8** %26 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %37, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

clean_custom_:                                    ; preds = %clean_ast_4209_84, %clean_custom_66, %case_body
  br label %return

case_body2:                                       ; preds = %match_case6
  %38 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 0
  %39 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %40 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %39
  %41 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %40, i32 0, i32 2
  %42 = load %"struct.collections::string::String<[]>[#6]"** %key
  call void @_ZN7treemap6remove21h16187747688549353355E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %38, i8** noalias nocapture dereferenceable(8) %41, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %42)
  %43 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 1
  store i8 1, i8* %43
  br label %join28

case_body3:                                       ; preds = %match_case7
  %44 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 0
  %45 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %46 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %45
  %47 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %46, i32 0, i32 3
  %48 = load %"struct.collections::string::String<[]>[#6]"** %key
  call void @_ZN7treemap6remove21h16187747688549353355E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %44, i8** noalias nocapture dereferenceable(8) %47, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %48)
  %49 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 1
  store i8 1, i8* %49
  br label %join28

case_body4:                                       ; preds = %match_else5
  %50 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %51 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %50
  %52 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %51, i32 0, i32 2
  %53 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14005252566159617364E"(i8** noalias dereferenceable(8) %52)
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %5
  %55 = load i8* %5, !range !1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %then-block-3964-, label %else-block20

match_else5:                                      ; preds = %case_body1
  br label %case_body4

match_case6:                                      ; preds = %case_body1
  br label %case_body2

match_case7:                                      ; preds = %case_body1
  br label %case_body3

then-block-3964-:                                 ; preds = %case_body4
  %57 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %58 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %57
  %59 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %58, i32 0, i32 3
  %60 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14005252566159617364E"(i8** noalias dereferenceable(8) %59)
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %6
  %62 = load i8* %6, !range !1
  %63 = trunc i8 %62 to i1
  br i1 %63, label %then-block-3969-, label %else-block14

then-block-3969-:                                 ; preds = %then-block-3964-
  %64 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %65 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %64
  %66 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %65, i32 0, i32 2
  %67 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap21h12857417904506760058E"(i8** noalias dereferenceable(8) %66)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %67, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  %68 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  %69 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %68, i32 0, i32 3
  %70 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14005252566159617364E"(i8** noalias dereferenceable(8) %69)
          to label %normal-return unwind label %unwind_ast_3969_

normal-return:                                    ; preds = %then-block-3969-
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %7
  %72 = load i8* %7, !range !1
  %73 = trunc i8 %72 to i1
  br i1 %73, label %then-block-3982-, label %else-block

unwind_ast_3969_:                                 ; preds = %join, %normal-return11, %else-block, %then-block-3982-, %then-block-3969-
  %74 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %74, { i8*, i32 }* %8
  br label %clean_ast_3969_

resume:                                           ; preds = %clean_custom_8
  %75 = load { i8*, i32 }* %8
  resume { i8*, i32 } %75

clean_custom_8:                                   ; preds = %clean_ast_4209_, %clean_custom_9
  br label %resume

clean_custom_9:                                   ; preds = %clean_ast_3926_, %clean_ast_3927_
  br label %clean_custom_8

clean_ast_3927_:                                  ; preds = %clean_ast_4060_, %clean_ast_4026_18, %clean_ast_4026_, %clean_ast_3969_
  br label %clean_custom_9

clean_ast_3969_:                                  ; preds = %unwind_ast_3969_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left)
  br label %clean_ast_3927_

then-block-3982-:                                 ; preds = %normal-return
  %76 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %77 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  %78 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %77, i32 0, i32 3
  invoke void @_ZN7treemap6remove9heir_swap20h7703930167492888387E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %76, i8** noalias nocapture dereferenceable(8) %78)
          to label %normal-return10 unwind label %unwind_ast_3969_

normal-return10:                                  ; preds = %then-block-3982-
  br label %join

else-block:                                       ; preds = %normal-return
  %79 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %80 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %79
  %81 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %80, i32 0, i32 0
  %82 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  %83 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %82, i32 0, i32 0
  invoke void @_ZN3mem4swap20h5157354923049722195E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %81, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %83)
          to label %normal-return11 unwind label %unwind_ast_3969_

normal-return11:                                  ; preds = %else-block
  %84 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %85 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %84
  %86 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %85, i32 0, i32 1
  %87 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  %88 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %87, i32 0, i32 1
  invoke void @_ZN3mem4swap20h1209716546684472671E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %86, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %88)
          to label %normal-return12 unwind label %unwind_ast_3969_

normal-return12:                                  ; preds = %normal-return11
  br label %join

join:                                             ; preds = %normal-return12, %normal-return10
  %89 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %90 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %89
  %91 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %90, i32 0, i32 2
  %92 = bitcast i8** %9 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %93 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %93, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %92
  %94 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left to i8*
  call void @llvm.memset.p0i8.i64(i8* %94, i8 0, i64 8, i32 8, i1 false)
  %95 = load i8** %9
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %91)
  store i8* %95, i8** %91
  %96 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 0
  %97 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %98 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %97
  %99 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %98, i32 0, i32 2
  %100 = load %"struct.collections::string::String<[]>[#6]"** %key
  invoke void @_ZN7treemap6remove21h16187747688549353355E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %96, i8** noalias nocapture dereferenceable(8) %99, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %100)
          to label %normal-return13 unwind label %unwind_ast_3969_

normal-return13:                                  ; preds = %join
  %101 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 1
  store i8 1, i8* %101
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left)
  br label %join19

else-block14:                                     ; preds = %then-block-3964-
  %102 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %103 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %102
  %104 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %103, i32 0, i32 2
  %105 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap21h12857417904506760058E"(i8** noalias dereferenceable(8) %104)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %105, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new
  %106 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %107 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new
  %108 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new to i8*
  call void @llvm.memset.p0i8.i64(i8* %108, i8 0, i64 8, i32 8, i1 false)
  %109 = invoke noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @_ZN3mem7replace21h16700502172959734926E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %106, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(80) %107)
          to label %normal-return15 unwind label %unwind_ast_4026_

normal-return15:                                  ; preds = %else-block14
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %109, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %10
  %110 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %10
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %110, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %let
  %111 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %let
  %112 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %111, i32 0, i32 1
  %113 = bitcast %"struct.HyObj<[]>"* %112 to i8*
  %114 = bitcast %"struct.HyObj<[]>"* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %113, i64 32, i32 8, i1 false)
  %115 = bitcast %"struct.HyObj<[]>"* %112 to i8*
  call void @llvm.memset.p0i8.i64(i8* %115, i8 0, i64 32, i32 8, i1 false)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %let)
  %116 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %117 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %118 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %117
  %119 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %118, i32 0, i32 2
  %120 = invoke noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap21h12857417904506760058E"(i8** noalias dereferenceable(8) %119)
          to label %normal-return16 unwind label %unwind_ast_4026_17

unwind_ast_4026_:                                 ; preds = %else-block14
  %121 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %121, { i8*, i32 }* %8
  br label %clean_ast_4026_

clean_ast_4026_:                                  ; preds = %unwind_ast_4026_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new)
  br label %clean_ast_3927_

normal-return16:                                  ; preds = %normal-return15
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %120, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11
  %122 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %116)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %122, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %116
  %123 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 0
  %124 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %123 to { i8, %"struct.HyObj<[]>" }*
  %125 = getelementptr inbounds { i8, %"struct.HyObj<[]>" }* %124, i32 0, i32 1
  %126 = bitcast %"struct.HyObj<[]>"* %value to i8*
  %127 = bitcast %"struct.HyObj<[]>"* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %126, i64 32, i32 8, i1 false)
  %128 = bitcast %"struct.HyObj<[]>"* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %128, i8 0, i64 32, i32 8, i1 false)
  %129 = getelementptr inbounds %"enum.core::option::Option<[HyObj]>[#3]"* %123, i32 0, i32 0
  store i8 1, i8* %129
  %130 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 1
  store i8 1, i8* %130
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %value)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new)
  br label %join19

unwind_ast_4026_17:                               ; preds = %normal-return15
  %131 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %131, { i8*, i32 }* %8
  br label %clean_ast_4026_18

clean_ast_4026_18:                                ; preds = %unwind_ast_4026_17
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %value)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new)
  br label %clean_ast_3927_

join19:                                           ; preds = %normal-return16, %normal-return13
  br label %join27

else-block20:                                     ; preds = %case_body4
  %132 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %133 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %132
  %134 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %133, i32 0, i32 3
  %135 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14005252566159617364E"(i8** noalias dereferenceable(8) %134)
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %12
  %137 = load i8* %12, !range !1
  %138 = trunc i8 %137 to i1
  br i1 %138, label %then-block-4060-, label %else-block25

then-block-4060-:                                 ; preds = %else-block20
  %139 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %140 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %139
  %141 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %140, i32 0, i32 3
  %142 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap21h12857417904506760058E"(i8** noalias dereferenceable(8) %141)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %142, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new21
  %143 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %144 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new21
  %145 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new21 to i8*
  call void @llvm.memset.p0i8.i64(i8* %145, i8 0, i64 8, i32 8, i1 false)
  %146 = invoke noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @_ZN3mem7replace21h16700502172959734926E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %143, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(80) %144)
          to label %normal-return22 unwind label %unwind_ast_4060_

normal-return22:                                  ; preds = %then-block-4060-
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %146, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %13
  %147 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %13
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %147, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %let23
  %148 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %let23
  %149 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %148, i32 0, i32 1
  %150 = bitcast %"struct.HyObj<[]>"* %149 to i8*
  %151 = bitcast %"struct.HyObj<[]>"* %value24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %150, i64 32, i32 8, i1 false)
  %152 = bitcast %"struct.HyObj<[]>"* %149 to i8*
  call void @llvm.memset.p0i8.i64(i8* %152, i8 0, i64 32, i32 8, i1 false)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %let23)
  %153 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 0
  %154 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %153 to { i8, %"struct.HyObj<[]>" }*
  %155 = getelementptr inbounds { i8, %"struct.HyObj<[]>" }* %154, i32 0, i32 1
  %156 = bitcast %"struct.HyObj<[]>"* %value24 to i8*
  %157 = bitcast %"struct.HyObj<[]>"* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %156, i64 32, i32 8, i1 false)
  %158 = bitcast %"struct.HyObj<[]>"* %value24 to i8*
  call void @llvm.memset.p0i8.i64(i8* %158, i8 0, i64 32, i32 8, i1 false)
  %159 = getelementptr inbounds %"enum.core::option::Option<[HyObj]>[#3]"* %153, i32 0, i32 0
  store i8 1, i8* %159
  %160 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 1
  store i8 1, i8* %160
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %value24)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new21)
  br label %join26

unwind_ast_4060_:                                 ; preds = %then-block-4060-
  %161 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %161, { i8*, i32 }* %8
  br label %clean_ast_4060_

clean_ast_4060_:                                  ; preds = %unwind_ast_4060_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new21)
  br label %clean_ast_3927_

else-block25:                                     ; preds = %else-block20
  %162 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 0
  %163 = getelementptr inbounds %"enum.core::option::Option<[HyObj]>[#3]"* %162, i32 0, i32 0
  store i8 0, i8* %163
  %164 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 1
  store i8 0, i8* %164
  br label %join26

join26:                                           ; preds = %else-block25, %normal-return22
  br label %join27

join27:                                           ; preds = %join26, %join19
  br label %join28

join28:                                           ; preds = %join27, %case_body3, %case_body2
  %165 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 0
  %166 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %165 to i8*
  %167 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %167, i8* %166, i64 40, i32 8, i1 false)
  %168 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %165 to i8*
  call void @llvm.memset.p0i8.i64(i8* %168, i8 0, i64 40, i32 8, i1 false)
  %169 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 1
  %170 = load i8* %169
  store i8 %170, i8* %rebalance
  call void @"_ZN49_$LP$core..option..Option$LT$HyObj$GT$$C$bool$RP$14glue_drop.222317h399dc326401cbf79E"({ %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3)
  %171 = load i8* %rebalance, !range !1
  %172 = trunc i8 %171 to i1
  br i1 %172, label %then-block-4090-, label %next-block68

then-block-4090-:                                 ; preds = %join28
  %173 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %174 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %173
  %175 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %174, i32 0, i32 2
  %176 = invoke i8* @"_ZN6option15Option$LT$T$GT$6as_ref19h192773552198828614E"(i8** noalias dereferenceable(8) %175)
          to label %normal-return29 unwind label %unwind_ast_3926_

normal-return29:                                  ; preds = %then-block-4090-
  store i8* %176, i8** %14
  %177 = load i8** %14
  %178 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %15, i32 0, i32 0
  store i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)* @_ZN7treemap6remove12closure.2225E, i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %178
  %179 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %15, i32 0, i32 1
  store i8* null, i8** %179
  %180 = invoke i64 @"_ZN6option15Option$LT$T$GT$6map_or20h3483701872163857957E"(i8* %177, i64 0, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %15)
          to label %normal-return30 unwind label %unwind_ast_3926_

unwind_ast_3926_:                                 ; preds = %for_body61, %for_loopback60, %normal-return55, %for_exit40, %for_body51, %for_loopback50, %normal-return45, %for_body42, %for_loopback41, %normal-return36, %next-block, %for_loopback, %then-block-4152-, %normal-return31, %normal-return30, %normal-return29, %then-block-4090-
  %181 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %181, { i8*, i32 }* %8
  br label %clean_ast_3926_

clean_ast_3926_:                                  ; preds = %unwind_ast_3926_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  br label %clean_custom_9

normal-return30:                                  ; preds = %normal-return29
  store i64 %180, i64* %left_level
  %182 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %183 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %182
  %184 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %183, i32 0, i32 3
  %185 = invoke i8* @"_ZN6option15Option$LT$T$GT$6as_ref19h192773552198828614E"(i8** noalias dereferenceable(8) %184)
          to label %normal-return31 unwind label %unwind_ast_3926_

normal-return31:                                  ; preds = %normal-return30
  store i8* %185, i8** %16
  %186 = load i8** %16
  %187 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %17, i32 0, i32 0
  store i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)* @_ZN7treemap6remove12closure.2227E, i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %187
  %188 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %17, i32 0, i32 1
  store i8* null, i8** %188
  %189 = invoke i64 @"_ZN6option15Option$LT$T$GT$6map_or20h4256917405088025266E"(i8* %186, i64 0, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %17)
          to label %normal-return32 unwind label %unwind_ast_3926_

normal-return32:                                  ; preds = %normal-return31
  store i64 %189, i64* %right_level
  %190 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %191 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %190
  %192 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %191, i32 0, i32 4
  %193 = load i64* %192
  %194 = sub i64 %193, 1
  %195 = load i64* %left_level
  %196 = icmp ult i64 %195, %194
  br i1 %196, label %join33, label %before_rhs

join33:                                           ; preds = %before_rhs, %normal-return32
  %197 = phi i1 [ %196, %normal-return32 ], [ %204, %before_rhs ]
  br i1 %197, label %then-block-4140-, label %next-block65

before_rhs:                                       ; preds = %normal-return32
  %198 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %199 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %198
  %200 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %199, i32 0, i32 4
  %201 = load i64* %200
  %202 = sub i64 %201, 1
  %203 = load i64* %right_level
  %204 = icmp ult i64 %203, %202
  br label %join33

then-block-4140-:                                 ; preds = %join33
  %205 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %206 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %205
  %207 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %206, i32 0, i32 4
  %208 = load i64* %207
  %209 = sub i64 %208, 1
  store i64 %209, i64* %207
  %210 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %211 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %210
  %212 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %211, i32 0, i32 4
  %213 = load i64* %right_level
  %214 = load i64* %212
  %215 = icmp ugt i64 %213, %214
  br i1 %215, label %then-block-4152-, label %next-block

then-block-4152-:                                 ; preds = %then-block-4140-
  %216 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %217 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %216
  %218 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %217, i32 0, i32 4
  %219 = load i64* %218
  store i64 %219, i64* %save_level
  %220 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %221 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %220
  %222 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %221, i32 0, i32 3
  %223 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h12954592224078344808E"(i8** noalias dereferenceable(8) %222)
          to label %normal-return34 unwind label %unwind_ast_3926_

normal-return34:                                  ; preds = %then-block-4152-
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %223, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %18
  %224 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %18
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %224, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head
  %225 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %normal-return35
  br label %next-block

for_loopback:                                     ; preds = %for_body, %normal-return34
  %226 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h12514694631505169203E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias dereferenceable(8) %225)
          to label %normal-return35 unwind label %unwind_ast_3926_

for_body:                                         ; preds = %normal-return35
  %227 = bitcast i8** %loop_option to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %228 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %227
  %229 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %228
  %230 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %229, i32 0, i32 4
  %231 = load i64* %save_level
  store i64 %231, i64* %230
  br label %for_loopback

normal-return35:                                  ; preds = %for_loopback
  store i8* %226, i8** %loop_option
  %232 = load i8** %loop_option
  %233 = icmp ne i8* %232, null
  %234 = zext i1 %233 to i8
  %235 = icmp ne i8 %234, 0
  br i1 %235, label %for_body, label %for_exit

next-block:                                       ; preds = %then-block-4140-, %for_exit
  %236 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap4skew21h15979204421070069757E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %236)
          to label %normal-return36 unwind label %unwind_ast_3926_

normal-return36:                                  ; preds = %next-block
  %237 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %238 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %237
  %239 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %238, i32 0, i32 3
  %240 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h12954592224078344808E"(i8** noalias dereferenceable(8) %239)
          to label %normal-return37 unwind label %unwind_ast_3926_

normal-return37:                                  ; preds = %normal-return36
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %240, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %19
  %241 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %19
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %241, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref38
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref38, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head39
  %242 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head39
  br label %for_loopback41

for_exit40:                                       ; preds = %normal-return44
  %243 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap5split20h9575189442201275569E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %243)
          to label %normal-return55 unwind label %unwind_ast_3926_

for_loopback41:                                   ; preds = %for_exit49, %normal-return37
  %244 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next20h9785195661081150216E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias dereferenceable(8) %242)
          to label %normal-return44 unwind label %unwind_ast_3926_

for_body42:                                       ; preds = %normal-return44
  %245 = bitcast i8** %loop_option43 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %246 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %245
  invoke void @_ZN7treemap4skew21h15979204421070069757E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %246)
          to label %normal-return45 unwind label %unwind_ast_3926_

normal-return44:                                  ; preds = %for_loopback41
  store i8* %244, i8** %loop_option43
  %247 = load i8** %loop_option43
  %248 = icmp ne i8* %247, null
  %249 = zext i1 %248 to i8
  %250 = icmp ne i8 %249, 0
  br i1 %250, label %for_body42, label %for_exit40

normal-return45:                                  ; preds = %for_body42
  %251 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %245
  %252 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %251
  %253 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %252, i32 0, i32 3
  %254 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h12954592224078344808E"(i8** noalias dereferenceable(8) %253)
          to label %normal-return46 unwind label %unwind_ast_3926_

normal-return46:                                  ; preds = %normal-return45
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %254, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %20
  %255 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %20
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %255, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref47
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref47, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head48
  %256 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head48
  br label %for_loopback50

for_exit49:                                       ; preds = %normal-return53
  br label %for_loopback41

for_loopback50:                                   ; preds = %normal-return54, %normal-return46
  %257 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h17218972941499598353E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias dereferenceable(8) %256)
          to label %normal-return53 unwind label %unwind_ast_3926_

for_body51:                                       ; preds = %normal-return53
  %258 = bitcast i8** %loop_option52 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %259 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %258
  invoke void @_ZN7treemap4skew21h15979204421070069757E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %259)
          to label %normal-return54 unwind label %unwind_ast_3926_

normal-return53:                                  ; preds = %for_loopback50
  store i8* %257, i8** %loop_option52
  %260 = load i8** %loop_option52
  %261 = icmp ne i8* %260, null
  %262 = zext i1 %261 to i8
  %263 = icmp ne i8 %262, 0
  br i1 %263, label %for_body51, label %for_exit49

normal-return54:                                  ; preds = %for_body51
  br label %for_loopback50

normal-return55:                                  ; preds = %for_exit40
  %264 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %265 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %264
  %266 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %265, i32 0, i32 3
  %267 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h12954592224078344808E"(i8** noalias dereferenceable(8) %266)
          to label %normal-return56 unwind label %unwind_ast_3926_

normal-return56:                                  ; preds = %normal-return55
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %267, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %21
  %268 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %21
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %268, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref57
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref57, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head58
  %269 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head58
  br label %for_loopback60

for_exit59:                                       ; preds = %normal-return63
  br label %next-block65

for_loopback60:                                   ; preds = %normal-return64, %normal-return56
  %270 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next18h80013519269718912E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias dereferenceable(8) %269)
          to label %normal-return63 unwind label %unwind_ast_3926_

for_body61:                                       ; preds = %normal-return63
  %271 = bitcast i8** %loop_option62 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %272 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %271
  invoke void @_ZN7treemap5split20h9575189442201275569E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %272)
          to label %normal-return64 unwind label %unwind_ast_3926_

normal-return63:                                  ; preds = %for_loopback60
  store i8* %270, i8** %loop_option62
  %273 = load i8** %loop_option62
  %274 = icmp ne i8* %273, null
  %275 = zext i1 %274 to i8
  %276 = icmp ne i8 %275, 0
  br i1 %276, label %for_body61, label %for_exit59

normal-return64:                                  ; preds = %for_body61
  br label %for_loopback60

next-block65:                                     ; preds = %join33, %for_exit59
  %277 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  %278 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %278, i8* %277, i64 40, i32 8, i1 false)
  %279 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  call void @llvm.memset.p0i8.i64(i8* %279, i8 0, i64 40, i32 8, i1 false)
  br label %clean_ast_4090_

clean_custom_66:                                  ; preds = %clean_ast_3926_67
  br label %clean_custom_

clean_ast_3926_67:                                ; preds = %clean_ast_4090_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  br label %clean_custom_66

clean_ast_4090_:                                  ; preds = %next-block65
  br label %clean_ast_3926_67

next-block68:                                     ; preds = %join28
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  br label %join69

join69:                                           ; preds = %next-block68
  %280 = load i8*** %node
  %281 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h7848564969736036808E"(i8** noalias dereferenceable(8) %280)
  store i8* %281, i8** %22
  %282 = load i8** %22
  store i8* %282, i8** %match70
  %283 = load i8** %match70
  %284 = icmp ne i8* %283, null
  switch i1 %284, label %match_else74 [
    i1 true, label %match_case75
  ]

case_body71:                                      ; preds = %match_case75
  %285 = load %"struct.HyObj<[]>"** %value72
  %286 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to { i8, %"struct.HyObj<[]>" }*
  %287 = getelementptr inbounds { i8, %"struct.HyObj<[]>" }* %286, i32 0, i32 1
  %288 = bitcast %"struct.HyObj<[]>"* %285 to i8*
  %289 = bitcast %"struct.HyObj<[]>"* %287 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %289, i8* %288, i64 32, i32 8, i1 false)
  %290 = bitcast %"struct.HyObj<[]>"* %285 to i8*
  call void @llvm.memset.p0i8.i64(i8* %290, i8 0, i64 32, i32 8, i1 false)
  %291 = getelementptr inbounds %"enum.core::option::Option<[HyObj]>[#3]"* %0, i32 0, i32 0
  store i8 1, i8* %291
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %285)
  %292 = bitcast %"struct.HyObj<[]>"* %285 to i8*
  call void @llvm.memset.p0i8.i64(i8* %292, i8 0, i64 32, i32 8, i1 false)
  br label %join83

case_body73:                                      ; preds = %match_else74
  %293 = getelementptr inbounds { %str_slice* }* %23, i32 0, i32 0
  %294 = getelementptr inbounds %str_slice* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8]* @str2229, i32 0, i32 0), i8** %294
  %295 = getelementptr inbounds %str_slice* %24, i32 0, i32 1
  store i64 16, i64* %295
  store %str_slice* %24, %str_slice** %293
  %296 = load { %str_slice* }* %23
  store { %str_slice* } %296, { %str_slice* }* %match76
  %297 = getelementptr inbounds { %str_slice* }* %match76, i32 0, i32 0
  store %str_slice** %297, %str_slice*** %__llmatch
  br label %case_body77

match_else74:                                     ; preds = %join69
  br label %case_body73

match_case75:                                     ; preds = %join69
  %298 = bitcast i8** %match70 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %299 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %298
  %300 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %299, i32 0, i32 0
  %301 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %299, i32 0, i32 1
  %302 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %299, i32 0, i32 2
  %303 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %299, i32 0, i32 3
  %304 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %299, i32 0, i32 4
  store %"struct.HyObj<[]>"* %301, %"struct.HyObj<[]>"** %value72
  br label %case_body71

case_body77:                                      ; preds = %case_body73
  %305 = load %str_slice*** %__llmatch
  %306 = load %str_slice** %305
  store %str_slice* %306, %str_slice** %__arg0
  %307 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %25 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %308 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %25, i32 0
  %309 = load %str_slice** %__arg0
  invoke void @_ZN3fmt8argument20h9205917117371530789E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %308, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show21h16792740918225742705E, %str_slice* noalias dereferenceable(16) %309)
          to label %normal-return78 unwind label %unwind_ast_4209_

normal-return78:                                  ; preds = %case_body77
  %310 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %25, %"struct.core::fmt::Argument<[]>[#3]"** %310
  %311 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 1, i64* %311
  %312 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } }* @_ZN7treemap6remove15__STATIC_FMTSTR20hc4afdecb9c2052741zfE to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %312
  %313 = getelementptr inbounds { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %313
  %314 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 0
  %315 = load %"struct.core::fmt::Argument<[]>[#3]"** %314
  %316 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__args_vec, i32 0, i32 1
  %317 = load i64* %316
  %318 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust79, i32 0, i32 0
  store %"struct.core::fmt::Argument<[]>[#3]"* %315, %"struct.core::fmt::Argument<[]>[#3]"** %318
  %319 = getelementptr inbounds { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* %__adjust79, i32 0, i32 1
  store i64 %317, i64* %319
  invoke void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h246676d58674b75eEiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust79)
          to label %normal-return80 unwind label %unwind_ast_4209_

unwind_ast_4209_:                                 ; preds = %normal-return80, %normal-return78, %case_body77
  %320 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %320, { i8*, i32 }* %8
  br label %clean_ast_4209_

clean_ast_4209_:                                  ; preds = %unwind_ast_4209_
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %match70)
  br label %clean_custom_8

normal-return80:                                  ; preds = %normal-return78
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %321 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  invoke void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %321, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN7treemap6remove8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dCzfE)
          to label %.noexc unwind label %unwind_ast_4209_

.noexc:                                           ; preds = %normal-return80
  unreachable

_ZN7treemap6remove8_run_fmt20h1827c2246d0005a0NjbE.exit: ; No predecessors!
  br label %normal-return81

normal-return81:                                  ; preds = %_ZN7treemap6remove8_run_fmt20h1827c2246d0005a0NjbE.exit
  unreachable

join82:                                           ; No predecessors!
  unreachable

join83:                                           ; preds = %case_body71
  br label %clean_ast_4209_84

return:                                           ; preds = %clean_custom_
  ret void

clean_ast_4209_84:                                ; preds = %join83
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211917hc9720e31bdf855ebE"(i8** %match70)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14005252566159617364E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8**
  store i8** %0, i8*** %self
  %1 = load i8*** %self
  %2 = load i8** %1
  %3 = icmp ne i8* %2, null
  switch i1 %3, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  store i8 1, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  store i8 0, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %4 = bitcast i8** %1 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %5 = load i8* %sret_slot, !range !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: uwtable
define internal void @_ZN7treemap6remove9heir_swap20h7703930167492888387E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #0 {
entry-block:
  %node = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %child = alloca i8**
  %2 = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %autoref = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %for_head = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  %loop_option = alloca i8*
  %3 = alloca i8
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  store i8** %1, i8*** %child
  %4 = load i8*** %child
  %5 = call %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h12954592224078344808E"(i8** noalias dereferenceable(8) %4)
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %5, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %2
  %6 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %2
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %6, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head
  %7 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  ret void

for_loopback:                                     ; preds = %join, %entry-block
  %8 = call i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next19h942450790665311523E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias dereferenceable(8) %7)
  store i8* %8, i8** %loop_option
  %9 = load i8** %loop_option
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i8
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %13 = bitcast i8** %loop_option to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %14 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %13
  %15 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %14
  %16 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %15, i32 0, i32 3
  %17 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14005252566159617364E"(i8** noalias dereferenceable(8) %16)
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %3
  %19 = load i8* %3, !range !1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %then-block-4340-, label %else-block

then-block-4340-:                                 ; preds = %for_body
  %21 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %22 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %13
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %22
  %24 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %23, i32 0, i32 3
  call void @_ZN7treemap6remove9heir_swap20h7703930167492888387E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %21, i8** noalias nocapture dereferenceable(8) %24)
  br label %join

else-block:                                       ; preds = %for_body
  %25 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %26 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %25
  %27 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %26, i32 0, i32 0
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %13
  %29 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %28
  %30 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %29, i32 0, i32 0
  call void @_ZN3mem4swap20h5157354923049722195E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %27, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %30)
  %31 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %32 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %31
  %33 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %32, i32 0, i32 1
  %34 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %13
  %35 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %34
  %36 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %35, i32 0, i32 1
  call void @_ZN3mem4swap20h1209716546684472671E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %33, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %36)
  br label %join

join:                                             ; preds = %else-block, %then-block-4340-
  br label %for_loopback
}

; Function Attrs: inlinehint uwtable
define internal %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h12954592224078344808E"(i8** noalias dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %self = alloca i8**
  store i8** %0, i8*** %self
  %1 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %sret_slot, i32 0, i32 0
  %2 = load i8*** %self
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$6as_mut20h3559922744304418399E"(i8** noalias dereferenceable(8) %2)
  store i8* %3, i8** %1
  %4 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %sret_slot
  ret %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$6as_mut20h3559922744304418399E"(i8** noalias dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %self = alloca i8**
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store i8** %0, i8*** %self
  %1 = load i8*** %self
  %2 = load i8** %1
  %3 = icmp ne i8* %2, null
  switch i1 %3, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %4 = bitcast i8** %sret_slot to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %5 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %5, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %4
  br label %join

case_body1:                                       ; preds = %match_else
  store i8* null, i8** %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %6 = bitcast i8** %1 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %6, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %7 = load i8** %sret_slot
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next19h942450790665311523E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h1000523638057325330E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h1000523638057325330E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace21h13014993900046386784E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace21h13014993900046386784E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap20h4121512024353352396E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h4121512024353352396E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized20h6310772859254794778E()
  store i8* %2, i8** %t
  %3 = load i8*** %x
  %4 = bitcast i8** %t to i8*
  %5 = bitcast i8** %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i8*** %x
  %7 = load i8*** %y
  %8 = bitcast i8** %6 to i8*
  %9 = bitcast i8** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i8*** %y
  %11 = bitcast i8** %10 to i8*
  %12 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load i8** %t
  call void @_ZN3mem6forget20h6085614401284314706E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized20h6310772859254794778E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h6085614401284314706E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h5157354923049722195E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %x = alloca %"struct.collections::string::String<[]>[#6]"*
  %y = alloca %"struct.collections::string::String<[]>[#6]"*
  %t = alloca %"struct.collections::string::String<[]>[#6]"
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %2 = alloca { i8*, i32 }
  store %"struct.collections::string::String<[]>[#6]"* %0, %"struct.collections::string::String<[]>[#6]"** %x
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %y
  call void @_ZN3mem13uninitialized21h18269523938485528870E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %t)
  %3 = load %"struct.collections::string::String<[]>[#6]"** %x
  %4 = bitcast %"struct.collections::string::String<[]>[#6]"* %t to i8*
  %5 = bitcast %"struct.collections::string::String<[]>[#6]"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  %6 = load %"struct.collections::string::String<[]>[#6]"** %x
  %7 = load %"struct.collections::string::String<[]>[#6]"** %y
  %8 = bitcast %"struct.collections::string::String<[]>[#6]"* %6 to i8*
  %9 = bitcast %"struct.collections::string::String<[]>[#6]"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  %10 = load %"struct.collections::string::String<[]>[#6]"** %y
  %11 = bitcast %"struct.collections::string::String<[]>[#6]"* %10 to i8*
  %12 = bitcast %"struct.collections::string::String<[]>[#6]"* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 8, i1 false)
  %13 = bitcast %"struct.collections::string::String<[]>[#6]"* %t to i8*
  %14 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %13, i64 24, i32 8, i1 false)
  %15 = bitcast %"struct.collections::string::String<[]>[#6]"* %t to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 24, i32 8, i1 false)
  invoke void @_ZN3mem6forget20h5745652104604123454E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg)
          to label %normal-return unwind label %unwind_ast_3493_

normal-return:                                    ; preds = %entry-block
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %t)
  ret void

unwind_ast_3493_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_3493_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_3493_
  br label %resume

clean_ast_3493_:                                  ; preds = %unwind_ast_3493_
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized21h18269523938485528870E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #1 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h5745652104604123454E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %1 = bitcast %"struct.collections::string::String<[]>[#6]"* %0 to i8*
  %2 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 24, i32 8, i1 false)
  %3 = bitcast %"struct.collections::string::String<[]>[#6]"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false)
  call void @_ZN27collections..string..String14glue_drop.192617he7f3b6ab8380a73dE(%"struct.collections::string::String<[]>[#6]"* %0)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @_ZN3mem7replace21h16700502172959734926E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8), %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(80)) unnamed_addr #1 {
entry-block:
  %dest = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %src = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %2 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %dest
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %1, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %src
  %3 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %dest
  invoke void @_ZN3mem4swap20h9415957163612546625E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %3, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %src)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %4 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %src
  %5 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %src to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %src)
  ret %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %4

unwind_custom_:                                   ; preds = %entry-block
  %6 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %6, { i8*, i32 }* %2
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %7 = load { i8*, i32 }* %2
  resume { i8*, i32 } %7

clean_custom_:                                    ; preds = %unwind_custom_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212217h0792ac760e772aa2E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %src)
  br label %resume
}

define internal void @"_ZN49_$LP$core..option..Option$LT$HyObj$GT$$C$bool$RP$14glue_drop.222317h399dc326401cbf79E"({ %"enum.core::option::Option<[HyObj]>[#3]", i8 }*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %0, i32 0, i32 0
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218617h878721d5a921d1c3E"(%"enum.core::option::Option<[HyObj]>[#3]"* %1)
  %2 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %0, i32 0, i32 1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN6option15Option$LT$T$GT$6map_or20h3483701872163857957E"(i8*, i64, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i64
  %self = alloca i8*
  %def = alloca i64
  %__llmatch = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store i8* %0, i8** %self
  store i64 %1, i64* %def
  %3 = load i8** %self
  %4 = icmp ne i8* %3, null
  switch i1 %4, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %5 = load i64* %def
  store i64 %5, i64* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %__llmatch
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %6
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %7, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %t
  %8 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %2, i32 0, i32 0
  %9 = load i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %8
  %10 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %2, i32 0, i32 1
  %11 = load i8** %10
  %12 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %t
  %13 = call i64 %9(i8* %11, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8) %12)
  store i64 %13, i64* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  %14 = bitcast i8** %self to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %14, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %15 = load i64* %sret_slot
  ret i64 %15
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN7treemap6remove12closure.2225E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %2 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %3 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %2
  %4 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %3, i32 0, i32 4
  %5 = load i64* %4
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN6option15Option$LT$T$GT$6map_or20h4256917405088025266E"(i8*, i64, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i64
  %self = alloca i8*
  %def = alloca i64
  %__llmatch = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store i8* %0, i8** %self
  store i64 %1, i64* %def
  %3 = load i8** %self
  %4 = icmp ne i8* %3, null
  switch i1 %4, label %match_else [
    i1 false, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %5 = load i64* %def
  store i64 %5, i64* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  %6 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %__llmatch
  %7 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %6
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %7, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %t
  %8 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %2, i32 0, i32 0
  %9 = load i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %8
  %10 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %2, i32 0, i32 1
  %11 = load i8** %10
  %12 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %t
  %13 = call i64 %9(i8* %11, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8) %12)
  store i64 %13, i64* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  %14 = bitcast i8** %self to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %14, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %entry-block
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %15 = load i64* %sret_slot
  ret i64 %15
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN7treemap6remove12closure.2227E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %2 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  %3 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %2
  %4 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %3, i32 0, i32 4
  %5 = load i64* %4
  ret i64 %5
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h12514694631505169203E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h2025993263574620418E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h2025993263574620418E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace20h8205263552752188976E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace20h8205263552752188976E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap21h17410482367548120719E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap21h17410482367548120719E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized21h14894619610562227569E()
  store i8* %2, i8** %t
  %3 = load i8*** %x
  %4 = bitcast i8** %t to i8*
  %5 = bitcast i8** %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i8*** %x
  %7 = load i8*** %y
  %8 = bitcast i8** %6 to i8*
  %9 = bitcast i8** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i8*** %y
  %11 = bitcast i8** %10 to i8*
  %12 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load i8** %t
  call void @_ZN3mem6forget20h8369015621338118636E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized21h14894619610562227569E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h8369015621338118636E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next20h9785195661081150216E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take21h13906986896917054021E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take21h13906986896917054021E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace19h722853009005111287E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace19h722853009005111287E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap21h12379075307034857140E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap21h12379075307034857140E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized20h9404214460612487335E()
  store i8* %2, i8** %t
  %3 = load i8*** %x
  %4 = bitcast i8** %t to i8*
  %5 = bitcast i8** %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i8*** %x
  %7 = load i8*** %y
  %8 = bitcast i8** %6 to i8*
  %9 = bitcast i8** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i8*** %y
  %11 = bitcast i8** %10 to i8*
  %12 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load i8** %t
  call void @_ZN3mem6forget21h16284824532745997009E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized20h9404214460612487335E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget21h16284824532745997009E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h17218972941499598353E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take21h12487243990185515470E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take21h12487243990185515470E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace20h5142029732341265588E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace20h5142029732341265588E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap20h3017025817688994198E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h3017025817688994198E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized21h16926801137755865721E()
  store i8* %2, i8** %t
  %3 = load i8*** %x
  %4 = bitcast i8** %t to i8*
  %5 = bitcast i8** %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i8*** %x
  %7 = load i8*** %y
  %8 = bitcast i8** %6 to i8*
  %9 = bitcast i8** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i8*** %y
  %11 = bitcast i8** %10 to i8*
  %12 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load i8** %t
  call void @_ZN3mem6forget20h6188713925462071009E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized21h16926801137755865721E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h6188713925462071009E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next18h80013519269718912E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take21h14729720482224111961E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take21h14729720482224111961E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace21h16408891572483315030E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace21h16408891572483315030E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap20h4238406653655388100E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h4238406653655388100E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized21h11509007202057207014E()
  store i8* %2, i8** %t
  %3 = load i8*** %x
  %4 = bitcast i8** %t to i8*
  %5 = bitcast i8** %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i8*** %x
  %7 = load i8*** %y
  %8 = bitcast i8** %6 to i8*
  %9 = bitcast i8** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i8*** %y
  %11 = bitcast i8** %10 to i8*
  %12 = bitcast i8** %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = load i8** %t
  call void @_ZN3mem6forget20h3493393032610794996E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized21h11509007202057207014E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h3493393032610794996E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: uwtable
define void @hy_map_contains(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.HyObj<[]>"*
  %m = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %s = alloca %"struct.collections::string::String<[]>[#6]"*
  %3 = alloca i8
  %4 = alloca { i8*, i32 }
  %5 = alloca %str_slice
  store %"struct.HyObj<[]>"* %1, %"struct.HyObj<[]>"** %self
  %6 = load %"struct.HyObj<[]>"** %self
  %7 = getelementptr inbounds %"struct.HyObj<[]>"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"enum.HyObjType<[]>"* %7, i32 0, i32 0
  %9 = load i8* %8, !range !0
  switch i8 %9, label %match_else [
    i8 0, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %10 = getelementptr inbounds %"struct.HyObj<[]>"* %2, i32 0, i32 0
  %11 = getelementptr inbounds %"enum.HyObjType<[]>"* %10, i32 0, i32 0
  %12 = load i8* %11, !range !0
  switch i8 %12, label %match_else4 [
    i8 1, label %match_case5
  ]

case_body1:                                       ; preds = %match_else
  %13 = getelementptr inbounds %str_slice* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([53 x i8]* @str2244, i32 0, i32 0), i8** %13
  %14 = getelementptr inbounds %str_slice* %5, i32 0, i32 1
  store i64 53, i64* %14
  invoke void @_ZN6unwind12begin_unwind21h15233954449314110570E(%str_slice* noalias nocapture dereferenceable(16) %5, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj15hy_map_contains10_FILE_LINE20h8f97236c5e74de36aiaE)
          to label %normal-return8 unwind label %unwind_custom_

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %15 = bitcast %"enum.HyObjType<[]>"* %7 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }*
  %16 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }* %15, i32 0, i32 1
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %16, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %m
  br label %case_body

case_body2:                                       ; preds = %match_case5
  %17 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %m
  %18 = load %"struct.collections::string::String<[]>[#6]"** %s
  %19 = invoke zeroext i1 @_ZN3Map12contains_key20h1281656739354506132E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %17, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %18)
          to label %normal-return unwind label %unwind_custom_

case_body3:                                       ; preds = %match_else4
  invoke void @hy_new_bool(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %0, i1 zeroext false)
          to label %normal-return7 unwind label %unwind_custom_

match_else4:                                      ; preds = %case_body
  br label %case_body3

match_case5:                                      ; preds = %case_body
  %20 = bitcast %"enum.HyObjType<[]>"* %10 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %21 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %20, i32 0, i32 1
  store %"struct.collections::string::String<[]>[#6]"* %21, %"struct.collections::string::String<[]>[#6]"** %s
  br label %case_body2

normal-return:                                    ; preds = %case_body2
  %22 = zext i1 %19 to i8
  store i8 %22, i8* %3
  %23 = load i8* %3, !range !1
  %24 = trunc i8 %23 to i1
  invoke void @hy_new_bool(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %0, i1 zeroext %24)
          to label %normal-return6 unwind label %unwind_custom_

unwind_custom_:                                   ; preds = %case_body1, %case_body3, %normal-return, %case_body2
  %25 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %25, { i8*, i32 }* %4
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %26 = load { i8*, i32 }* %4
  resume { i8*, i32 } %26

clean_custom_:                                    ; preds = %unwind_custom_
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  br label %resume

normal-return6:                                   ; preds = %normal-return
  br label %join

normal-return7:                                   ; preds = %case_body3
  br label %join

join:                                             ; preds = %normal-return7, %normal-return6
  br label %join9

normal-return8:                                   ; preds = %case_body1
  unreachable

join9:                                            ; preds = %join
  call void @_ZN5HyObj14glue_drop.211117h25e8706c72e1fecbE(%"struct.HyObj<[]>"* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3Map12contains_key20h1281656739354506132E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca i8*
  %autoref = alloca i8*
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %key
  %3 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %4 = load %"struct.collections::string::String<[]>[#6]"** %key
  %5 = call i8* @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find20h1712110752746731406E"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %3, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %4)
  store i8* %5, i8** %2
  %6 = load i8** %2
  store i8* %6, i8** %autoref
  %7 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14188958128089466779E"(i8** noalias dereferenceable(8) %autoref)
  %8 = zext i1 %7 to i8
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14188958128089466779E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %self = alloca i8**
  store i8** %0, i8*** %self
  %1 = load i8*** %self
  %2 = load i8** %1
  %3 = icmp ne i8* %2, null
  switch i1 %3, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  store i8 1, i8* %sret_slot
  br label %join

case_body1:                                       ; preds = %match_else
  store i8 0, i8* %sret_slot
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body1

match_case:                                       ; preds = %entry-block
  %4 = bitcast i8** %1 to %"struct.HyObj<[]>"**
  br label %case_body

join:                                             ; preds = %case_body1, %case_body
  %5 = load i8* %sret_slot, !range !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find20h1712110752746731406E"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }
  %__closure = alloca { i64, {}*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %key
  %3 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %4 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %3, i32 0, i32 0
  %5 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::string::String<[]>[#6]"** %key, %"struct.collections::string::String<[]>[#6]"*** %5
  %6 = getelementptr inbounds { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* %2, i32 0, i32 0
  store i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)* @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find12closure.2242E", i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)** %6
  %7 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }* %__closure to i8*
  %8 = getelementptr inbounds { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* %2, i32 0, i32 1
  store i8* %7, i8** %8
  %9 = call i8* @_ZN7treemap14tree_find_with20h9982225505448400649E(i8** noalias dereferenceable(8) %4, { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* noalias nocapture dereferenceable(16) %2)
  ret i8* %9
}

; Function Attrs: uwtable
define internal i8* @_ZN7treemap14tree_find_with20h9982225505448400649E(i8** noalias dereferenceable(8), { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %llretslotptr = alloca i8**
  %node = alloca i8**
  %iret_slot = alloca {}
  %current = alloca i8**
  %r = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %2 = alloca i8
  %match = alloca i8
  %ret_slot = alloca i8*
  %ret_slot9 = alloca i8*
  store i8** %0, i8*** %node
  %3 = load i8*** %node
  store i8** %3, i8*** %current
  br label %loop_body

loop_exit:                                        ; No predecessors!
  unreachable

return:                                           ; preds = %clean_custom_
  %4 = load i8*** %llretslotptr
  %5 = load i8** %4
  ret i8* %5

loop_body:                                        ; preds = %join10, %entry-block
  %6 = load i8*** %current
  %7 = load i8** %6
  %8 = icmp ne i8* %7, null
  switch i1 %8, label %match_else [
    i1 true, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %9 = getelementptr inbounds { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* %1, i32 0, i32 0
  %10 = load i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)** %9
  %11 = getelementptr inbounds { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* %1, i32 0, i32 1
  %12 = load i8** %11
  %13 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %r
  %14 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %13
  %15 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %14, i32 0, i32 0
  %16 = call i8 %10(i8* %12, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %15)
  store i8 %16, i8* %2
  %17 = load i8* %2
  store i8 %17, i8* %match
  %18 = load i8* %match, !range !2
  switch i8 %18, label %match_else5 [
    i8 -1, label %match_case6
    i8 1, label %match_case7
  ]

case_body1:                                       ; preds = %match_else
  store i8* null, i8** %ret_slot9
  store i8** %ret_slot9, i8*** %llretslotptr
  br label %clean_ast_4563_

match_else:                                       ; preds = %loop_body
  br label %case_body1

match_case:                                       ; preds = %loop_body
  %19 = bitcast i8** %6 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %19, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %r
  br label %case_body

case_body2:                                       ; preds = %match_case6
  %20 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %r
  %21 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %20
  %22 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %21, i32 0, i32 2
  store i8** %22, i8*** %current
  br label %join

case_body3:                                       ; preds = %match_case7
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %r
  %24 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %23
  %25 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %24, i32 0, i32 3
  store i8** %25, i8*** %current
  br label %join

case_body4:                                       ; preds = %match_else5
  %26 = bitcast i8** %ret_slot to %"struct.HyObj<[]>"**
  %27 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %r
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %27
  %29 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %28, i32 0, i32 1
  store %"struct.HyObj<[]>"* %29, %"struct.HyObj<[]>"** %26
  store i8** %ret_slot, i8*** %llretslotptr
  br label %clean_ast_4587_

match_else5:                                      ; preds = %case_body
  br label %case_body4

match_case6:                                      ; preds = %case_body
  br label %case_body2

match_case7:                                      ; preds = %case_body
  br label %case_body3

clean_custom_:                                    ; preds = %clean_ast_4563_
  br label %return

clean_ast_4563_:                                  ; preds = %case_body1, %clean_custom_8
  br label %clean_custom_

clean_custom_8:                                   ; preds = %clean_ast_4587_
  br label %clean_ast_4563_

clean_ast_4587_:                                  ; preds = %case_body4
  br label %clean_custom_8

join:                                             ; preds = %case_body3, %case_body2
  br label %join10

join10:                                           ; preds = %join
  br label %loop_body
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find12closure.2242E"(i8*, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %k2 = alloca %"struct.collections::string::String<[]>[#6]"*
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %k2
  %2 = bitcast i8* %0 to { i64, void (i8*)*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }* %2, i32 0, i32 4
  %4 = getelementptr inbounds { %"struct.collections::string::String<[]>[#6]"** }* %3, i32 0, i32 0
  %5 = load %"struct.collections::string::String<[]>[#6]"*** %4
  %6 = load %"struct.collections::string::String<[]>[#6]"** %5
  %7 = load %"struct.collections::string::String<[]>[#6]"** %k2
  %8 = call i8 @_ZN6string22String...std..cmp..Ord3cmp20ha705343ffe40c966QVaE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %6, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %7)
  ret i8 %8
}

attributes #0 = { uwtable "split-stack" }
attributes #1 = { inlinehint uwtable "split-stack" }
attributes #2 = { nounwind "split-stack" }
attributes #3 = { "split-stack" }
attributes #4 = { cold noinline noreturn uwtable "split-stack" }
attributes #5 = { cold noinline noreturn "split-stack" }
attributes #6 = { nounwind readnone "split-stack" }
attributes #7 = { noreturn "split-stack" }
attributes #8 = { noinline uwtable "split-stack" }

!0 = metadata !{i8 0, i8 6}
!1 = metadata !{i8 0, i8 2}
!2 = metadata !{i8 -1, i8 2}
