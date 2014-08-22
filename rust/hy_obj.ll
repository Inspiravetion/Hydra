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
@_ZN5HyObj12hy_obj_print15__STATIC_FMTSTR20h2270b6a726d473a2fbaE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([1 x i8]* @str1698, i32 0, i32 0), i64 1 }, [48 x i8] undef } }
@str1794 = internal constant [1 x i8] c"]"
@_ZN5HyObj12hy_obj_print15__STATIC_FMTSTR20h2270b6a726d473a2ZbaE = internal unnamed_addr constant { { i8, %str_slice, [48 x i8] } } { { i8, %str_slice, [48 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([1 x i8]* @str1794, i32 0, i32 0), i64 1 }, [48 x i8] undef } }
@_ZN4heap5EMPTY20hbfe5b9a4d3c56c6f8baE = available_externally global i64 12345
@vtable1865 = internal constant { void (i8**)*, %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* } { void (i8**)* @"_ZN13Box$LT$i8$GT$14glue_drop.184417hb9d911eef5ca52f5E", %"struct.core::intrinsics::TypeId<[]>[#3]" (%str_slice*)* @_ZN3any12T.AnyPrivate11get_type_id21h13811272207481798126E }
@str1866 = internal constant [46 x i8] c"Called print on an object that is not an Array"
@str1867 = internal constant [52 x i8] c"src/lib/lib_hy_obj_types/lib/lib_hy_obj/src/HyObj.rs"
@_ZN5HyObj12hy_obj_print10_FILE_LINE20h7f2554407f0b4c30xcaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 41 }
@_ZN9to_string10T.ToString9to_string15__STATIC_FMTSTR20h8b23f08f60bcdf37dfeE = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1895 = internal constant [10 x i8] c"Array : []"
@str1947 = internal constant [8 x i8] c"Map : {}"
@_ZN3vec10PTR_MARKER20hd0730fd7e79c68f4HgiE = available_externally constant i8 0
@str1984 = internal constant [40 x i8] c"Vec::reserve_additional: `uint` overflow"
@"_ZN3vec12Vec$LT$T$GT$18reserve_additional15__STATIC_FMTSTR20hc4afdecb9c205274fyiE" = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str1986 = internal constant [84 x i8] c"/Users/rustbuild/src/rust-buildbot/slave/nightly-mac/build/src/libcollections/vec.rs"
@"_ZN3vec12Vec$LT$T$GT$18reserve_additional8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dQxiE" = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([84 x i8]* @str1986, i32 0, i32 0), i64 84 }, i64 585 }
@"_ZN6option15Option$LT$T$GT$6expect15__STATIC_FMTSTR20h79b308b23b8faec4humE" = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str2009 = internal constant [80 x i8] c"/Users/rustbuild/src/rust-buildbot/slave/nightly-mac/build/src/libcore/option.rs"
@"_ZN6option15Option$LT$T$GT$6expect8_run_fmt10_FILE_LINE20h9519b9138055b1fdStmE" = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([80 x i8]* @str2009, i32 0, i32 0), i64 80 }, i64 243 }
@str2013 = internal constant [17 x i8] c"capacity overflow"
@str2182 = internal constant [48 x i8] c"called `Option::take_unwrap()` on a `None` value"
@"_ZN6option15Option$LT$T$GT$11take_unwrap15__STATIC_FMTSTR20h79b308b23b8faec4KDmE" = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt10_FILE_LINE20h9519b9138055b1fdlDmE" = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([80 x i8]* @str2009, i32 0, i32 0), i64 80 }, i64 440 }
@str2198 = internal constant [26 x i8] c"Maps only take string keys"
@_ZN5HyObj13hy_map_insert10_FILE_LINE20h7f2554407f0b4c30ufaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 127 }
@str2199 = internal constant [51 x i8] c"Called hy_map_insert on an object that is not a Map"
@_ZN5HyObj13hy_map_insert10_FILE_LINE20h7f2554407f0b4c30OfaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 130 }
@str2227 = internal constant [16 x i8] c"explicit failure"
@_ZN7treemap6remove15__STATIC_FMTSTR20hc4afdecb9c2052741zfE = internal unnamed_addr constant { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } } { { i8, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } }, [0 x i8] } { i8 1, { { i8, [15 x i8] }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } } { { i8, [15 x i8] } { i8 0, [15 x i8] undef }, { i32, i8, i64, { i8, [15 x i8] }, { i8, [15 x i8] } } { i32 32, i8 2, i64 0, { i8, [15 x i8] } { i8 3, [15 x i8] undef }, { i8, [15 x i8] } { i8 3, [15 x i8] undef } } }, [0 x i8] undef } }
@str2229 = internal constant [88 x i8] c"/Users/rustbuild/src/rust-buildbot/slave/nightly-mac/build/src/libcollections/treemap.rs"
@_ZN7treemap6remove8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dCzfE = available_externally constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([88 x i8]* @str2229, i32 0, i32 0), i64 88 }, i64 1619 }
@_ZN5HyObj13hy_map_delete10_FILE_LINE20h7f2554407f0b4c30CgaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 142 }
@str2230 = internal constant [51 x i8] c"Called hy_map_delete on an object that is not a Map"
@_ZN5HyObj13hy_map_delete10_FILE_LINE20h7f2554407f0b4c30WgaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 145 }
@_ZN5HyObj15hy_map_contains10_FILE_LINE20h7f2554407f0b4c30KhaE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 157 }
@str2242 = internal constant [53 x i8] c"Called hy_map_contains on an object that is not a Map"
@_ZN5HyObj15hy_map_contains10_FILE_LINE20h7f2554407f0b4c304haE = internal constant { %str_slice, i64 } { %str_slice { i8* getelementptr inbounds ([52 x i8]* @str1867, i32 0, i32 0), i64 52 }, i64 160 }

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
  call void @_ZN6unwind12begin_unwind21h14917061321027513071E(%str_slice* noalias nocapture dereferenceable(16) %4, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj12hy_obj_print10_FILE_LINE20h7f2554407f0b4c30xcaE)
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
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, %str_slice, [48 x i8] } }* @_ZN5HyObj12hy_obj_print15__STATIC_FMTSTR20h2270b6a726d473a2fbaE to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %15
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
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h4aa868c10b1a5d74yiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust3)
  call void @_ZN2io5stdio10print_args20ha2ad804cfb78f72eyumE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args)
  br label %join

join:                                             ; preds = %case_body2
  %23 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %vec
  call void @"_ZN3vec12Vec$LT$T$GT$4iter20h4431035320452900999E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24) %23)
  store %"struct.core::slice::Items<[HyObj]>[#3]"* %2, %"struct.core::slice::Items<[HyObj]>[#3]"** %for_head
  %24 = load %"struct.core::slice::Items<[HyObj]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  br label %case_body5

for_loopback:                                     ; preds = %for_body, %join
  %25 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6265921154936505050E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias dereferenceable(16) %24)
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
  store %"enum.core::fmt::rt::Piece<[]>[#3]"* getelementptr inbounds ([1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]* bitcast ({ { i8, %str_slice, [48 x i8] } }* @_ZN5HyObj12hy_obj_print15__STATIC_FMTSTR20h2270b6a726d473a2ZbaE to [1 x %"enum.core::fmt::rt::Piece<[]>[#3]"]*), i32 0, i32 0), %"enum.core::fmt::rt::Piece<[]>[#3]"** %34
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
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h4aa868c10b1a5d74yiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args7, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust8, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust9)
  call void @_ZN2io5stdio10print_args20ha2ad804cfb78f72eyumE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args7)
  br label %join10

join10:                                           ; preds = %case_body5
  br label %join11

join11:                                           ; preds = %join10
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h4aa868c10b1a5d74yiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32), { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16), { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
define internal void @"_ZN3vec12Vec$LT$T$GT$4iter20h4431035320452900999E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  %2 = alloca { %"struct.HyObj<[]>"*, i64 }
  %__adjust = alloca { %"struct.HyObj<[]>"*, i64 }
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %1, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %3 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice20h8133902481850563327E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24) %3)
  %4 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %2, i32 0, i32 0
  %5 = load %"struct.HyObj<[]>"** %4
  %6 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %2, i32 0, i32 1
  %7 = load i64* %6
  %8 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %__adjust, i32 0, i32 0
  store %"struct.HyObj<[]>"* %5, %"struct.HyObj<[]>"** %8
  %9 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %__adjust, i32 0, i32 1
  store i64 %7, i64* %9
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter20h3291893133856722460E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter20h3291893133856722460E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %p = alloca %"struct.HyObj<[]>"*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = call %"struct.HyObj<[]>"* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr21h11285028420500753663E"({ %"struct.HyObj<[]>"*, i64 }* noalias dereferenceable(16) %1)
  store %"struct.HyObj<[]>"* %5, %"struct.HyObj<[]>"** %p
  %6 = call i64 @_ZN3mem7size_of20h9895913534579992576E()
  store i64 %6, i64* %2
  %7 = load i64* %2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %then-block-599-, label %else-block

then-block-599-:                                  ; preds = %entry-block
  %9 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %0, i32 0, i32 0
  %10 = load %"struct.HyObj<[]>"** %p
  store %"struct.HyObj<[]>"* %10, %"struct.HyObj<[]>"** %9
  %11 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %0, i32 0, i32 1
  %12 = load %"struct.HyObj<[]>"** %p
  %13 = ptrtoint %"struct.HyObj<[]>"* %12 to i64
  %14 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h8982095355833455882E"({ %"struct.HyObj<[]>"*, i64 }* noalias dereferenceable(16) %1)
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
  %23 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h8982095355833455882E"({ %"struct.HyObj<[]>"*, i64 }* noalias dereferenceable(16) %1)
  store i64 %23, i64* %4
  %24 = load i64* %4
  %25 = call %"struct.HyObj<[]>"* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h6457552919948515379E"(%"struct.HyObj<[]>"* %22, i64 %24)
  store %"struct.HyObj<[]>"* %25, %"struct.HyObj<[]>"** %21
  %26 = getelementptr inbounds %"struct.core::slice::Items<[HyObj]>[#3]"* %0, i32 0, i32 2
  br label %join

join:                                             ; preds = %else-block, %then-block-599-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal %"struct.HyObj<[]>"* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr21h11285028420500753663E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { %"struct.HyObj<[]>"*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"
  store { %"struct.HyObj<[]>"*, i64 }* %0, { %"struct.HyObj<[]>"*, i64 }** %self
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %self
  call void @_ZN3raw4Repr4repr21h15444597286339807020E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { %"struct.HyObj<[]>"*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %1, i32 0, i32 0
  %4 = load %"struct.HyObj<[]>"** %3
  ret %"struct.HyObj<[]>"* %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h15444597286339807020E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { %"struct.HyObj<[]>"*, i64 }*
  store { %"struct.HyObj<[]>"*, i64 }* %1, { %"struct.HyObj<[]>"*, i64 }** %self
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h8306454805801227655E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h8306454805801227655E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"
  %src = alloca { %"struct.HyObj<[]>"*, i64 }*
  store { %"struct.HyObj<[]>"*, i64 }* %1, { %"struct.HyObj<[]>"*, i64 }** %src
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %src
  %3 = bitcast { %"struct.HyObj<[]>"*, i64 }* %2 to %"struct.core::raw::Slice<[HyObj]>[#3]"*
  store %"struct.core::raw::Slice<[HyObj]>[#3]"* %3, %"struct.core::raw::Slice<[HyObj]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h12482045323336436588E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
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
define internal void @_ZN3mem13uninitialized21h12482045323336436588E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #1 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of20h9895913534579992576E() unnamed_addr #1 {
entry-block:
  ret i64 32
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h8982095355833455882E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { %"struct.HyObj<[]>"*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"
  store { %"struct.HyObj<[]>"*, i64 }* %0, { %"struct.HyObj<[]>"*, i64 }** %self
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %self
  call void @_ZN3raw4Repr4repr21h16432192221421554164E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { %"struct.HyObj<[]>"*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %1, i32 0, i32 1
  %4 = load i64* %3
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h16432192221421554164E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { %"struct.HyObj<[]>"*, i64 }*
  store { %"struct.HyObj<[]>"*, i64 }* %1, { %"struct.HyObj<[]>"*, i64 }** %self
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %self
  call void @_ZN3mem14transmute_copy21h10258179606702131248E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy21h10258179606702131248E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16), { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[HyObj]>[#3]"
  %src = alloca { %"struct.HyObj<[]>"*, i64 }*
  store { %"struct.HyObj<[]>"*, i64 }* %1, { %"struct.HyObj<[]>"*, i64 }** %src
  %2 = load { %"struct.HyObj<[]>"*, i64 }** %src
  %3 = bitcast { %"struct.HyObj<[]>"*, i64 }* %2 to %"struct.core::raw::Slice<[HyObj]>[#3]"*
  store %"struct.core::raw::Slice<[HyObj]>[#3]"* %3, %"struct.core::raw::Slice<[HyObj]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h12482045323336436588E(%"struct.core::raw::Slice<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
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
define internal %"struct.HyObj<[]>"* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h6457552919948515379E"(%"struct.HyObj<[]>"*, i64) unnamed_addr #1 {
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
define internal void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice20h8133902481850563327E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %1, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %2 = bitcast { %"struct.HyObj<[]>"*, i64 }* %0 to %"struct.core::raw::Slice<[HyObj]>[#3]"*
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %5 = call %"struct.HyObj<[]>"* @"_ZN3vec12Vec$LT$T$GT$6as_ptr21h17437364719823904508E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24) %4)
  store %"struct.HyObj<[]>"* %5, %"struct.HyObj<[]>"** %3
  %6 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %2, i32 0, i32 1
  %7 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %8 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %7, i32 0, i32 0
  %9 = load i64* %8
  store i64 %9, i64* %6
  ret void
}

; Function Attrs: inlinehint uwtable
define internal %"struct.HyObj<[]>"* @"_ZN3vec12Vec$LT$T$GT$6as_ptr21h17437364719823904508E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %1, i32 0, i32 2
  %3 = load %"struct.HyObj<[]>"** %2
  ret %"struct.HyObj<[]>"* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6265921154936505050E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
  br i1 %8, label %then-block-850-, label %else-block

then-block-850-:                                  ; preds = %entry-block
  store i8* null, i8** %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %9 = call i64 @_ZN3mem7size_of20h9895913534579992576E()
  store i64 %9, i64* %1
  %10 = load i64* %1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then-block-861-, label %else-block1

then-block-861-:                                  ; preds = %else-block
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
  %30 = call %"struct.HyObj<[]>"* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset20h6457552919948515379E"(%"struct.HyObj<[]>"* %29, i64 1)
  store %"struct.HyObj<[]>"* %30, %"struct.HyObj<[]>"** %26
  %31 = bitcast i8** %sret_slot to %"struct.HyObj<[]>"**
  %32 = load %"struct.HyObj<[]>"** %old
  store %"struct.HyObj<[]>"* %32, %"struct.HyObj<[]>"** %31
  br label %join

join:                                             ; preds = %else-block1, %then-block-861-
  br label %join2

join2:                                            ; preds = %join, %then-block-850-
  %33 = load i8** %sret_slot
  ret i8* %33
}

; Function Attrs: cold noinline noreturn uwtable
define internal void @_ZN6unwind12begin_unwind21h14917061321027513071E(%str_slice* noalias nocapture dereferenceable(16), { %str_slice, i64 }* noalias nocapture dereferenceable(24)) unnamed_addr #4 {
entry-block:
  %file_line = alloca { %str_slice, i64 }*
  %__adjust = alloca { void (i8*)**, i8* }
  store { %str_slice, i64 }* %1, { %str_slice, i64 }** %file_line
  %2 = call i8* @_ZN4heap15exchange_malloc20h2e78701dd413c7278oaE(i64 16, i64 8)
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
define internal i8* @_ZN4heap15exchange_malloc20h2e78701dd413c7278oaE(i64, i64) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %size = alloca i64
  %align = alloca i64
  store i64 %0, i64* %size
  store i64 %1, i64* %align
  %2 = load i64* %size
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %then-block-945-, label %else-block

then-block-945-:                                  ; preds = %entry-block
  store i8* bitcast (i64* @_ZN4heap5EMPTY20hbfe5b9a4d3c56c6f8baE to i8*), i8** %sret_slot
  br label %join

else-block:                                       ; preds = %entry-block
  %4 = load i64* %size
  %5 = load i64* %align
  %6 = call i8* @_ZN4heap8allocate20h429f468402bb5ce4MpaE(i64 %4, i64 %5)
  store i8* %6, i8** %sret_slot
  br label %join

join:                                             ; preds = %else-block, %then-block-945-
  %7 = load i8** %sret_slot
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap8allocate20h429f468402bb5ce4MpaE(i64, i64) unnamed_addr #1 {
entry-block:
  %size = alloca i64
  %align = alloca i64
  store i64 %0, i64* %size
  store i64 %1, i64* %align
  %2 = load i64* %size
  %3 = load i64* %align
  %4 = call i8* @_ZN4heap3imp8allocate20hae9c6d18fe5d4b614paE(i64 %2, i64 %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap3imp8allocate20hae9c6d18fe5d4b614paE(i64, i64) unnamed_addr #1 {
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
  %9 = call i64 @_ZN3num8uint.Int14trailing_zeros20hc2b6b8d64bce0633VqaE(i64 %8)
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
  %17 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null19h923026979763168403E"(i8** noalias dereferenceable(8) %ptr)
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %5
  %19 = load i8* %5, !range !1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %then-block-1020-, label %next-block

then-block-1020-:                                 ; preds = %entry-block
  call void @_ZN3oom20h70228b11624052eclRaE()
  unreachable

next-block:                                       ; preds = %entry-block
  %21 = load i8** %ptr
  ret i8* %21
}

declare i8* @je_mallocx(i64, i32) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num8uint.Int14trailing_zeros20hc2b6b8d64bce0633VqaE(i64) unnamed_addr #1 {
entry-block:
  %self = alloca i64
  %1 = alloca i64
  store i64 %0, i64* %self
  %2 = load i64* %self
  %3 = call i64 @_ZN3num7u64.Int14trailing_zeros20hc48535d5a59cad87craE(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64* %1
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num7u64.Int14trailing_zeros20hc48535d5a59cad87craE(i64) unnamed_addr #1 {
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
define internal zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null19h923026979763168403E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  %3 = call i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h11732902981327751795E"()
  store i8* %3, i8** %1
  %4 = load i8** %1
  %5 = load i8** %2
  %6 = icmp eq i8* %5, %4
  %7 = zext i1 %6 to i8
  %8 = trunc i8 %7 to i1
  ret i1 %8
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$4null21h11732902981327751795E"() unnamed_addr #1 {
entry-block:
  %0 = call i8* @_ZN3ptr8mut_null20h8770854628872253878E()
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3ptr8mut_null20h8770854628872253878E() unnamed_addr #1 {
entry-block:
  ret i8* null
}

; Function Attrs: noreturn
declare void @_ZN3oom20h70228b11624052eclRaE() unnamed_addr #7

define internal void @"_ZN13Box$LT$i8$GT$14glue_drop.184417hb9d911eef5ca52f5E"(i8**) unnamed_addr #3 {
entry-block:
  %1 = load i8** %0
  %2 = icmp ne i8* %1, null
  br i1 %2, label %cond, label %next

next:                                             ; preds = %cond, %entry-block
  ret void

cond:                                             ; preds = %entry-block
  call void @_ZN4heap13exchange_free20hb4928d8e0ee60f334raE(i8* %1, i64 1, i64 1)
  br label %next
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap13exchange_free20hb4928d8e0ee60f334raE(i8*, i64, i64) unnamed_addr #1 {
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
  call void @_ZN4heap10deallocate20h9902fb30a5c14b1arsaE(i8* %3, i64 %4, i64 %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap10deallocate20h9902fb30a5c14b1arsaE(i8*, i64, i64) unnamed_addr #1 {
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
  call void @_ZN4heap3imp10deallocate20h0809272048c30422NsaE(i8* %3, i64 %4, i64 %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4heap3imp10deallocate20h0809272048c30422NsaE(i8*, i64, i64) unnamed_addr #1 {
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
  %8 = call i64 @_ZN3num8uint.Int14trailing_zeros20hc2b6b8d64bce0633VqaE(i64 %7)
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
define internal %"struct.core::intrinsics::TypeId<[]>[#3]" @_ZN3any12T.AnyPrivate11get_type_id21h13811272207481798126E(%str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %self = alloca %str_slice*
  store %str_slice* %0, %str_slice** %self
  %1 = call %"struct.core::intrinsics::TypeId<[]>[#3]" @_ZN10intrinsics6TypeId2of21h11313584633063539463E()
  ret %"struct.core::intrinsics::TypeId<[]>[#3]" %1
}

; Function Attrs: uwtable
define internal %"struct.core::intrinsics::TypeId<[]>[#3]" @_ZN10intrinsics6TypeId2of21h11313584633063539463E() unnamed_addr #0 {
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
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %self
  %11 = load %"struct.HyObj<[]>"** %self
  %12 = getelementptr inbounds %"struct.HyObj<[]>"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"enum.HyObjType<[]>"* %12, i32 0, i32 0
  %14 = load i8* %13, !range !0
  switch i8 %14, label %match_else [
    i8 4, label %match_case
    i8 0, label %match_case3
  ]

case_body:                                        ; preds = %match_case
  %15 = getelementptr inbounds %str_slice* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8]* @str1895, i32 0, i32 0), i8** %15
  %16 = getelementptr inbounds %str_slice* %3, i32 0, i32 1
  store i64 10, i64* %16
  call void @_ZN9to_string10T.ToString9to_string20h3194005219045269812E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %2, %str_slice* noalias dereferenceable(16) %3)
  invoke void @_ZN5c_str13String.ToCStr8to_c_str20h50c310944d3be0a0HtaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %1, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %2)
          to label %normal-return unwind label %unwind_ast_176_

case_body1:                                       ; preds = %match_case3
  %17 = getelementptr inbounds %str_slice* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8]* @str1947, i32 0, i32 0), i8** %17
  %18 = getelementptr inbounds %str_slice* %7, i32 0, i32 1
  store i64 8, i64* %18
  call void @_ZN9to_string10T.ToString9to_string20h3194005219045269812E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %6, %str_slice* noalias dereferenceable(16) %7)
  invoke void @_ZN5c_str13String.ToCStr8to_c_str20h50c310944d3be0a0HtaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %5, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %6)
          to label %normal-return6 unwind label %unwind_ast_186_

case_body2:                                       ; preds = %match_else
  %19 = getelementptr inbounds %str_slice* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([46 x i8]* @str1866, i32 0, i32 0), i8** %19
  %20 = getelementptr inbounds %str_slice* %10, i32 0, i32 1
  store i64 46, i64* %20
  call void @_ZN9to_string10T.ToString9to_string20h3194005219045269812E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %9, %str_slice* noalias dereferenceable(16) %10)
  invoke void @_ZN5c_str13String.ToCStr8to_c_str20h50c310944d3be0a0HtaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %8, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %9)
          to label %normal-return9 unwind label %unwind_ast_195_

match_else:                                       ; preds = %entry-block
  br label %case_body2

match_case:                                       ; preds = %entry-block
  %21 = bitcast %"enum.HyObjType<[]>"* %12 to { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }*
  %22 = getelementptr inbounds { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }* %21, i32 0, i32 1
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %22, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %vec
  br label %case_body

match_case3:                                      ; preds = %entry-block
  %23 = bitcast %"enum.HyObjType<[]>"* %12 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }*
  %24 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }* %23, i32 0, i32 1
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %24, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %map
  br label %case_body1

normal-return:                                    ; preds = %case_body
  %25 = invoke i8* @_ZN5c_str7CString6unwrap20h438c841e01f73389b4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16) %1)
          to label %normal-return5 unwind label %unwind_ast_176_

unwind_ast_176_:                                  ; preds = %normal-return, %case_body
  %26 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %26, { i8*, i32 }* %4
  br label %clean_ast_176_

resume:                                           ; preds = %clean_custom_
  %27 = load { i8*, i32 }* %4
  resume { i8*, i32 } %27

clean_custom_:                                    ; preds = %clean_ast_195_, %clean_custom_7, %clean_custom_4
  br label %resume

clean_custom_4:                                   ; preds = %clean_ast_176_
  br label %clean_custom_

clean_ast_176_:                                   ; preds = %unwind_ast_176_
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %2)
  br label %clean_custom_4

normal-return5:                                   ; preds = %normal-return
  store i8* %25, i8** %sret_slot
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %2)
  br label %join

normal-return6:                                   ; preds = %case_body1
  %28 = invoke i8* @_ZN5c_str7CString6unwrap20h438c841e01f73389b4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16) %5)
          to label %normal-return8 unwind label %unwind_ast_186_

unwind_ast_186_:                                  ; preds = %normal-return6, %case_body1
  %29 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %29, { i8*, i32 }* %4
  br label %clean_ast_186_

clean_custom_7:                                   ; preds = %clean_ast_186_
  br label %clean_custom_

clean_ast_186_:                                   ; preds = %unwind_ast_186_
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %6)
  br label %clean_custom_7

normal-return8:                                   ; preds = %normal-return6
  store i8* %28, i8** %sret_slot
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %6)
  br label %join

normal-return9:                                   ; preds = %case_body2
  %30 = invoke i8* @_ZN5c_str7CString6unwrap20h438c841e01f73389b4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16) %8)
          to label %normal-return10 unwind label %unwind_ast_195_

unwind_ast_195_:                                  ; preds = %normal-return9, %case_body2
  %31 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %31, { i8*, i32 }* %4
  br label %clean_ast_195_

clean_ast_195_:                                   ; preds = %unwind_ast_195_
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %9)
  br label %clean_custom_

normal-return10:                                  ; preds = %normal-return9
  store i8* %30, i8** %sret_slot
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %9)
  br label %join

join:                                             ; preds = %normal-return10, %normal-return8, %normal-return5
  %32 = load i8** %sret_slot
  ret i8* %32
}

declare i8* @_ZN5c_str7CString6unwrap20h438c841e01f73389b4aE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define internal void @_ZN5c_str13String.ToCStr8to_c_str20h50c310944d3be0a0HtaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca { i8*, i64 }
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %self
  %3 = load %"struct.collections::string::String<[]>[#6]"** %self
  call void @_ZN6string6String8as_bytes20h268520a042b93493StaE({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %3)
  call void @"_ZN5c_str31_$BP$$x27a$x20$x5bu8$x5d.ToCStr8to_c_str20hbabd71a2b0452c14q9aE"(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias dereferenceable(16) %2)
  ret void
}

declare void @"_ZN5c_str31_$BP$$x27a$x20$x5bu8$x5d.ToCStr8to_c_str20hbabd71a2b0452c14q9aE"(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define internal void @_ZN6string6String8as_bytes20h268520a042b93493StaE({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::string::String<[]>[#6]"*
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %self
  %2 = load %"struct.collections::string::String<[]>[#6]"** %self
  %3 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %2, i32 0, i32 0
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice21h12486688534718192433E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %0, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice21h12486688534718192433E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = bitcast { i8*, i64 }* %0 to %"struct.core::raw::Slice<[u8]>[#3]"*
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 0
  %4 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %5 = call i8* @"_ZN3vec12Vec$LT$T$GT$6as_ptr20h6461951750011689264E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %4)
  store i8* %5, i8** %3
  %6 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 1
  %7 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %8 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %7, i32 0, i32 0
  %9 = load i64* %8
  store i64 %9, i64* %6
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3vec12Vec$LT$T$GT$6as_ptr20h6461951750011689264E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %1, i32 0, i32 2
  %3 = load i8** %2
  ret i8* %3
}

; Function Attrs: uwtable
define internal void @_ZN9to_string10T.ToString9to_string20h3194005219045269812E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24), %str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
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
  call void @_ZN3fmt8argument20h4424212635317547277E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %11, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h1201838728840683068E, %str_slice* noalias dereferenceable(16) %12)
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
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h4aa868c10b1a5d74yiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust1)
  call void @_ZN3fmt6format20h05b71c90fa35a7ceeWqE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %0, %"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %__args)
  br label %join

join:                                             ; preds = %case_body
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3fmt8argument20h4424212635317547277E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16), %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %str_slice* noalias dereferenceable(16)) unnamed_addr #1 {
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
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show20h1201838728840683068E(%str_slice* noalias nocapture dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
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

define internal void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.192917h566961be18a981efE"(%"struct.collections::vec::Vec<[u8]>[#6]"* %1)
  ret void
}

define internal void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.192917h566961be18a981efE"(%"struct.collections::vec::Vec<[u8]>[#6]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 0
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 1
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop20h2325745817841526084E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24) %0)
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop20h2325745817841526084E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
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
  br i1 %6, label %then-block-1384-, label %next-block

then-block-1384-:                                 ; preds = %entry-block
  %7 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice21h14300668296719496868E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %7)
  %8 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 0
  %9 = load i8** %8
  %10 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 1
  %11 = load i64* %10
  %12 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %9, i8** %12
  %13 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %11, i64* %13
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h11959423455456282126E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
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
  call void @_ZN3vec7dealloc20h7594024019708040667E(i8* %17, i64 %20)
  br label %next-block

for_loopback:                                     ; preds = %for_body, %then-block-1384-
  %21 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h16260367641487646694E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias dereferenceable(16) %14)
  store i8* %21, i8** %loop_option
  %22 = load i8** %loop_option
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i8
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %26 = load i8** %loop_option
  store i8* %26, i8** %src.i
  %27 = call i8 @_ZN3mem13uninitialized20h4680158393289761987E()
  store i8 %27, i8* %tmp.i
  %28 = load i8** %src.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp.i, i8* %28, i64 1, i32 1, i1 false)
  %29 = load i8* %tmp.i
  br label %for_loopback

next-block:                                       ; preds = %entry-block, %for_exit
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h11959423455456282126E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %p = alloca i8*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = call i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr20h2771767234286679384E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i8* %5, i8** %p
  %6 = call i64 @_ZN3mem7size_of20h1293247382103055693E()
  store i64 %6, i64* %2
  %7 = load i64* %2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %then-block-599-, label %else-block

then-block-599-:                                  ; preds = %entry-block
  %9 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 0
  %10 = load i8** %p
  store i8* %10, i8** %9
  %11 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 1
  %12 = load i8** %p
  %13 = ptrtoint i8* %12 to i64
  %14 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h1938098557124389725E"({ i8*, i64 }* noalias dereferenceable(16) %1)
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
  %23 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h1938098557124389725E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %23, i64* %4
  %24 = load i64* %4
  %25 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h16783863045793753084E"(i8* %22, i64 %24)
  store i8* %25, i8** %21
  %26 = getelementptr inbounds %"struct.core::slice::Items<[u8]>[#3]"* %0, i32 0, i32 2
  br label %join

join:                                             ; preds = %else-block, %then-block-599-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$6as_ptr20h2771767234286679384E"({ i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store { i8*, i64 }* %0, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3raw4Repr4repr21h12686154348040504687E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %1, i32 0, i32 0
  %4 = load i8** %3
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h12686154348040504687E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy21h14705563843848420374E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy21h14705563843848420374E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h15687247842006767120E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
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
define internal void @_ZN3mem13uninitialized21h15687247842006767120E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #1 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of20h1293247382103055693E() unnamed_addr #1 {
entry-block:
  ret i64 1
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h1938098557124389725E"({ i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  %1 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store { i8*, i64 }* %0, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3raw4Repr4repr21h17104547098285887888E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { i8*, i64 }* noalias dereferenceable(16) %2)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %1, i32 0, i32 1
  %4 = load i64* %3
  ret i64 %4
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h17104547098285887888E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy19h567315266078622475E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy19h567315266078622475E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h15687247842006767120E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
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
define internal i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h16783863045793753084E"(i8*, i64) unnamed_addr #1 {
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
define internal void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice21h14300668296719496868E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca i8*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = bitcast { i8*, i64 }* %0 to %"struct.core::raw::Slice<[u8]>[#3]"*
  %4 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %6 = call i8* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr21h18372807218275286690E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %5)
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
define internal i8* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr21h18372807218275286690E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %1, i32 0, i32 2
  %3 = load i8** %2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h16260367641487646694E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
  br i1 %8, label %then-block-850-, label %else-block

then-block-850-:                                  ; preds = %entry-block
  store i8* null, i8** %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %9 = call i64 @_ZN3mem7size_of20h1293247382103055693E()
  store i64 %9, i64* %1
  %10 = load i64* %1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %then-block-861-, label %else-block1

then-block-861-:                                  ; preds = %else-block
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
  %29 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h16783863045793753084E"(i8* %28, i64 1)
  store i8* %29, i8** %25
  %30 = load i8** %old
  store i8* %30, i8** %sret_slot
  br label %join

join:                                             ; preds = %else-block1, %then-block-861-
  br label %join2

join2:                                            ; preds = %join, %then-block-850-
  %31 = load i8** %sret_slot
  ret i8* %31
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3mem13uninitialized20h4680158393289761987E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8
  %0 = load i8* %sret_slot
  ret i8 %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3vec7dealloc20h7594024019708040667E(i8*, i64) unnamed_addr #1 {
entry-block:
  %ptr = alloca i8*
  %len = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store i8* %0, i8** %ptr
  store i64 %1, i64* %len
  %5 = call i64 @_ZN3mem7size_of20h1293247382103055693E()
  store i64 %5, i64* %2
  %6 = load i64* %2
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-1462-, label %next-block

then-block-1462-:                                 ; preds = %entry-block
  %8 = load i8** %ptr
  %9 = call i64 @_ZN3mem7size_of20h1293247382103055693E()
  store i64 %9, i64* %3
  %10 = load i64* %3
  %11 = load i64* %len
  %12 = mul i64 %11, %10
  %13 = call i64 @_ZN3mem12min_align_of20h5494531050422970569E()
  store i64 %13, i64* %4
  %14 = load i64* %4
  call void @_ZN4heap10deallocate20h9902fb30a5c14b1arsaE(i8* %8, i64 %12, i64 %14)
  br label %next-block

next-block:                                       ; preds = %entry-block, %then-block-1462-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem12min_align_of20h5494531050422970569E() unnamed_addr #1 {
entry-block:
  ret i64 1
}

; Function Attrs: uwtable
define void @new_hy_map(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %1 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  %2 = bitcast %"enum.HyObjType<[]>"* %1 to { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }*
  %3 = getelementptr inbounds { i8, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]" }* %2, i32 0, i32 1
  call void @"_ZN7treemap24TreeMap$LT$K$C$$x20V$GT$3new21h13349098132744475195E"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture sret dereferenceable(16) %3)
  %4 = getelementptr inbounds %"enum.HyObjType<[]>"* %1, i32 0, i32 0
  store i8 0, i8* %4
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN7treemap24TreeMap$LT$K$C$$x20V$GT$3new21h13349098132744475195E"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture sret dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 0
  store i8* null, i8** %1
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 1
  store i64 0, i64* %2
  ret void
}

; Function Attrs: uwtable
define void @new_hy_string(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), i8*) unnamed_addr #0 {
entry-block:
  %buf = alloca i8*
  %s = alloca %"struct.collections::string::String<[]>[#6]"
  %c_str = alloca %"struct.rustrt::c_str::CString<[]>[#9]"
  %2 = alloca { i8*, i32 }
  %3 = alloca { i8*, i64 }
  %__adjust = alloca { i8*, i64 }
  store i8* %1, i8** %buf
  call void @_ZN6string6String3new20h5abd6d4463bd06a4wyaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %s)
  %4 = load i8** %buf
  invoke void @_ZN5c_str7CString3new20h34895b63ae630fccEZaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture sret dereferenceable(16) %c_str, i8* %4, i1 zeroext true)
          to label %normal-return unwind label %unwind_ast_218_

normal-return:                                    ; preds = %entry-block
  invoke void @_ZN5c_str7CString8as_bytes20h56b1e52d588c176elRaE({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %3, %"struct.rustrt::c_str::CString<[]>[#9]"* noalias dereferenceable(16) %c_str)
          to label %normal-return1 unwind label %unwind_ast_227_

unwind_ast_218_:                                  ; preds = %entry-block
  %5 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %5, { i8*, i32 }* %2
  br label %clean_ast_218_

resume:                                           ; preds = %clean_custom_
  %6 = load { i8*, i32 }* %2
  resume { i8*, i32 } %6

clean_custom_:                                    ; preds = %clean_ast_218_
  br label %resume

clean_ast_218_:                                   ; preds = %clean_ast_227_, %unwind_ast_218_
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %s)
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
  invoke void @_ZN6string6String10push_bytes20h4abf61ddf56ced802yaE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %s, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
          to label %normal-return2 unwind label %unwind_ast_227_

unwind_ast_227_:                                  ; preds = %normal-return1, %normal-return
  %13 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %13, { i8*, i32 }* %2
  br label %clean_ast_227_

clean_ast_227_:                                   ; preds = %unwind_ast_227_
  call void @_ZN22rustrt..c_str..CString14glue_drop.207417h63541ff0edd32d86E(%"struct.rustrt::c_str::CString<[]>[#9]"* %c_str)
  br label %clean_ast_218_

normal-return2:                                   ; preds = %normal-return1
  call void @_ZN22rustrt..c_str..CString14glue_drop.207417h63541ff0edd32d86E(%"struct.rustrt::c_str::CString<[]>[#9]"* %c_str)
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
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %s)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN6string6String3new20h5abd6d4463bd06a4wyaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN3vec12Vec$LT$T$GT$3new20h4273291984640105828E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$3new20h4273291984640105828E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #1 {
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
define internal void @_ZN6string6String10push_bytes20h4abf61ddf56ced802yaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
  call void @"_ZN3vec12Vec$LT$T$GT$8push_all21h12861056777063259172E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %3, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$8push_all21h12861056777063259172E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
  %10 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h1938098557124389725E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %10, i64* %2
  %11 = load i64* %2
  call void @"_ZN3vec12Vec$LT$T$GT$18reserve_additional20h9692511704278823094E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %9, i64 %11)
  %12 = call i64 @"_ZN5slice34_$BP$$x27a$x20$x5bT$x5d.Collection3len20h1938098557124389725E"({ i8*, i64 }* noalias dereferenceable(16) %1)
  store i64 %12, i64* %4
  %13 = load i64* %4
  call void @_ZN4iter5range21h17875380628076019689E(%"struct.core::iter::Range<[uint]>[#3]"* noalias nocapture sret dereferenceable(24) %3, i64 0, i64 %13)
  store %"struct.core::iter::Range<[uint]>[#3]"* %3, %"struct.core::iter::Range<[uint]>[#3]"** %for_head
  %14 = load %"struct.core::iter::Range<[uint]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  ret void

for_loopback:                                     ; preds = %for_body, %entry-block
  call void @"_ZN4iter32Range$LT$A$GT$.Iterator$LT$A$GT$4next21h12976958844274135449E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16) %loop_option, %"struct.core::iter::Range<[uint]>[#3]"* noalias dereferenceable(24) %14)
  %15 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %loop_option, i32 0, i32 0
  %16 = load i8* %15, !range !1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %for_body, label %for_exit

for_body:                                         ; preds = %for_loopback
  %18 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %loop_option to { i8, i64 }*
  %19 = getelementptr inbounds { i8, i64 }* %18, i32 0, i32 1
  %20 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %21 = call i64 @"_ZN3vec23Vec$LT$T$GT$.Collection3len21h17989965468858724361E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %20)
  store i64 %21, i64* %len
  %22 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice21h14300668296719496868E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %6, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %22)
  %23 = getelementptr inbounds { i8*, i64 }* %6, i32 0, i32 0
  %24 = load i8** %23
  %25 = getelementptr inbounds { i8*, i64 }* %6, i32 0, i32 1
  %26 = load i64* %25
  %27 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %24, i8** %27
  %28 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %26, i64* %28
  %29 = load i64* %len
  %30 = call dereferenceable(1) i8* @"_ZN5slice65_$BP$$x27a$x20mut$x20$x5bT$x5d.MutableVector$LT$$x27a$C$$x20T$GT$14unsafe_mut_ref21h18208107653973580354E"({ i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust, i64 %29)
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
  %39 = call dereferenceable(1) i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$10unsafe_ref20h4096668810665441970E"({ i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust1, i64 %38)
  store i8* %39, i8** %8
  %40 = load i8** %8
  %41 = call i8 @_ZN5clone8u8.Clone5clone20h9f9203fbcafeb997xQaE(i8* noalias dereferenceable(1) %40)
  store i8 %41, i8* %7
  %42 = load i8* %7
  call void @_ZN3ptr5write20h2034787946948403244E(i8* %31, i8 %42)
  %43 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %44 = load i64* %len
  %45 = add i64 %44, 1
  call void @"_ZN3vec12Vec$LT$T$GT$7set_len21h11691355132389190916E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %43, i64 %45)
  br label %for_loopback
}

; Function Attrs: uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$18reserve_additional20h9692511704278823094E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #0 {
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
  br i1 %14, label %then-block-1628-, label %next-block

then-block-1628-:                                 ; preds = %entry-block
  %15 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %16 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %15, i32 0, i32 0
  call void @_ZN3num15uint.CheckedAdd11checked_add20h113ac802c85df171UBaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16) %2, i64* noalias dereferenceable(8) %16, i64* noalias dereferenceable(8) %extra)
  %17 = getelementptr inbounds %"enum.core::option::Option<[uint]>[#3]"* %2, i32 0, i32 0
  %18 = load i8* %17, !range !1
  switch i8 %18, label %match_else [
    i8 0, label %match_case
  ]

case_body:                                        ; preds = %match_case
  %19 = getelementptr inbounds { %str_slice* }* %3, i32 0, i32 0
  %20 = getelementptr inbounds %str_slice* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8]* @str1984, i32 0, i32 0), i8** %20
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
  call void @"_ZN3vec12Vec$LT$T$GT$7reserve21h15261277989136214037E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %26, i64 %27)
  br label %join5

match_else:                                       ; preds = %then-block-1628-
  %28 = bitcast %"enum.core::option::Option<[uint]>[#3]"* %2 to { i8, i64 }*
  %29 = getelementptr inbounds { i8, i64 }* %28, i32 0, i32 1
  store i64* %29, i64** %__llmatch
  br label %case_body1

match_case:                                       ; preds = %then-block-1628-
  br label %case_body

case_body2:                                       ; preds = %case_body
  %30 = load %str_slice*** %__llmatch3
  %31 = load %str_slice** %30
  store %str_slice* %31, %str_slice** %__arg0
  %32 = bitcast %"struct.core::fmt::Argument<[]>[#3]"* %5 to [1 x %"struct.core::fmt::Argument<[]>[#3]"]*
  %33 = getelementptr inbounds %"struct.core::fmt::Argument<[]>[#3]"* %5, i32 0
  %34 = load %str_slice** %__arg0
  call void @_ZN3fmt8argument20h4424212635317547277E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %33, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h1201838728840683068E, %str_slice* noalias dereferenceable(16) %34)
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
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h4aa868c10b1a5d74yiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust4)
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %45 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  call void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %45, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @"_ZN3vec12Vec$LT$T$GT$18reserve_additional8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dQxiE")
  unreachable

"_ZN3vec12Vec$LT$T$GT$18reserve_additional8_run_fmt20hf70d18bd20f7acd0cDaE.exit": ; No predecessors!
  unreachable

join:                                             ; No predecessors!
  unreachable

join5:                                            ; preds = %case_body1
  br label %next-block

next-block:                                       ; preds = %entry-block, %join5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3num15uint.CheckedAdd11checked_add20h113ac802c85df171UBaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16), i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
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
  br i1 %19, label %then-block-1756-, label %else-block

then-block-1756-:                                 ; preds = %entry-block
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

join:                                             ; preds = %else-block, %then-block-1756-
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) unnamed_addr #6

; Function Attrs: cold noinline noreturn
declare void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32), { %str_slice, i64 }* noalias nocapture dereferenceable(24)) unnamed_addr #5

; Function Attrs: uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$7reserve21h15261277989136214037E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #0 {
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
  br i1 %7, label %then-block-1853-, label %next-block

then-block-1853-:                                 ; preds = %entry-block
  %8 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %9 = load i64* %capacity
  %10 = call i64 @_ZN3num17next_power_of_two20h4480302593668398902E(i64 %9)
  store i64 %10, i64* %2
  %11 = load i64* %2
  call void @"_ZN3vec12Vec$LT$T$GT$13reserve_exact20h5642619301578267911E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %8, i64 %11)
  br label %next-block

next-block:                                       ; preds = %entry-block, %then-block-1853-
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$13reserve_exact20h5642619301578267911E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #0 {
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
  %7 = call i64 @_ZN3mem7size_of20h1293247382103055693E()
  store i64 %7, i64* %2
  %8 = load i64* %2
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %then-block-1878-, label %next-block

then-block-1878-:                                 ; preds = %entry-block
  br label %clean_custom_

clean_custom_:                                    ; preds = %next-block1, %then-block-1878-
  br label %return

next-block:                                       ; preds = %entry-block
  %10 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %11 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %10, i32 0, i32 1
  %12 = load i64* %capacity
  %13 = load i64* %11
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %then-block-1885-, label %next-block1

then-block-1885-:                                 ; preds = %next-block
  %15 = call i64 @_ZN3mem7size_of20h1293247382103055693E()
  store i64 %15, i64* %4
  %16 = load i64* %4
  store i64 %16, i64* %addr_of
  call void @_ZN3num15uint.CheckedMul11checked_mul20h2770ce63ea66da38FHaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16) %3, i64* noalias dereferenceable(8) %capacity, i64* noalias dereferenceable(8) %addr_of)
  %17 = getelementptr inbounds %str_slice* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8]* @str2013, i32 0, i32 0), i8** %17
  %18 = getelementptr inbounds %str_slice* %5, i32 0, i32 1
  store i64 17, i64* %18
  %19 = call i64 @"_ZN6option15Option$LT$T$GT$6expect20h6823001413114443692E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture dereferenceable(16) %3, %str_slice* noalias nocapture dereferenceable(16) %5)
  store i64 %19, i64* %size
  %20 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %21 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %20, i32 0, i32 2
  %22 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %23 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %22, i32 0, i32 2
  %24 = load i8** %23
  %25 = load i64* %size
  %26 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %27 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %26, i32 0, i32 1
  %28 = call i64 @_ZN3mem7size_of20h1293247382103055693E()
  store i64 %28, i64* %6
  %29 = load i64* %6
  %30 = load i64* %27
  %31 = mul i64 %30, %29
  %32 = call i8* @_ZN3vec16alloc_or_realloc21h12920686598743009684E(i8* %24, i64 %25, i64 %31)
  store i8* %32, i8** %21
  %33 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %34 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %33, i32 0, i32 1
  %35 = load i64* %capacity
  store i64 %35, i64* %34
  br label %next-block1

next-block1:                                      ; preds = %next-block, %then-block-1885-
  br label %clean_custom_

return:                                           ; preds = %clean_custom_
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN6option15Option$LT$T$GT$6expect20h6823001413114443692E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture dereferenceable(16), %str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
  call void @_ZN3fmt8argument20h3620037564105252742E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %17, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show21h17605025148970509128E, %str_slice* noalias dereferenceable(16) %18)
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
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h4aa868c10b1a5d74yiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust4)
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %29 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  call void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %29, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @"_ZN6option15Option$LT$T$GT$6expect8_run_fmt10_FILE_LINE20h9519b9138055b1fdStmE")
  unreachable

"_ZN6option15Option$LT$T$GT$6expect8_run_fmt20ha6e4b62493162d5d3GaE.exit": ; No predecessors!
  unreachable

join:                                             ; No predecessors!
  unreachable

join5:                                            ; preds = %case_body
  ret i64 %8
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3fmt8argument20h3620037564105252742E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16), %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)*, %str_slice* noalias dereferenceable(16)) unnamed_addr #1 {
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
define internal %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" @_ZN3fmt11secret_show21h17605025148970509128E(%str_slice* noalias nocapture dereferenceable(16), %"struct.core::fmt::Formatter<[]>[#3]"* noalias nocapture dereferenceable(96)) unnamed_addr #0 {
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
define internal void @_ZN3num15uint.CheckedMul11checked_mul20h2770ce63ea66da38FHaE(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16), i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
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
  br i1 %19, label %then-block-2113-, label %else-block

then-block-2113-:                                 ; preds = %entry-block
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

join:                                             ; preds = %else-block, %then-block-2113-
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) unnamed_addr #6

; Function Attrs: noinline uwtable
define internal i8* @_ZN3vec16alloc_or_realloc21h12920686598743009684E(i8*, i64, i64) unnamed_addr #8 {
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
  br i1 %8, label %then-block-2162-, label %else-block

then-block-2162-:                                 ; preds = %entry-block
  %9 = load i64* %size
  %10 = call i64 @_ZN3mem12min_align_of20h5494531050422970569E()
  store i64 %10, i64* %4
  %11 = load i64* %4
  %12 = call i8* @_ZN4heap8allocate20h429f468402bb5ce4MpaE(i64 %9, i64 %11)
  store i8* %12, i8** %3
  %13 = load i8** %3
  store i8* %13, i8** %sret_slot
  br label %join

else-block:                                       ; preds = %entry-block
  %14 = load i8** %ptr
  %15 = load i64* %size
  %16 = call i64 @_ZN3mem12min_align_of20h5494531050422970569E()
  store i64 %16, i64* %6
  %17 = load i64* %6
  %18 = load i64* %old_size
  %19 = call i8* @_ZN4heap10reallocate20h4e6a921695d596dfyJaE(i8* %14, i64 %15, i64 %17, i64 %18)
  store i8* %19, i8** %5
  %20 = load i8** %5
  store i8* %20, i8** %sret_slot
  br label %join

join:                                             ; preds = %else-block, %then-block-2162-
  %21 = load i8** %sret_slot
  ret i8* %21
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap10reallocate20h4e6a921695d596dfyJaE(i8*, i64, i64, i64) unnamed_addr #1 {
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
  %8 = call i8* @_ZN4heap3imp10reallocate20he1d6141fb091bd551JaE(i8* %4, i64 %5, i64 %6, i64 %7)
  ret i8* %8
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4heap3imp10reallocate20he1d6141fb091bd551JaE(i8*, i64, i64, i64) unnamed_addr #1 {
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
  %12 = call i64 @_ZN3num8uint.Int14trailing_zeros20hc2b6b8d64bce0633VqaE(i64 %11)
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
  %21 = call zeroext i1 @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$7is_null19h923026979763168403E"(i8** noalias dereferenceable(8) %ptr1)
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %7
  %23 = load i8* %7, !range !1
  %24 = trunc i8 %23 to i1
  br i1 %24, label %then-block-2271-, label %next-block

then-block-2271-:                                 ; preds = %entry-block
  call void @_ZN3oom20h70228b11624052eclRaE()
  unreachable

next-block:                                       ; preds = %entry-block
  %25 = load i8** %ptr1
  ret i8* %25
}

declare i8* @je_rallocx(i8*, i64, i32) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num17next_power_of_two20h4480302593668398902E(i64) unnamed_addr #1 {
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
  %5 = call i64 @_ZN3mem7size_of20h3449740897219961691E()
  store i64 %5, i64* %1
  %6 = load i64* %1
  %7 = mul i64 %6, 4
  store i64 %7, i64* %halfbits
  %8 = call i64 @_ZN3num8uint.One3one20h5b352950f3bee8bf0LaE()
  store i64 %8, i64* %2
  %9 = load i64* %2
  store i64 %9, i64* %arg
  %10 = call i64 @"_ZN3ops31uint.Sub$LT$uint$C$$x20uint$GT$3sub20h1553b8b50bd7428c6LaE"(i64* noalias dereferenceable(8) %n, i64* noalias dereferenceable(8) %arg)
  store i64 %10, i64* %tmp
  store i64 1, i64* %shift
  br label %while_cond

while_exit:                                       ; preds = %while_cond
  %11 = call i64 @_ZN3num8uint.One3one20h5b352950f3bee8bf0LaE()
  store i64 %11, i64* %4
  %12 = load i64* %4
  store i64 %12, i64* %arg2
  %13 = call i64 @"_ZN3ops31uint.Add$LT$uint$C$$x20uint$GT$3add20h22050aee65f8942a4MaE"(i64* noalias dereferenceable(8) %tmp, i64* noalias dereferenceable(8) %arg2)
  ret i64 %13

while_cond:                                       ; preds = %while_body, %entry-block
  %14 = load i64* %shift
  %15 = load i64* %halfbits
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %while_body, label %while_exit

while_body:                                       ; preds = %while_cond
  %17 = call i64 @"_ZN3ops31uint.Shr$LT$uint$C$$x20uint$GT$3shr20hb3564fc73dd99829qMaE"(i64* noalias dereferenceable(8) %tmp, i64* noalias dereferenceable(8) %shift)
  store i64 %17, i64* %3
  %18 = load i64* %3
  store i64 %18, i64* %arg1
  %19 = call i64 @"_ZN3ops33uint.BitOr$LT$uint$C$$x20uint$GT$5bitor20h22be455f4774ea96KMaE"(i64* noalias dereferenceable(8) %tmp, i64* noalias dereferenceable(8) %arg1)
  store i64 %19, i64* %tmp
  %20 = load i64* %shift
  %21 = shl i64 %20, 1
  store i64 %21, i64* %shift
  br label %while_cond
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem7size_of20h3449740897219961691E() unnamed_addr #1 {
entry-block:
  ret i64 8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3num8uint.One3one20h5b352950f3bee8bf0LaE() unnamed_addr #1 {
entry-block:
  ret i64 1
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3ops31uint.Sub$LT$uint$C$$x20uint$GT$3sub20h1553b8b50bd7428c6LaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
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
define internal i64 @"_ZN3ops31uint.Shr$LT$uint$C$$x20uint$GT$3shr20hb3564fc73dd99829qMaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
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
define internal i64 @"_ZN3ops33uint.BitOr$LT$uint$C$$x20uint$GT$5bitor20h22be455f4774ea96KMaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
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
define internal i64 @"_ZN3ops31uint.Add$LT$uint$C$$x20uint$GT$3add20h22050aee65f8942a4MaE"(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
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
define internal void @_ZN4iter5range21h17875380628076019689E(%"struct.core::iter::Range<[uint]>[#3]"* noalias nocapture sret dereferenceable(24), i64, i64) unnamed_addr #1 {
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
  %8 = call i64 @_ZN3num8uint.One3one20h5b352950f3bee8bf0LaE()
  store i64 %8, i64* %7
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4iter32Range$LT$A$GT$.Iterator$LT$A$GT$4next21h12976958844274135449E"(%"enum.core::option::Option<[uint]>[#3]"* noalias nocapture sret dereferenceable(16), %"struct.core::iter::Range<[uint]>[#3]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::iter::Range<[uint]>[#3]"*
  %2 = alloca i8
  %result = alloca i64
  store %"struct.core::iter::Range<[uint]>[#3]"* %1, %"struct.core::iter::Range<[uint]>[#3]"** %self
  %3 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %4 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %6 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %5, i32 0, i32 1
  %7 = call zeroext i1 @_ZN3cmp5impls15uint.PartialOrd2lt20h546c8a523ab5aaf1uOaE(i64* noalias dereferenceable(8) %4, i64* noalias dereferenceable(8) %6)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %2
  %9 = load i8* %2, !range !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %then-block-2476-, label %else-block

then-block-2476-:                                 ; preds = %entry-block
  %11 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %12 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %11, i32 0, i32 0
  %13 = call i64 @_ZN5clone10uint.Clone5clone20h749d9fe9858f8814OOaE(i64* noalias dereferenceable(8) %12)
  store i64 %13, i64* %result
  %14 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %15 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %14, i32 0, i32 0
  %16 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %17 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %16, i32 0, i32 0
  %18 = load %"struct.core::iter::Range<[uint]>[#3]"** %self
  %19 = getelementptr inbounds %"struct.core::iter::Range<[uint]>[#3]"* %18, i32 0, i32 2
  %20 = call i64 @"_ZN3ops31uint.Add$LT$uint$C$$x20uint$GT$3add20h22050aee65f8942a4MaE"(i64* noalias dereferenceable(8) %17, i64* noalias dereferenceable(8) %19)
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

join:                                             ; preds = %else-block, %then-block-2476-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3cmp5impls15uint.PartialOrd2lt20h546c8a523ab5aaf1uOaE(i64* noalias nocapture dereferenceable(8), i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
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
define internal i64 @_ZN5clone10uint.Clone5clone20h749d9fe9858f8814OOaE(i64* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i64*
  store i64* %0, i64** %self
  %1 = load i64** %self
  %2 = load i64* %1
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN3vec23Vec$LT$T$GT$.Collection3len21h17989965468858724361E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[u8]>[#6]"* %1, i32 0, i32 0
  %3 = load i64* %2
  ret i64 %3
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3ptr5write20h2034787946948403244E(i8*, i8) unnamed_addr #1 {
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
define internal dereferenceable(1) i8* @"_ZN5slice65_$BP$$x27a$x20mut$x20$x5bT$x5d.MutableVector$LT$$x27a$C$$x20T$GT$14unsafe_mut_ref21h18208107653973580354E"({ i8*, i64 }* noalias nocapture dereferenceable(16), i64) unnamed_addr #1 {
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
  call void @_ZN3raw4Repr4repr20h3662592714962984183E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %2, { i8*, i64 }* noalias dereferenceable(16) %__adjust)
  %9 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 0
  %10 = load i8** %9
  %11 = load i64* %index
  %12 = call i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset20h8811982332391947664E"(i8* %10, i64 %11)
  ret i8* %12
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset20h8811982332391947664E"(i8*, i64) unnamed_addr #1 {
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
define internal void @_ZN3raw4Repr4repr20h3662592714962984183E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h5744780967102897843E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h5744780967102897843E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h15687247842006767120E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
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
define internal i8 @_ZN5clone8u8.Clone5clone20h9f9203fbcafeb997xQaE(i8* noalias nocapture dereferenceable(1)) unnamed_addr #1 {
entry-block:
  %self = alloca i8*
  store i8* %0, i8** %self
  %1 = load i8** %self
  %2 = load i8* %1
  ret i8 %2
}

; Function Attrs: inlinehint uwtable
define internal dereferenceable(1) i8* @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$10unsafe_ref20h4096668810665441970E"({ i8*, i64 }* noalias nocapture dereferenceable(16), i64) unnamed_addr #1 {
entry-block:
  %index = alloca i64
  %2 = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  store i64 %1, i64* %index
  call void @_ZN3raw4Repr4repr21h10427554883440917942E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %2, { i8*, i64 }* noalias dereferenceable(16) %0)
  %3 = getelementptr inbounds %"struct.core::raw::Slice<[u8]>[#3]"* %2, i32 0, i32 0
  %4 = load i8** %3
  %5 = load i64* %index
  %6 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h16783863045793753084E"(i8* %4, i64 %5)
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3raw4Repr4repr21h10427554883440917942E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %self = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %self
  %2 = load { i8*, i64 }** %self
  call void @_ZN3mem14transmute_copy20h6124541984629933567E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem14transmute_copy20h6124541984629933567E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %src.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"*
  %tmp.i = alloca %"struct.core::raw::Slice<[u8]>[#3]"
  %src = alloca { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %src
  %2 = load { i8*, i64 }** %src
  %3 = bitcast { i8*, i64 }* %2 to %"struct.core::raw::Slice<[u8]>[#3]"*
  store %"struct.core::raw::Slice<[u8]>[#3]"* %3, %"struct.core::raw::Slice<[u8]>[#3]"** %src.i
  call void @_ZN3mem13uninitialized21h15687247842006767120E(%"struct.core::raw::Slice<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %tmp.i)
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
define internal void @"_ZN3vec12Vec$LT$T$GT$7set_len21h11691355132389190916E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), i64) unnamed_addr #1 {
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
define internal void @_ZN5c_str7CString8as_bytes20h56b1e52d588c176elRaE({ i8*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.rustrt::c_str::CString<[]>[#9]"* noalias dereferenceable(16)) unnamed_addr #1 {
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
  %10 = call i64 @_ZN5c_str18CString.Collection3len20h129e8259a376724eJRaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias dereferenceable(16) %9)
  store i64 %10, i64* %2
  %11 = load i64* %2
  %12 = add i64 %11, 1
  store i64 %12, i64* %8
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN5c_str18CString.Collection3len20h129e8259a376724eJRaE(%"struct.rustrt::c_str::CString<[]>[#9]"* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
  br label %clean_ast_2707_

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
  %11 = call i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h11089890266637266466E"(i8* %10, i64 1)
  store i8* %11, i8** %cur
  br label %while_cond

clean_custom_:                                    ; preds = %clean_ast_2707_
  br label %return

clean_ast_2707_:                                  ; preds = %while_exit
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN3ptr31_$RP$const$x20T.RawPtr$LT$T$GT$6offset21h11089890266637266466E"(i8*, i64) unnamed_addr #1 {
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

define internal void @_ZN22rustrt..c_str..CString14glue_drop.207417h63541ff0edd32d86E(%"struct.rustrt::c_str::CString<[]>[#9]"*) unnamed_addr #3 {
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
define void @new_hy_int(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), i64) unnamed_addr #0 {
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
define void @new_hy_float(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), double) unnamed_addr #0 {
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
define void @new_hy_array(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %1 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  %2 = bitcast %"enum.HyObjType<[]>"* %1 to { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }*
  %3 = getelementptr inbounds { i8, %"struct.collections::vec::Vec<[HyObj]>[#6]" }* %2, i32 0, i32 1
  call void @"_ZN3vec12Vec$LT$T$GT$3new21h14465897519687919326E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture sret dereferenceable(24) %3)
  %4 = getelementptr inbounds %"enum.HyObjType<[]>"* %1, i32 0, i32 0
  store i8 4, i8* %4
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$3new21h14465897519687919326E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #1 {
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
define void @new_hy_bool(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), i1 zeroext) unnamed_addr #0 {
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
  store i8* getelementptr inbounds ([51 x i8]* @str2199, i32 0, i32 0), i8** %16
  %17 = getelementptr inbounds %str_slice* %8, i32 0, i32 1
  store i64 51, i64* %17
  invoke void @_ZN6unwind12begin_unwind21h14917061321027513071E(%str_slice* noalias nocapture dereferenceable(16) %8, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_insert10_FILE_LINE20h7f2554407f0b4c30OfaE)
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
  invoke void @_ZN6string26String...std..clone..Clone5clone20h1d8e1b3814489b23U7aE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %5, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %21)
          to label %normal-return unwind label %unwind_custom_

case_body3:                                       ; preds = %match_else4
  %22 = getelementptr inbounds %str_slice* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8]* @str2198, i32 0, i32 0), i8** %22
  %23 = getelementptr inbounds %str_slice* %7, i32 0, i32 1
  store i64 26, i64* %23
  invoke void @_ZN6unwind12begin_unwind21h14917061321027513071E(%str_slice* noalias nocapture dereferenceable(16) %7, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_insert10_FILE_LINE20h7f2554407f0b4c30ufaE)
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
  %29 = invoke zeroext i1 @_ZN10MutableMap6insert21h10859917969080221371E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %20, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %5, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %3)
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
  br label %resume

normal-return6:                                   ; preds = %normal-return
  %32 = zext i1 %29 to i8
  store i8 %32, i8* %4
  %33 = load i8* %4, !range !1
  %34 = trunc i8 %33 to i1
  invoke void @new_hy_bool(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %0, i1 zeroext %34)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %3)
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN10MutableMap6insert21h10859917969080221371E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #1 {
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
  invoke void @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$4swap18h38296409155954854E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %3, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %5, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg1)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %12 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_none20h7275839390111432562E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias dereferenceable(40) %3)
          to label %normal-return2 unwind label %unwind_ast_2756_

unwind_custom_:                                   ; preds = %entry-block
  %13 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %13, { i8*, i32 }* %4
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %14 = load { i8*, i32 }* %4
  resume { i8*, i32 } %14

clean_custom_:                                    ; preds = %clean_ast_2756_, %unwind_custom_
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %1)
  br label %resume

normal-return2:                                   ; preds = %normal-return
  %15 = zext i1 %12 to i8
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %3)
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %1)
  %16 = trunc i8 %15 to i1
  ret i1 %16

unwind_ast_2756_:                                 ; preds = %normal-return
  %17 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %17, { i8*, i32 }* %4
  br label %clean_ast_2756_

clean_ast_2756_:                                  ; preds = %unwind_ast_2756_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %3)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_none20h7275839390111432562E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture dereferenceable(40)) unnamed_addr #1 {
entry-block:
  %self = alloca %"enum.core::option::Option<[HyObj]>[#3]"*
  %1 = alloca i8
  store %"enum.core::option::Option<[HyObj]>[#3]"* %0, %"enum.core::option::Option<[HyObj]>[#3]"** %self
  %2 = load %"enum.core::option::Option<[HyObj]>[#3]"** %self
  %3 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14047917468269618503E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias dereferenceable(40) %2)
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
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14047917468269618503E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture dereferenceable(40)) unnamed_addr #1 {
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
define internal void @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$4swap18h38296409155954854E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40), %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
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
  invoke void @_ZN7treemap6insert20h6368802450092718973E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %ret, i8** noalias nocapture dereferenceable(8) %7, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg1)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %14 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_none20h7275839390111432562E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias dereferenceable(40) %ret)
          to label %normal-return2 unwind label %unwind_ast_2806_

unwind_custom_:                                   ; preds = %entry-block
  %15 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %15, { i8*, i32 }* %4
  br label %clean_custom_

resume:                                           ; preds = %clean_custom_
  %16 = load { i8*, i32 }* %4
  resume { i8*, i32 } %16

clean_custom_:                                    ; preds = %clean_ast_2806_, %unwind_custom_
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %3)
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %2)
  br label %resume

normal-return2:                                   ; preds = %normal-return
  %17 = zext i1 %14 to i8
  store i8 %17, i8* %5
  %18 = load i8* %5, !range !1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %then-block-2822-, label %next-block

unwind_ast_2806_:                                 ; preds = %normal-return
  %20 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %20, { i8*, i32 }* %4
  br label %clean_ast_2806_

clean_ast_2806_:                                  ; preds = %unwind_ast_2806_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  br label %clean_custom_

then-block-2822-:                                 ; preds = %normal-return2
  %21 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %22 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %21, i32 0, i32 1
  %23 = load i64* %22
  %24 = add i64 %23, 1
  store i64 %24, i64* %22
  br label %next-block

next-block:                                       ; preds = %normal-return2, %then-block-2822-
  %25 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  %26 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %25, i64 40, i32 8, i1 false)
  %27 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 40, i32 8, i1 false)
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %3)
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %2)
  ret void
}

; Function Attrs: uwtable
define internal void @_ZN7treemap6insert20h6368802450092718973E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40), i8** noalias nocapture dereferenceable(8), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
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
  %13 = invoke i8 @_ZN6string22String...std..cmp..Ord3cmp20hbe281fefce71f4f7KVaE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %2, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %12)
          to label %normal-return unwind label %unwind_custom_

case_body1:                                       ; preds = %match_else
  %14 = load i8*** %node
  %15 = bitcast i8** %6 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %16 = invoke i8* @_ZN4heap15exchange_malloc20h2e78701dd413c7278oaE(i64 80, i64 8)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %3)
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %2)
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
  invoke void @_ZN7treemap6insert20h6368802450092718973E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %inserted, i8** noalias nocapture dereferenceable(8) %24, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg8)
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
  invoke void @_ZN7treemap6insert20h6368802450092718973E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %inserted13, i8** noalias nocapture dereferenceable(8) %33, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg14, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg15)
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
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %42)
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
  invoke void @_ZN3mem7replace21h12012081378846843383E(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %49, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %52, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg19)
          to label %normal-return20 unwind label %unwind_custom_

match_else5:                                      ; preds = %normal-return
  br label %case_body4

match_case6:                                      ; preds = %normal-return
  br label %case_body2

match_case7:                                      ; preds = %normal-return
  br label %case_body3

normal-return9:                                   ; preds = %case_body2
  %56 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap4skew21h17360990493635321111E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %56)
          to label %normal-return10 unwind label %unwind_ast_2874_

normal-return10:                                  ; preds = %normal-return9
  %57 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap5split21h15601747926846530350E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %57)
          to label %normal-return12 unwind label %unwind_ast_2874_

unwind_ast_2874_:                                 ; preds = %normal-return10, %normal-return9
  %58 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %58, { i8*, i32 }* %5
  br label %clean_ast_2874_

clean_custom_11:                                  ; preds = %clean_ast_2864_
  br label %clean_custom_

clean_ast_2864_:                                  ; preds = %clean_ast_2897_, %clean_ast_2874_
  br label %clean_custom_11

clean_ast_2874_:                                  ; preds = %unwind_ast_2874_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %inserted)
  br label %clean_ast_2864_

normal-return12:                                  ; preds = %normal-return10
  %59 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %inserted to i8*
  %60 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %59, i64 40, i32 8, i1 false)
  %61 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %inserted to i8*
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 40, i32 8, i1 false)
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %inserted)
  br label %join

normal-return16:                                  ; preds = %case_body3
  %62 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap4skew21h17360990493635321111E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %62)
          to label %normal-return17 unwind label %unwind_ast_2897_

normal-return17:                                  ; preds = %normal-return16
  %63 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap5split21h15601747926846530350E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %63)
          to label %normal-return18 unwind label %unwind_ast_2897_

unwind_ast_2897_:                                 ; preds = %normal-return17, %normal-return16
  %64 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %64, { i8*, i32 }* %5
  br label %clean_ast_2897_

clean_ast_2897_:                                  ; preds = %unwind_ast_2897_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %inserted13)
  br label %clean_ast_2864_

normal-return18:                                  ; preds = %normal-return17
  %65 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %inserted13 to i8*
  %66 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %65, i64 40, i32 8, i1 false)
  %67 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %inserted13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %67, i8 0, i64 40, i32 8, i1 false)
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %inserted13)
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
  invoke void @"_ZN7treemap25TreeNode$LT$K$C$$x20V$GT$3new20h1353170058845981476E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias nocapture sret dereferenceable(80) %69, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg22, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg23)
          to label %normal-return24 unwind label %unwind_custom_25

normal-return24:                                  ; preds = %normal-return21
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %69, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %15
  %76 = load i8** %6
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %14)
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
  call void @_ZN4heap13exchange_free20hb4928d8e0ee60f334raE(i8* %79, i64 80, i64 8)
  br label %clean_custom_

join27:                                           ; preds = %normal-return24, %join
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %3)
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN6string22String...std..cmp..Ord3cmp20hbe281fefce71f4f7KVaE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
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
  %10 = call i8 @"_ZN3vec16Vec$LT$T$GT$.Ord3cmp21h17208042088466452362E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %8, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %9)
  store i8 %10, i8* %__test
  store i8 0, i8* %3
  %11 = load i8* %3
  store i8 %11, i8* %arg
  %12 = call zeroext i1 @_ZN3cmp30Ordering...std..cmp..PartialEq2eq20h7a582e946d87f11d2YaE(i8* noalias dereferenceable(1) %__test, i8* noalias dereferenceable(1) %arg)
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %2
  %14 = load i8* %2, !range !1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %then-block-2990-, label %else-block

then-block-2990-:                                 ; preds = %case_body1
  store i8 0, i8* %sret_slot
  br label %join

else-block:                                       ; preds = %case_body1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %sret_slot, i8* %__test, i64 1, i32 1, i1 false)
  br label %join

join:                                             ; preds = %else-block, %then-block-2990-
  br label %join2

join2:                                            ; preds = %join
  br label %join3

join3:                                            ; preds = %join2
  %16 = load i8* %sret_slot
  ret i8 %16
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN3vec16Vec$LT$T$GT$.Ord3cmp21h17208042088466452362E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %other = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca { i8*, i64 }
  %3 = alloca { i8*, i64 }
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %0, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %other
  %4 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice21h12486688534718192433E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %4)
  %5 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %other
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice21h12486688534718192433E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %3, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %5)
  %6 = call i8 @"_ZN5slice27_$BP$$x27a$x20$x5bT$x5d.Ord3cmp21h11616708172124042202E"({ i8*, i64 }* noalias dereferenceable(16) %2, { i8*, i64 }* noalias dereferenceable(16) %3)
  ret i8 %6
}

; Function Attrs: uwtable
define internal i8 @"_ZN5slice27_$BP$$x27a$x20$x5bT$x5d.Ord3cmp21h11616708172124042202E"({ i8*, i64 }* noalias nocapture dereferenceable(16), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
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
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h11959423455456282126E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %2, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  %11 = load { i8*, i64 }** %other
  %12 = getelementptr inbounds { i8*, i64 }* %11, i32 0, i32 0
  %13 = load i8** %12
  %14 = getelementptr inbounds { i8*, i64 }* %11, i32 0, i32 1
  %15 = load i64* %14
  %16 = getelementptr inbounds { i8*, i64 }* %__adjust1, i32 0, i32 0
  store i8* %13, i8** %16
  %17 = getelementptr inbounds { i8*, i64 }* %__adjust1, i32 0, i32 1
  store i64 %15, i64* %17
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter21h11959423455456282126E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture sret dereferenceable(16) %3, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust1)
  %18 = call i8 @_ZN4iter5order3cmp20h9656113388837906041E(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16) %2, %"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16) %3)
  ret i8 %18
}

; Function Attrs: uwtable
define internal i8 @_ZN4iter5order3cmp20h9656113388837906041E(%"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16), %"struct.core::slice::Items<[u8]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
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
  %7 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h16260367641487646694E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias dereferenceable(16) %0)
  store i8* %7, i8** %6
  %8 = getelementptr inbounds { i8*, i8* }* %2, i32 0, i32 1
  %9 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h16260367641487646694E"(%"struct.core::slice::Items<[u8]>[#3]"* noalias dereferenceable(16) %1)
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
  br label %clean_ast_3062_

case_body1:                                       ; preds = %match_else5
  store i8 -1, i8* %ret_slot11
  store i8* %ret_slot11, i8** %llretslotptr
  br label %clean_ast_3062_

case_body2:                                       ; preds = %match_else10, %match_case9
  store i8 1, i8* %ret_slot12
  store i8* %ret_slot12, i8** %llretslotptr
  br label %clean_ast_3062_

case_body3:                                       ; preds = %match_else8
  %14 = load i8*** %__llmatch
  %15 = load i8** %14
  store i8* %15, i8** %x
  %16 = load i8*** %__llmatch4
  %17 = load i8** %16
  store i8* %17, i8** %y
  %18 = call i8 @"_ZN3cmp5impls19_$BP$$x27a$x20T.Ord3cmp20h9627521222452901963E"(i8** noalias dereferenceable(8) %x, i8** noalias dereferenceable(8) %y)
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

clean_custom_:                                    ; preds = %clean_ast_3062_
  br label %return

clean_ast_3062_:                                  ; preds = %clean_custom_19, %case_body2, %case_body1, %case_body
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

clean_custom_19:                                  ; preds = %clean_ast_3089_
  br label %clean_ast_3062_

clean_ast_3089_:                                  ; preds = %clean_custom_20
  br label %clean_custom_19

clean_custom_20:                                  ; preds = %case_body14
  br label %clean_ast_3089_

join:                                             ; preds = %case_body13
  br label %join21

join21:                                           ; preds = %join
  br label %loop_body
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN3cmp5impls19_$BP$$x27a$x20T.Ord3cmp20h9627521222452901963E"(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %other = alloca i8**
  store i8** %0, i8*** %self
  store i8** %1, i8*** %other
  %2 = load i8*** %self
  %3 = load i8** %2
  %4 = load i8*** %other
  %5 = load i8** %4
  %6 = call i8 @_ZN3cmp5impls6u8.Ord3cmp20h2aeaa816fdaec262wYaE(i8* noalias dereferenceable(1) %3, i8* noalias dereferenceable(1) %5)
  ret i8 %6
}

; Function Attrs: inlinehint uwtable
define internal i8 @_ZN3cmp5impls6u8.Ord3cmp20h2aeaa816fdaec262wYaE(i8* noalias nocapture dereferenceable(1), i8* noalias nocapture dereferenceable(1)) unnamed_addr #1 {
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
  br i1 %6, label %then-block-3140-, label %else-block

then-block-3140-:                                 ; preds = %entry-block
  store i8 -1, i8* %sret_slot
  br label %join2

else-block:                                       ; preds = %entry-block
  %7 = load i8** %self
  %8 = load i8** %other
  %9 = load i8* %7
  %10 = load i8* %8
  %11 = icmp ugt i8 %9, %10
  br i1 %11, label %then-block-3148-, label %else-block1

then-block-3148-:                                 ; preds = %else-block
  store i8 1, i8* %sret_slot
  br label %join

else-block1:                                      ; preds = %else-block
  store i8 0, i8* %sret_slot
  br label %join

join:                                             ; preds = %else-block1, %then-block-3148-
  br label %join2

join2:                                            ; preds = %join, %then-block-3140-
  %12 = load i8* %sret_slot
  ret i8 %12
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3cmp30Ordering...std..cmp..PartialEq2eq20h7a582e946d87f11d2YaE(i8* noalias nocapture dereferenceable(1), i8* noalias nocapture dereferenceable(1)) unnamed_addr #1 {
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

define internal void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.HyObj<[]>"* %0, i32 0, i32 0
  call void @_ZN9HyObjType14glue_drop.211117h027e301759f0b844E(%"enum.HyObjType<[]>"* %1)
  ret void
}

define internal void @_ZN9HyObjType14glue_drop.211117h027e301759f0b844E(%"enum.HyObjType<[]>"*) unnamed_addr #3 {
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
  call void @"_ZN72collections..treemap..TreeMap$LT$collections..string..String$C$HyObj$GT$14glue_drop.211417ha078af4da1af7a3dE"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %4)
  br label %enum-iter-next

enum-iter-variant-1:                              ; preds = %entry-block
  %5 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, %"struct.collections::string::String<[]>[#6]" }*
  %6 = getelementptr inbounds { i8, %"struct.collections::string::String<[]>[#6]" }* %5, i32 0, i32 1
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %6)
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
  call void @"_ZN34collections..vec..Vec$LT$HyObj$GT$14glue_drop.212617h8b8bd2666d36940aE"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* %12)
  br label %enum-iter-next

enum-iter-variant-5:                              ; preds = %entry-block
  %13 = bitcast %"enum.HyObjType<[]>"* %0 to { i8, i8 }*
  %14 = getelementptr inbounds { i8, i8 }* %13, i32 0, i32 1
  br label %enum-iter-next
}

define internal void @"_ZN72collections..treemap..TreeMap$LT$collections..string..String$C$HyObj$GT$14glue_drop.211417ha078af4da1af7a3dE"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 0
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %1)
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 1
  ret void
}

define internal void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8**) unnamed_addr #3 {
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
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %3)
  br label %enum-iter-next
}

define internal void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**) unnamed_addr #3 {
entry-block:
  %1 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %0
  %2 = icmp ne %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %1, null
  br i1 %2, label %cond, label %next

next:                                             ; preds = %cond, %entry-block
  ret void

cond:                                             ; preds = %entry-block
  call void @"_ZN73collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$14glue_drop.212317haede0cb5de71af39E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %1)
  %3 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %1 to i8*
  call void @_ZN4heap13exchange_free20hb4928d8e0ee60f334raE(i8* %3, i64 80, i64 8)
  br label %next
}

define internal void @"_ZN73collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$14glue_drop.212317haede0cb5de71af39E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 0
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %1)
  %2 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 1
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
  %3 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %3)
  %4 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 3
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %4)
  %5 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, i32 0, i32 4
  ret void
}

define internal void @"_ZN34collections..vec..Vec$LT$HyObj$GT$14glue_drop.212617h8b8bd2666d36940aE"(%"struct.collections::vec::Vec<[HyObj]>[#6]"*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, i32 0, i32 0
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, i32 0, i32 1
  %3 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, i32 0, i32 2
  call void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop21h16430548539562180320E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture dereferenceable(24) %0)
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec17Vec$LT$T$GT$.Drop4drop21h16430548539562180320E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
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
  br i1 %7, label %then-block-1384-, label %next-block

then-block-1384-:                                 ; preds = %entry-block
  %8 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  call void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice21h17984140304326469165E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24) %8)
  %9 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %2, i32 0, i32 0
  %10 = load %"struct.HyObj<[]>"** %9
  %11 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %2, i32 0, i32 1
  %12 = load i64* %11
  %13 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %__adjust, i32 0, i32 0
  store %"struct.HyObj<[]>"* %10, %"struct.HyObj<[]>"** %13
  %14 = getelementptr inbounds { %"struct.HyObj<[]>"*, i64 }* %__adjust, i32 0, i32 1
  store i64 %12, i64* %14
  call void @"_ZN5slice60_$BP$$x27a$x20$x5bT$x5d.ImmutableVector$LT$$x27a$C$$x20T$GT$4iter20h3291893133856722460E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(16) %1, { %"struct.HyObj<[]>"*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
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
  call void @_ZN3vec7dealloc20h5724017163408025231E(%"struct.HyObj<[]>"* %18, i64 %21)
  br label %next-block

for_loopback:                                     ; preds = %for_body, %then-block-1384-
  %22 = call i8* @"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6265921154936505050E"(%"struct.core::slice::Items<[HyObj]>[#3]"* noalias dereferenceable(16) %15)
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
  call void @_ZN3mem13uninitialized20h8525166220041513566E(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %tmp.i)
  %29 = load %"struct.HyObj<[]>"** %src.i
  %30 = bitcast %"struct.HyObj<[]>"* %tmp.i to i8*
  %31 = bitcast %"struct.HyObj<[]>"* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  %32 = bitcast %"struct.HyObj<[]>"* %tmp.i to i8*
  %33 = bitcast %"struct.HyObj<[]>"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %32, i64 32, i32 8, i1 false)
  %34 = bitcast %"struct.HyObj<[]>"* %tmp.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 32, i32 8, i1 false)
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %tmp.i)
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %3)
  br label %for_loopback

next-block:                                       ; preds = %entry-block, %for_exit
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$12as_mut_slice21h17984140304326469165E"({ %"struct.HyObj<[]>"*, i64 }* noalias nocapture sret dereferenceable(16), %"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  %2 = alloca %"struct.HyObj<[]>"*
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %1, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %3 = bitcast { %"struct.HyObj<[]>"*, i64 }* %0 to %"struct.core::raw::Slice<[HyObj]>[#3]"*
  %4 = getelementptr inbounds %"struct.core::raw::Slice<[HyObj]>[#3]"* %3, i32 0, i32 0
  %5 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %6 = call %"struct.HyObj<[]>"* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr21h18394802680768674091E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias dereferenceable(24) %5)
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
define internal %"struct.HyObj<[]>"* @"_ZN3vec12Vec$LT$T$GT$10as_mut_ptr21h18394802680768674091E"(%"struct.collections::vec::Vec<[HyObj]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[HyObj]>[#6]"*
  store %"struct.collections::vec::Vec<[HyObj]>[#6]"* %0, %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %1 = load %"struct.collections::vec::Vec<[HyObj]>[#6]"** %self
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[HyObj]>[#6]"* %1, i32 0, i32 2
  %3 = load %"struct.HyObj<[]>"** %2
  ret %"struct.HyObj<[]>"* %3
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized20h8525166220041513566E(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32)) unnamed_addr #1 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3vec7dealloc20h5724017163408025231E(%"struct.HyObj<[]>"*, i64) unnamed_addr #1 {
entry-block:
  %ptr = alloca %"struct.HyObj<[]>"*
  %len = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %ptr
  store i64 %1, i64* %len
  %5 = call i64 @_ZN3mem7size_of20h9895913534579992576E()
  store i64 %5, i64* %2
  %6 = load i64* %2
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %then-block-1462-, label %next-block

then-block-1462-:                                 ; preds = %entry-block
  %8 = load %"struct.HyObj<[]>"** %ptr
  %9 = bitcast %"struct.HyObj<[]>"* %8 to i8*
  %10 = call i64 @_ZN3mem7size_of20h9895913534579992576E()
  store i64 %10, i64* %3
  %11 = load i64* %3
  %12 = load i64* %len
  %13 = mul i64 %12, %11
  %14 = call i64 @_ZN3mem12min_align_of20h2594159293109684044E()
  store i64 %14, i64* %4
  %15 = load i64* %4
  call void @_ZN4heap10deallocate20h9902fb30a5c14b1arsaE(i8* %9, i64 %13, i64 %15)
  br label %next-block

next-block:                                       ; preds = %entry-block, %then-block-1462-
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN3mem12min_align_of20h2594159293109684044E() unnamed_addr #1 {
entry-block:
  ret i64 8
}

; Function Attrs: uwtable
define internal void @_ZN7treemap4skew21h17360990493635321111E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8)) unnamed_addr #0 {
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
  %9 = call i8* @"_ZN6option15Option$LT$T$GT$6as_ref21h12763389968310618928E"(i8** noalias dereferenceable(8) %8)
  store i8* %9, i8** %2
  %10 = load i8** %2
  %11 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %11
  %12 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 0
  store i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)* @_ZN7treemap4skew12closure.2143E, i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %12
  %13 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure to i8*
  %14 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 1
  store i8* %13, i8** %14
  %15 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or19h384287154693449884E"(i8* %10, i1 zeroext false, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %3)
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %1
  %17 = load i8* %1, !range !1
  %18 = trunc i8 %17 to i1
  br i1 %18, label %then-block-3257-, label %next-block

then-block-3257-:                                 ; preds = %entry-block
  %19 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %20 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %19
  %21 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %20, i32 0, i32 2
  %22 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h7945962642208502062E"(i8** noalias dereferenceable(8) %21)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %22, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %24 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %23
  %25 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %24, i32 0, i32 2
  %26 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  %27 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %26, i32 0, i32 3
  invoke void @_ZN3mem4swap21h11692584037129624136E(i8** noalias nocapture dereferenceable(8) %25, i8** noalias nocapture dereferenceable(8) %27)
          to label %normal-return unwind label %unwind_ast_3257_

normal-return:                                    ; preds = %then-block-3257-
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  invoke void @_ZN3mem4swap20h2588900435491074167E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %28, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %save)
          to label %normal-return1 unwind label %unwind_ast_3257_

unwind_ast_3257_:                                 ; preds = %normal-return, %then-block-3257-
  %29 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %29, { i8*, i32 }* %4
  br label %clean_ast_3257_

resume:                                           ; preds = %clean_custom_
  %30 = load { i8*, i32 }* %4
  resume { i8*, i32 } %30

clean_custom_:                                    ; preds = %clean_ast_3257_
  br label %resume

clean_ast_3257_:                                  ; preds = %unwind_ast_3257_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save)
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
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %33)
  store i8* %37, i8** %33
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save)
  br label %next-block

next-block:                                       ; preds = %entry-block, %normal-return1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or19h384287154693449884E"(i8*, i1 zeroext, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
define internal i8* @"_ZN6option15Option$LT$T$GT$6as_ref21h12763389968310618928E"(i8** noalias dereferenceable(8)) unnamed_addr #1 {
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
define internal zeroext i1 @_ZN7treemap4skew12closure.2143E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8)) unnamed_addr #1 {
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
define internal noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h7945962642208502062E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
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
  %7 = call i8* @"_ZN6option15Option$LT$T$GT$4take21h13451434188571689568E"(i8** noalias dereferenceable(8) %6)
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
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11)
  %14 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 8, i32 8, i1 false)
  br label %join7

case_body1:                                       ; preds = %match_else
  %15 = getelementptr inbounds { %str_slice* }* %2, i32 0, i32 0
  %16 = getelementptr inbounds %str_slice* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([48 x i8]* @str2182, i32 0, i32 0), i8** %16
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
  invoke void @_ZN3fmt8argument20h4424212635317547277E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %24, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h1201838728840683068E, %str_slice* noalias dereferenceable(16) %25)
          to label %normal-return unwind label %unwind_ast_3349_

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
  invoke void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h4aa868c10b1a5d74yiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust4)
          to label %normal-return5 unwind label %unwind_ast_3349_

unwind_ast_3349_:                                 ; preds = %normal-return5, %normal-return, %case_body3
  %36 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %36, { i8*, i32 }* %5
  br label %clean_ast_3349_

resume:                                           ; preds = %clean_custom_
  %37 = load { i8*, i32 }* %5
  resume { i8*, i32 } %37

clean_custom_:                                    ; preds = %clean_ast_3349_
  br label %resume

clean_ast_3349_:                                  ; preds = %unwind_ast_3349_
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %match)
  br label %clean_custom_

normal-return5:                                   ; preds = %normal-return
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %38 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  invoke void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %38, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt10_FILE_LINE20h9519b9138055b1fdlDmE")
          to label %.noexc unwind label %unwind_ast_3349_

.noexc:                                           ; preds = %normal-return5
  unreachable

"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt20hf402de84994e1a51C5aE.exit": ; No predecessors!
  br label %normal-return6

normal-return6:                                   ; preds = %"_ZN6option15Option$LT$T$GT$11take_unwrap8_run_fmt20hf402de84994e1a51C5aE.exit"
  unreachable

join:                                             ; No predecessors!
  unreachable

join7:                                            ; preds = %case_body
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %match)
  ret %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %12
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take21h13451434188571689568E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace20h8866401063777434373E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace20h8866401063777434373E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  %2 = alloca { i8*, i32 }
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %3 = load i8*** %dest
  invoke void @_ZN3mem4swap21h11692584037129624136E(i8** noalias nocapture dereferenceable(8) %3, i8** noalias nocapture dereferenceable(8) %src)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %4 = bitcast i8** %src to i8*
  %5 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 8, i32 8, i1 false)
  %6 = bitcast i8** %src to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %src)
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
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %src)
  br label %resume
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap21h11692584037129624136E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  %2 = alloca { i8*, i32 }
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %3 = call i8* @_ZN3mem13uninitialized20h5377043236907532420E()
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
  invoke void @_ZN3mem6forget20h3052725742033898010E(i8* %14)
          to label %normal-return unwind label %unwind_ast_3487_

normal-return:                                    ; preds = %entry-block
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %t)
  ret void

unwind_ast_3487_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_3487_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_3487_
  br label %resume

clean_ast_3487_:                                  ; preds = %unwind_ast_3487_
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized20h5377043236907532420E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h3052725742033898010E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  %2 = bitcast i8** %thing to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %thing)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h2588900435491074167E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8), %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %y = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %t = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %2 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %x
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %1, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %y
  %3 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @_ZN3mem13uninitialized20h4503764936710679341E()
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
  invoke void @_ZN3mem6forget20h9858855802354941976E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(80) %14)
          to label %normal-return unwind label %unwind_ast_3487_

normal-return:                                    ; preds = %entry-block
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %t)
  ret void

unwind_ast_3487_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_3487_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_3487_
  br label %resume

clean_ast_3487_:                                  ; preds = %unwind_ast_3487_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @_ZN3mem13uninitialized20h4503764936710679341E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %0 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %sret_slot
  ret %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h9858855802354941976E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(80)) unnamed_addr #1 {
entry-block:
  %thing = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %0, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %thing
  %1 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %thing
  %2 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %thing to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %thing)
  ret void
}

define internal void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"*) unnamed_addr #3 {
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %4)
  br label %enum-iter-next
}

; Function Attrs: uwtable
define internal void @_ZN7treemap5split21h15601747926846530350E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8)) unnamed_addr #0 {
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
  %9 = call i8* @"_ZN6option15Option$LT$T$GT$6as_ref21h12763389968310618928E"(i8** noalias dereferenceable(8) %8)
  store i8* %9, i8** %2
  %10 = load i8** %2
  %11 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %11
  %12 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 0
  store i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)* @_ZN7treemap5split12closure.2186E, i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %12
  %13 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure to i8*
  %14 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 1
  store i8* %13, i8** %14
  %15 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or21h17278874621446241580E"(i8* %10, i1 zeroext false, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %3)
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %1
  %17 = load i8* %1, !range !1
  %18 = trunc i8 %17 to i1
  br i1 %18, label %then-block-3645-, label %next-block

then-block-3645-:                                 ; preds = %entry-block
  %19 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %20 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %19
  %21 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %20, i32 0, i32 3
  %22 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h7945962642208502062E"(i8** noalias dereferenceable(8) %21)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %22, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %24 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %23
  %25 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %24, i32 0, i32 3
  %26 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  %27 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %26, i32 0, i32 2
  invoke void @_ZN3mem4swap21h11692584037129624136E(i8** noalias nocapture dereferenceable(8) %25, i8** noalias nocapture dereferenceable(8) %27)
          to label %normal-return unwind label %unwind_ast_3645_

normal-return:                                    ; preds = %then-block-3645-
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save
  %29 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %28, i32 0, i32 4
  %30 = load i64* %29
  %31 = add i64 %30, 1
  store i64 %31, i64* %29
  %32 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  invoke void @_ZN3mem4swap20h2588900435491074167E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %32, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %save)
          to label %normal-return1 unwind label %unwind_ast_3645_

unwind_ast_3645_:                                 ; preds = %normal-return, %then-block-3645-
  %33 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %33, { i8*, i32 }* %4
  br label %clean_ast_3645_

resume:                                           ; preds = %clean_custom_
  %34 = load { i8*, i32 }* %4
  resume { i8*, i32 } %34

clean_custom_:                                    ; preds = %clean_ast_3645_
  br label %resume

clean_ast_3645_:                                  ; preds = %unwind_ast_3645_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save)
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
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %37)
  store i8* %41, i8** %37
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %save)
  br label %next-block

next-block:                                       ; preds = %entry-block, %normal-return1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or21h17278874621446241580E"(i8*, i1 zeroext, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
define internal zeroext i1 @_ZN7treemap5split12closure.2186E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8)) unnamed_addr #1 {
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
  %11 = call i8* @"_ZN6option15Option$LT$T$GT$6as_ref21h12763389968310618928E"(i8** noalias dereferenceable(8) %10)
  store i8* %11, i8** %2
  %12 = load i8** %2
  %13 = getelementptr inbounds { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure, i32 0, i32 4, i32 0
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %7, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**** %13
  %14 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 0
  store i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)* @_ZN7treemap5split12closure.2188E, i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %14
  %15 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** } }* %__closure to i8*
  %16 = getelementptr inbounds { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %3, i32 0, i32 1
  store i8* %15, i8** %16
  %17 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or21h10398863583944055386E"(i8* %12, i1 zeroext false, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %3)
  %18 = zext i1 %17 to i8
  %19 = trunc i8 %18 to i1
  ret i1 %19
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$6map_or21h10398863583944055386E"(i8*, i1 zeroext, { i1 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
define internal void @_ZN3mem7replace21h12012081378846843383E(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #1 {
entry-block:
  %dest = alloca %"struct.HyObj<[]>"*
  %3 = alloca { i8*, i32 }
  store %"struct.HyObj<[]>"* %1, %"struct.HyObj<[]>"** %dest
  %4 = load %"struct.HyObj<[]>"** %dest
  invoke void @_ZN3mem4swap20h4670464075024645785E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %4, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %2)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %5 = bitcast %"struct.HyObj<[]>"* %2 to i8*
  %6 = bitcast %"struct.HyObj<[]>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 32, i32 8, i1 false)
  %7 = bitcast %"struct.HyObj<[]>"* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 32, i32 8, i1 false)
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
  br label %resume
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h4670464075024645785E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #1 {
entry-block:
  %x = alloca %"struct.HyObj<[]>"*
  %y = alloca %"struct.HyObj<[]>"*
  %t = alloca %"struct.HyObj<[]>"
  %arg = alloca %"struct.HyObj<[]>"
  %2 = alloca { i8*, i32 }
  store %"struct.HyObj<[]>"* %0, %"struct.HyObj<[]>"** %x
  store %"struct.HyObj<[]>"* %1, %"struct.HyObj<[]>"** %y
  call void @_ZN3mem13uninitialized20h8525166220041513566E(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %t)
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
  invoke void @_ZN3mem6forget21h11962451735760709866E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %arg)
          to label %normal-return unwind label %unwind_ast_3487_

normal-return:                                    ; preds = %entry-block
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %t)
  ret void

unwind_ast_3487_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_3487_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_3487_
  br label %resume

clean_ast_3487_:                                  ; preds = %unwind_ast_3487_
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget21h11962451735760709866E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #1 {
entry-block:
  %arg = alloca %"struct.HyObj<[]>"
  %1 = bitcast %"struct.HyObj<[]>"* %0 to i8*
  %2 = bitcast %"struct.HyObj<[]>"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 32, i32 8, i1 false)
  %3 = bitcast %"struct.HyObj<[]>"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 8, i1 false)
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %0)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN7treemap25TreeNode$LT$K$C$$x20V$GT$3new20h1353170058845981476E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias nocapture sret dereferenceable(80), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32)) unnamed_addr #1 {
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN6string26String...std..clone..Clone5clone20h1d8e1b3814489b23U7aE(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
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
  call void @"_ZN3vec18Vec$LT$T$GT$.Clone5clone21h11521089293746350554E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %4, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %5)
  br label %join

join:                                             ; preds = %case_body
  ret void
}

; Function Attrs: uwtable
define internal void @"_ZN3vec18Vec$LT$T$GT$.Clone5clone21h11521089293746350554E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24), %"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
entry-block:
  %self = alloca %"struct.collections::vec::Vec<[u8]>[#6]"*
  %2 = alloca { i8*, i64 }
  %__adjust = alloca { i8*, i64 }
  store %"struct.collections::vec::Vec<[u8]>[#6]"* %1, %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  %3 = load %"struct.collections::vec::Vec<[u8]>[#6]"** %self
  call void @"_ZN3vec28Vec$LT$T$GT$.Vector$LT$T$GT$8as_slice21h12486688534718192433E"({ i8*, i64 }* noalias nocapture sret dereferenceable(16) %2, %"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %3)
  %4 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 0
  %5 = load i8** %4
  %6 = getelementptr inbounds { i8*, i64 }* %2, i32 0, i32 1
  %7 = load i64* %6
  %8 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %5, i8** %8
  %9 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %7, i64* %9
  call void @"_ZN3vec12Vec$LT$T$GT$10from_slice20h8666610262721276622E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %0, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3vec12Vec$LT$T$GT$10from_slice20h8666610262721276622E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24), { i8*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
entry-block:
  %vector = alloca %"struct.collections::vec::Vec<[u8]>[#6]"
  %__adjust = alloca { i8*, i64 }
  %2 = alloca { i8*, i32 }
  call void @"_ZN3vec12Vec$LT$T$GT$3new20h4273291984640105828E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias nocapture sret dereferenceable(24) %vector)
  %3 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 0
  %4 = load i8** %3
  %5 = getelementptr inbounds { i8*, i64 }* %1, i32 0, i32 1
  %6 = load i64* %5
  %7 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 0
  store i8* %4, i8** %7
  %8 = getelementptr inbounds { i8*, i64 }* %__adjust, i32 0, i32 1
  store i64 %6, i64* %8
  invoke void @"_ZN3vec12Vec$LT$T$GT$8push_all21h12861056777063259172E"(%"struct.collections::vec::Vec<[u8]>[#6]"* noalias dereferenceable(24) %vector, { i8*, i64 }* noalias nocapture dereferenceable(16) %__adjust)
          to label %normal-return unwind label %unwind_ast_3747_

normal-return:                                    ; preds = %entry-block
  %9 = bitcast %"struct.collections::vec::Vec<[u8]>[#6]"* %vector to i8*
  %10 = bitcast %"struct.collections::vec::Vec<[u8]>[#6]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %9, i64 24, i32 8, i1 false)
  %11 = bitcast %"struct.collections::vec::Vec<[u8]>[#6]"* %vector to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false)
  call void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.192917h566961be18a981efE"(%"struct.collections::vec::Vec<[u8]>[#6]"* %vector)
  ret void

unwind_ast_3747_:                                 ; preds = %entry-block
  %12 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %12, { i8*, i32 }* %2
  br label %clean_ast_3747_

resume:                                           ; preds = %clean_custom_
  %13 = load { i8*, i32 }* %2
  resume { i8*, i32 } %13

clean_custom_:                                    ; preds = %clean_ast_3747_
  br label %resume

clean_ast_3747_:                                  ; preds = %unwind_ast_3747_
  call void @"_ZN31collections..vec..Vec$LT$u8$GT$14glue_drop.192917h566961be18a981efE"(%"struct.collections::vec::Vec<[u8]>[#6]"* %vector)
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
  store i8* getelementptr inbounds ([51 x i8]* @str2230, i32 0, i32 0), i8** %14
  %15 = getelementptr inbounds %str_slice* %6, i32 0, i32 1
  store i64 51, i64* %15
  invoke void @_ZN6unwind12begin_unwind21h14917061321027513071E(%str_slice* noalias nocapture dereferenceable(16) %6, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_delete10_FILE_LINE20h7f2554407f0b4c30WgaE)
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
  %20 = invoke zeroext i1 @_ZN10MutableMap6remove20h8469403251374047160E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %18, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %19)
          to label %normal-return unwind label %unwind_custom_

case_body3:                                       ; preds = %match_else4
  %21 = getelementptr inbounds %str_slice* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8]* @str2198, i32 0, i32 0), i8** %21
  %22 = getelementptr inbounds %str_slice* %5, i32 0, i32 1
  store i64 26, i64* %22
  invoke void @_ZN6unwind12begin_unwind21h14917061321027513071E(%str_slice* noalias nocapture dereferenceable(16) %5, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj13hy_map_delete10_FILE_LINE20h7f2554407f0b4c30CgaE)
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
  invoke void @new_hy_bool(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %0, i1 zeroext %27)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN10MutableMap6remove20h8469403251374047160E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca %"enum.core::option::Option<[HyObj]>[#3]"
  %3 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %key
  %4 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %5 = load %"struct.collections::string::String<[]>[#6]"** %key
  call void @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$3pop21h12813139474318284458E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %2, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %4, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %5)
  %6 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14047917468269618503E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias dereferenceable(40) %2)
          to label %normal-return unwind label %unwind_ast_3771_

normal-return:                                    ; preds = %entry-block
  %7 = zext i1 %6 to i8
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %2)
  %8 = trunc i8 %7 to i1
  ret i1 %8

unwind_ast_3771_:                                 ; preds = %entry-block
  %9 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %9, { i8*, i32 }* %3
  br label %clean_ast_3771_

resume:                                           ; preds = %clean_custom_
  %10 = load { i8*, i32 }* %3
  resume { i8*, i32 } %10

clean_custom_:                                    ; preds = %clean_ast_3771_
  br label %resume

clean_ast_3771_:                                  ; preds = %unwind_ast_3771_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %2)
  br label %clean_custom_
}

; Function Attrs: uwtable
define internal void @"_ZN7treemap52TreeMap$LT$K$C$$x20V$GT$.MutableMap$LT$K$C$$x20V$GT$3pop21h12813139474318284458E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40), %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
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
  call void @_ZN7treemap6remove20h8946905787122386382E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %ret, i8** noalias nocapture dereferenceable(8) %6, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %7)
  %8 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h14047917468269618503E"(%"enum.core::option::Option<[HyObj]>[#3]"* noalias dereferenceable(40) %ret)
          to label %normal-return unwind label %unwind_ast_3790_

normal-return:                                    ; preds = %entry-block
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %3
  %10 = load i8* %3, !range !1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %then-block-3805-, label %next-block

unwind_ast_3790_:                                 ; preds = %entry-block
  %12 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %12, { i8*, i32 }* %4
  br label %clean_ast_3790_

resume:                                           ; preds = %clean_custom_
  %13 = load { i8*, i32 }* %4
  resume { i8*, i32 } %13

clean_custom_:                                    ; preds = %clean_ast_3790_
  br label %resume

clean_ast_3790_:                                  ; preds = %unwind_ast_3790_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  br label %clean_custom_

then-block-3805-:                                 ; preds = %normal-return
  %14 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %15 = getelementptr inbounds %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %14, i32 0, i32 1
  %16 = load i64* %15
  %17 = sub i64 %16, 1
  store i64 %17, i64* %15
  br label %next-block

next-block:                                       ; preds = %normal-return, %then-block-3805-
  %18 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  %19 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %18, i64 40, i32 8, i1 false)
  %20 = bitcast %"enum.core::option::Option<[HyObj]>[#3]"* %ret to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 40, i32 8, i1 false)
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  ret void
}

; Function Attrs: uwtable
define internal void @_ZN7treemap6remove20h8946905787122386382E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40), i8** noalias nocapture dereferenceable(8), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #0 {
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
  %34 = call i8 @_ZN6string22String...std..cmp..Ord3cmp20hbe281fefce71f4f7KVaE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %30, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %33)
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

clean_custom_:                                    ; preds = %clean_ast_4203_84, %clean_custom_66, %case_body
  br label %return

case_body2:                                       ; preds = %match_case6
  %38 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 0
  %39 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %40 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %39
  %41 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %40, i32 0, i32 2
  %42 = load %"struct.collections::string::String<[]>[#6]"** %key
  call void @_ZN7treemap6remove20h8946905787122386382E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %38, i8** noalias nocapture dereferenceable(8) %41, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %42)
  %43 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 1
  store i8 1, i8* %43
  br label %join28

case_body3:                                       ; preds = %match_case7
  %44 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 0
  %45 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %46 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %45
  %47 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %46, i32 0, i32 3
  %48 = load %"struct.collections::string::String<[]>[#6]"** %key
  call void @_ZN7treemap6remove20h8946905787122386382E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %44, i8** noalias nocapture dereferenceable(8) %47, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %48)
  %49 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 1
  store i8 1, i8* %49
  br label %join28

case_body4:                                       ; preds = %match_else5
  %50 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %51 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %50
  %52 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %51, i32 0, i32 2
  %53 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h16581509124913388253E"(i8** noalias dereferenceable(8) %52)
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %5
  %55 = load i8* %5, !range !1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %then-block-3958-, label %else-block20

match_else5:                                      ; preds = %case_body1
  br label %case_body4

match_case6:                                      ; preds = %case_body1
  br label %case_body2

match_case7:                                      ; preds = %case_body1
  br label %case_body3

then-block-3958-:                                 ; preds = %case_body4
  %57 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %58 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %57
  %59 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %58, i32 0, i32 3
  %60 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h16581509124913388253E"(i8** noalias dereferenceable(8) %59)
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %6
  %62 = load i8* %6, !range !1
  %63 = trunc i8 %62 to i1
  br i1 %63, label %then-block-3963-, label %else-block14

then-block-3963-:                                 ; preds = %then-block-3958-
  %64 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %65 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %64
  %66 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %65, i32 0, i32 2
  %67 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h7945962642208502062E"(i8** noalias dereferenceable(8) %66)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %67, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  %68 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  %69 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %68, i32 0, i32 3
  %70 = invoke zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h16581509124913388253E"(i8** noalias dereferenceable(8) %69)
          to label %normal-return unwind label %unwind_ast_3963_

normal-return:                                    ; preds = %then-block-3963-
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %7
  %72 = load i8* %7, !range !1
  %73 = trunc i8 %72 to i1
  br i1 %73, label %then-block-3976-, label %else-block

unwind_ast_3963_:                                 ; preds = %join, %normal-return11, %else-block, %then-block-3976-, %then-block-3963-
  %74 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %74, { i8*, i32 }* %8
  br label %clean_ast_3963_

resume:                                           ; preds = %clean_custom_8
  %75 = load { i8*, i32 }* %8
  resume { i8*, i32 } %75

clean_custom_8:                                   ; preds = %clean_ast_4203_, %clean_custom_9
  br label %resume

clean_custom_9:                                   ; preds = %clean_ast_3920_, %clean_ast_3921_
  br label %clean_custom_8

clean_ast_3921_:                                  ; preds = %clean_ast_4054_, %clean_ast_4020_18, %clean_ast_4020_, %clean_ast_3963_
  br label %clean_custom_9

clean_ast_3963_:                                  ; preds = %unwind_ast_3963_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left)
  br label %clean_ast_3921_

then-block-3976-:                                 ; preds = %normal-return
  %76 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %77 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  %78 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %77, i32 0, i32 3
  invoke void @_ZN7treemap6remove9heir_swap21h14912288478887566217E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %76, i8** noalias nocapture dereferenceable(8) %78)
          to label %normal-return10 unwind label %unwind_ast_3963_

normal-return10:                                  ; preds = %then-block-3976-
  br label %join

else-block:                                       ; preds = %normal-return
  %79 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %80 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %79
  %81 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %80, i32 0, i32 0
  %82 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  %83 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %82, i32 0, i32 0
  invoke void @_ZN3mem4swap20h7811996595505589124E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %81, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %83)
          to label %normal-return11 unwind label %unwind_ast_3963_

normal-return11:                                  ; preds = %else-block
  %84 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %85 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %84
  %86 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %85, i32 0, i32 1
  %87 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left
  %88 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %87, i32 0, i32 1
  invoke void @_ZN3mem4swap20h4670464075024645785E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %86, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %88)
          to label %normal-return12 unwind label %unwind_ast_3963_

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
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %91)
  store i8* %95, i8** %91
  %96 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 0
  %97 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %98 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %97
  %99 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %98, i32 0, i32 2
  %100 = load %"struct.collections::string::String<[]>[#6]"** %key
  invoke void @_ZN7treemap6remove20h8946905787122386382E(%"enum.core::option::Option<[HyObj]>[#3]"* noalias nocapture sret dereferenceable(40) %96, i8** noalias nocapture dereferenceable(8) %99, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %100)
          to label %normal-return13 unwind label %unwind_ast_3963_

normal-return13:                                  ; preds = %join
  %101 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3, i32 0, i32 1
  store i8 1, i8* %101
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %left)
  br label %join19

else-block14:                                     ; preds = %then-block-3958-
  %102 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %103 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %102
  %104 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %103, i32 0, i32 2
  %105 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h7945962642208502062E"(i8** noalias dereferenceable(8) %104)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %105, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new
  %106 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %107 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new
  %108 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new to i8*
  call void @llvm.memset.p0i8.i64(i8* %108, i8 0, i64 8, i32 8, i1 false)
  %109 = invoke noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @_ZN3mem7replace20h1241250844977468954E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %106, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(80) %107)
          to label %normal-return15 unwind label %unwind_ast_4020_

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
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %let)
  %116 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %117 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %118 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %117
  %119 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %118, i32 0, i32 2
  %120 = invoke noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h7945962642208502062E"(i8** noalias dereferenceable(8) %119)
          to label %normal-return16 unwind label %unwind_ast_4020_17

unwind_ast_4020_:                                 ; preds = %else-block14
  %121 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %121, { i8*, i32 }* %8
  br label %clean_ast_4020_

clean_ast_4020_:                                  ; preds = %unwind_ast_4020_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new)
  br label %clean_ast_3921_

normal-return16:                                  ; preds = %normal-return15
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %120, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11
  %122 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %11
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %116)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %value)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new)
  br label %join19

unwind_ast_4020_17:                               ; preds = %normal-return15
  %131 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %131, { i8*, i32 }* %8
  br label %clean_ast_4020_18

clean_ast_4020_18:                                ; preds = %unwind_ast_4020_17
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %value)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new)
  br label %clean_ast_3921_

join19:                                           ; preds = %normal-return16, %normal-return13
  br label %join27

else-block20:                                     ; preds = %case_body4
  %132 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %133 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %132
  %134 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %133, i32 0, i32 3
  %135 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h16581509124913388253E"(i8** noalias dereferenceable(8) %134)
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %12
  %137 = load i8* %12, !range !1
  %138 = trunc i8 %137 to i1
  br i1 %138, label %then-block-4054-, label %else-block25

then-block-4054-:                                 ; preds = %else-block20
  %139 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %140 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %139
  %141 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %140, i32 0, i32 3
  %142 = call noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @"_ZN6option15Option$LT$T$GT$11take_unwrap20h7945962642208502062E"(i8** noalias dereferenceable(8) %141)
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %142, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new21
  %143 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %144 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new21
  %145 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new21 to i8*
  call void @llvm.memset.p0i8.i64(i8* %145, i8 0, i64 8, i32 8, i1 false)
  %146 = invoke noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @_ZN3mem7replace20h1241250844977468954E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %143, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(80) %144)
          to label %normal-return22 unwind label %unwind_ast_4054_

normal-return22:                                  ; preds = %then-block-4054-
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
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %let23)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %value24)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new21)
  br label %join26

unwind_ast_4054_:                                 ; preds = %then-block-4054-
  %161 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %161, { i8*, i32 }* %8
  br label %clean_ast_4054_

clean_ast_4054_:                                  ; preds = %unwind_ast_4054_
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %new21)
  br label %clean_ast_3921_

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
  call void @"_ZN49_$LP$core..option..Option$LT$HyObj$GT$$C$bool$RP$14glue_drop.222117he1c36b61c68f4287E"({ %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %3)
  %171 = load i8* %rebalance, !range !1
  %172 = trunc i8 %171 to i1
  br i1 %172, label %then-block-4084-, label %next-block68

then-block-4084-:                                 ; preds = %join28
  %173 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %174 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %173
  %175 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %174, i32 0, i32 2
  %176 = invoke i8* @"_ZN6option15Option$LT$T$GT$6as_ref21h12763389968310618928E"(i8** noalias dereferenceable(8) %175)
          to label %normal-return29 unwind label %unwind_ast_3920_

normal-return29:                                  ; preds = %then-block-4084-
  store i8* %176, i8** %14
  %177 = load i8** %14
  %178 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %15, i32 0, i32 0
  store i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)* @_ZN7treemap6remove12closure.2223E, i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %178
  %179 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %15, i32 0, i32 1
  store i8* null, i8** %179
  %180 = invoke i64 @"_ZN6option15Option$LT$T$GT$6map_or20h8207365988328428197E"(i8* %177, i64 0, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %15)
          to label %normal-return30 unwind label %unwind_ast_3920_

unwind_ast_3920_:                                 ; preds = %for_body61, %for_loopback60, %normal-return55, %for_exit40, %for_body51, %for_loopback50, %normal-return45, %for_body42, %for_loopback41, %normal-return36, %next-block, %for_loopback, %then-block-4146-, %normal-return31, %normal-return30, %normal-return29, %then-block-4084-
  %181 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %181, { i8*, i32 }* %8
  br label %clean_ast_3920_

clean_ast_3920_:                                  ; preds = %unwind_ast_3920_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  br label %clean_custom_9

normal-return30:                                  ; preds = %normal-return29
  store i64 %180, i64* %left_level
  %182 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %183 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %182
  %184 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %183, i32 0, i32 3
  %185 = invoke i8* @"_ZN6option15Option$LT$T$GT$6as_ref21h12763389968310618928E"(i8** noalias dereferenceable(8) %184)
          to label %normal-return31 unwind label %unwind_ast_3920_

normal-return31:                                  ; preds = %normal-return30
  store i8* %185, i8** %16
  %186 = load i8** %16
  %187 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %17, i32 0, i32 0
  store i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)* @_ZN7treemap6remove12closure.2225E, i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)** %187
  %188 = getelementptr inbounds { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* %17, i32 0, i32 1
  store i8* null, i8** %188
  %189 = invoke i64 @"_ZN6option15Option$LT$T$GT$6map_or21h17677328309882367566E"(i8* %186, i64 0, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16) %17)
          to label %normal-return32 unwind label %unwind_ast_3920_

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
  br i1 %197, label %then-block-4134-, label %next-block65

before_rhs:                                       ; preds = %normal-return32
  %198 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %199 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %198
  %200 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %199, i32 0, i32 4
  %201 = load i64* %200
  %202 = sub i64 %201, 1
  %203 = load i64* %right_level
  %204 = icmp ult i64 %203, %202
  br label %join33

then-block-4134-:                                 ; preds = %join33
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
  br i1 %215, label %then-block-4146-, label %next-block

then-block-4146-:                                 ; preds = %then-block-4134-
  %216 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %217 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %216
  %218 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %217, i32 0, i32 4
  %219 = load i64* %218
  store i64 %219, i64* %save_level
  %220 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %221 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %220
  %222 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %221, i32 0, i32 3
  %223 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h16440755435376759329E"(i8** noalias dereferenceable(8) %222)
          to label %normal-return34 unwind label %unwind_ast_3920_

normal-return34:                                  ; preds = %then-block-4146-
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %223, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %18
  %224 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %18
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %224, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head
  %225 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %normal-return35
  br label %next-block

for_loopback:                                     ; preds = %for_body, %normal-return34
  %226 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next20h6785312649919946287E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias dereferenceable(8) %225)
          to label %normal-return35 unwind label %unwind_ast_3920_

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

next-block:                                       ; preds = %then-block-4134-, %for_exit
  %236 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap4skew21h17360990493635321111E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %236)
          to label %normal-return36 unwind label %unwind_ast_3920_

normal-return36:                                  ; preds = %next-block
  %237 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  %238 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %237
  %239 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %238, i32 0, i32 3
  %240 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h16440755435376759329E"(i8** noalias dereferenceable(8) %239)
          to label %normal-return37 unwind label %unwind_ast_3920_

normal-return37:                                  ; preds = %normal-return36
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %240, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %19
  %241 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %19
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %241, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref38
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref38, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head39
  %242 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head39
  br label %for_loopback41

for_exit40:                                       ; preds = %normal-return44
  %243 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %save
  invoke void @_ZN7treemap5split21h15601747926846530350E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %243)
          to label %normal-return55 unwind label %unwind_ast_3920_

for_loopback41:                                   ; preds = %for_exit49, %normal-return37
  %244 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h15254802479519912172E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias dereferenceable(8) %242)
          to label %normal-return44 unwind label %unwind_ast_3920_

for_body42:                                       ; preds = %normal-return44
  %245 = bitcast i8** %loop_option43 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %246 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %245
  invoke void @_ZN7treemap4skew21h17360990493635321111E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %246)
          to label %normal-return45 unwind label %unwind_ast_3920_

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
  %254 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h16440755435376759329E"(i8** noalias dereferenceable(8) %253)
          to label %normal-return46 unwind label %unwind_ast_3920_

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
  %257 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next19h718191448735456746E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias dereferenceable(8) %256)
          to label %normal-return53 unwind label %unwind_ast_3920_

for_body51:                                       ; preds = %normal-return53
  %258 = bitcast i8** %loop_option52 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %259 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %258
  invoke void @_ZN7treemap4skew21h17360990493635321111E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %259)
          to label %normal-return54 unwind label %unwind_ast_3920_

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
  %267 = invoke %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h16440755435376759329E"(i8** noalias dereferenceable(8) %266)
          to label %normal-return56 unwind label %unwind_ast_3920_

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
  %270 = invoke i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next20h1431433857200616930E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias dereferenceable(8) %269)
          to label %normal-return63 unwind label %unwind_ast_3920_

for_body61:                                       ; preds = %normal-return63
  %271 = bitcast i8** %loop_option62 to %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"***
  %272 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %271
  invoke void @_ZN7treemap5split21h15601747926846530350E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %272)
          to label %normal-return64 unwind label %unwind_ast_3920_

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
  br label %clean_ast_4084_

clean_custom_66:                                  ; preds = %clean_ast_3920_67
  br label %clean_custom_

clean_ast_3920_67:                                ; preds = %clean_ast_4084_
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  br label %clean_custom_66

clean_ast_4084_:                                  ; preds = %next-block65
  br label %clean_ast_3920_67

next-block68:                                     ; preds = %join28
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %ret)
  br label %join69

join69:                                           ; preds = %next-block68
  %280 = load i8*** %node
  %281 = call i8* @"_ZN6option15Option$LT$T$GT$4take21h13451434188571689568E"(i8** noalias dereferenceable(8) %280)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %285)
  %292 = bitcast %"struct.HyObj<[]>"* %285 to i8*
  call void @llvm.memset.p0i8.i64(i8* %292, i8 0, i64 32, i32 8, i1 false)
  br label %join83

case_body73:                                      ; preds = %match_else74
  %293 = getelementptr inbounds { %str_slice* }* %23, i32 0, i32 0
  %294 = getelementptr inbounds %str_slice* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8]* @str2227, i32 0, i32 0), i8** %294
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
  invoke void @_ZN3fmt8argument20h4424212635317547277E(%"struct.core::fmt::Argument<[]>[#3]"* noalias nocapture sret dereferenceable(16) %308, %"enum.core::result::Result<[(), core::fmt::FormatError]>[#3]" (%str_slice*, %"struct.core::fmt::Formatter<[]>[#3]"*)* @_ZN3fmt11secret_show20h1201838728840683068E, %str_slice* noalias dereferenceable(16) %309)
          to label %normal-return78 unwind label %unwind_ast_4203_

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
  invoke void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h4aa868c10b1a5d74yiaE"(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture sret dereferenceable(32) %__args, { %"enum.core::fmt::rt::Piece<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.core::fmt::Argument<[]>[#3]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust79)
          to label %normal-return80 unwind label %unwind_ast_4203_

unwind_ast_4203_:                                 ; preds = %normal-return80, %normal-return78, %case_body77
  %320 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %320, { i8*, i32 }* %8
  br label %clean_ast_4203_

clean_ast_4203_:                                  ; preds = %unwind_ast_4203_
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %match70)
  br label %clean_custom_8

normal-return80:                                  ; preds = %normal-return78
  store %"struct.core::fmt::Arguments<[]>[#3]"* %__args, %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  %321 = load %"struct.core::fmt::Arguments<[]>[#3]"** %fmt.i
  invoke void @_ZN7failure12begin_unwind20h7d8f396ab219c1bbn5jE(%"struct.core::fmt::Arguments<[]>[#3]"* noalias nocapture dereferenceable(32) %321, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN7treemap6remove8_run_fmt10_FILE_LINE20hcbe4b606f4a2422dCzfE)
          to label %.noexc unwind label %unwind_ast_4203_

.noexc:                                           ; preds = %normal-return80
  unreachable

_ZN7treemap6remove8_run_fmt20h57ae7a1e11d1565dHjbE.exit: ; No predecessors!
  br label %normal-return81

normal-return81:                                  ; preds = %_ZN7treemap6remove8_run_fmt20h57ae7a1e11d1565dHjbE.exit
  unreachable

join82:                                           ; No predecessors!
  unreachable

join83:                                           ; preds = %case_body71
  br label %clean_ast_4203_84

return:                                           ; preds = %clean_custom_
  ret void

clean_ast_4203_84:                                ; preds = %join83
  call void @"_ZN112core..option..Option$LT$Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$$GT$14glue_drop.211717h26d5431ed4cd49e1E"(i8** %match70)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h16581509124913388253E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
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
define internal void @_ZN7treemap6remove9heir_swap21h14912288478887566217E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #0 {
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
  %5 = call %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h16440755435376759329E"(i8** noalias dereferenceable(8) %4)
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %5, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %2
  %6 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %2
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %6, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %autoref, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head
  %7 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %for_head
  br label %for_loopback

for_exit:                                         ; preds = %for_loopback
  ret void

for_loopback:                                     ; preds = %join, %entry-block
  %8 = call i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next20h1112797911820238710E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias dereferenceable(8) %7)
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
  %17 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h16581509124913388253E"(i8** noalias dereferenceable(8) %16)
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %3
  %19 = load i8* %3, !range !1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %then-block-4334-, label %else-block

then-block-4334-:                                 ; preds = %for_body
  %21 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %22 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %13
  %23 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %22
  %24 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %23, i32 0, i32 3
  call void @_ZN7treemap6remove9heir_swap21h14912288478887566217E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %21, i8** noalias nocapture dereferenceable(8) %24)
  br label %join

else-block:                                       ; preds = %for_body
  %25 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %26 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %25
  %27 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %26, i32 0, i32 0
  %28 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %13
  %29 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %28
  %30 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %29, i32 0, i32 0
  call void @_ZN3mem4swap20h7811996595505589124E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %27, %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %30)
  %31 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %node
  %32 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %31
  %33 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %32, i32 0, i32 1
  %34 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %13
  %35 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %34
  %36 = getelementptr inbounds %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %35, i32 0, i32 1
  call void @_ZN3mem4swap20h4670464075024645785E(%"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %33, %"struct.HyObj<[]>"* noalias nocapture dereferenceable(32) %36)
  br label %join

join:                                             ; preds = %else-block, %then-block-4334-
  br label %for_loopback
}

; Function Attrs: inlinehint uwtable
define internal %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" @"_ZN6option15Option$LT$T$GT$8mut_iter21h16440755435376759329E"(i8** noalias dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"
  %self = alloca i8**
  store i8** %0, i8*** %self
  %1 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %sret_slot, i32 0, i32 0
  %2 = load i8*** %self
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$6as_mut20h1716284507153412295E"(i8** noalias dereferenceable(8) %2)
  store i8* %3, i8** %1
  %4 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %sret_slot
  ret %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]" %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$6as_mut20h1716284507153412295E"(i8** noalias dereferenceable(8)) unnamed_addr #1 {
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
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next20h1112797911820238710E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take21h17458968368390018046E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take21h17458968368390018046E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace20h7910560071829571649E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace20h7910560071829571649E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap20h5096664983890345647E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h5096664983890345647E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized21h12136905621940725354E()
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
  call void @_ZN3mem6forget20h3787124800774237264E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized21h12136905621940725354E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h3787124800774237264E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h7811996595505589124E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %x = alloca %"struct.collections::string::String<[]>[#6]"*
  %y = alloca %"struct.collections::string::String<[]>[#6]"*
  %t = alloca %"struct.collections::string::String<[]>[#6]"
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %2 = alloca { i8*, i32 }
  store %"struct.collections::string::String<[]>[#6]"* %0, %"struct.collections::string::String<[]>[#6]"** %x
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %y
  call void @_ZN3mem13uninitialized21h10048885018245956401E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24) %t)
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
  invoke void @_ZN3mem6forget20h4205916596621920003E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24) %arg)
          to label %normal-return unwind label %unwind_ast_3487_

normal-return:                                    ; preds = %entry-block
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %t)
  ret void

unwind_ast_3487_:                                 ; preds = %entry-block
  %16 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  store { i8*, i32 } %16, { i8*, i32 }* %2
  br label %clean_ast_3487_

resume:                                           ; preds = %clean_custom_
  %17 = load { i8*, i32 }* %2
  resume { i8*, i32 } %17

clean_custom_:                                    ; preds = %clean_ast_3487_
  br label %resume

clean_ast_3487_:                                  ; preds = %unwind_ast_3487_
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %t)
  br label %clean_custom_
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem13uninitialized21h10048885018245956401E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #1 {
entry-block:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget20h4205916596621920003E(%"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %arg = alloca %"struct.collections::string::String<[]>[#6]"
  %1 = bitcast %"struct.collections::string::String<[]>[#6]"* %0 to i8*
  %2 = bitcast %"struct.collections::string::String<[]>[#6]"* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 24, i32 8, i1 false)
  %3 = bitcast %"struct.collections::string::String<[]>[#6]"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false)
  call void @_ZN27collections..string..String14glue_drop.192617hac4f02065abeed28E(%"struct.collections::string::String<[]>[#6]"* %0)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal noalias dereferenceable(80) %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* @_ZN3mem7replace20h1241250844977468954E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8), %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(80)) unnamed_addr #1 {
entry-block:
  %dest = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**
  %src = alloca %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*
  %2 = alloca { i8*, i32 }
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %0, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %dest
  store %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"* %1, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %src
  %3 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"*** %dest
  invoke void @_ZN3mem4swap20h2588900435491074167E(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %3, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias nocapture dereferenceable(8) %src)
          to label %normal-return unwind label %unwind_custom_

normal-return:                                    ; preds = %entry-block
  %4 = load %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %src
  %5 = bitcast %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %src to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 8, i32 8, i1 false)
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %src)
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
  call void @"_ZN84Box$LT$collections..treemap..TreeNode$LT$collections..string..String$C$HyObj$GT$$GT$14glue_drop.212017h9719c8310fbf76d1E"(%"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** %src)
  br label %resume
}

define internal void @"_ZN49_$LP$core..option..Option$LT$HyObj$GT$$C$bool$RP$14glue_drop.222117he1c36b61c68f4287E"({ %"enum.core::option::Option<[HyObj]>[#3]", i8 }*) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %0, i32 0, i32 0
  call void @"_ZN33core..option..Option$LT$HyObj$GT$14glue_drop.218417h620e6f010e72bdc5E"(%"enum.core::option::Option<[HyObj]>[#3]"* %1)
  %2 = getelementptr inbounds { %"enum.core::option::Option<[HyObj]>[#3]", i8 }* %0, i32 0, i32 1
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN6option15Option$LT$T$GT$6map_or20h8207365988328428197E"(i8*, i64, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
define internal i64 @_ZN7treemap6remove12closure.2223E(i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"** noalias dereferenceable(8)) unnamed_addr #1 {
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
define internal i64 @"_ZN6option15Option$LT$T$GT$6map_or21h17677328309882367566E"(i8*, i64, { i64 (i8*, %"struct.collections::treemap::TreeNode<[collections::string::String, HyObj]>[#6]"**)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #1 {
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
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next20h6785312649919946287E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h3173467364418469034E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h3173467364418469034E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace21h15644942111420339163E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace21h15644942111420339163E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap20h5171109363175289599E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h5171109363175289599E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized20h8331717382192352387E()
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
  call void @_ZN3mem6forget21h17466910247612505881E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized20h8331717382192352387E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget21h17466910247612505881E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next21h15254802479519912172E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h1951893744526155053E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h1951893744526155053E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace21h18080019857821526643E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace21h18080019857821526643E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap20h7025336717158995588E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap20h7025336717158995588E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized20h8903951183797026336E()
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
  call void @_ZN3mem6forget21h10174013198613194771E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized20h8903951183797026336E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget21h10174013198613194771E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next19h718191448735456746E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take21h17572585331549562020E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take21h17572585331549562020E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace20h9921624857030731761E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace20h9921624857030731761E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap21h18320899690201476054E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap21h18320899690201476054E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized21h17383015143527712275E()
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
  call void @_ZN3mem6forget21h14859373432236746712E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized21h17383015143527712275E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget21h14859373432236746712E(i8*) unnamed_addr #1 {
entry-block:
  %thing = alloca i8*
  store i8* %0, i8** %thing
  %1 = load i8** %thing
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option31Item$LT$A$GT$.Iterator$LT$A$GT$4next20h1431433857200616930E"(%"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"*
  store %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %0, %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %1 = load %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"** %self
  %2 = getelementptr inbounds %"struct.core::option::Item<[&'static mut Box<collections::treemap::TreeNode<collections::string::String,HyObj>>]>[#3]"* %1, i32 0, i32 0
  %3 = call i8* @"_ZN6option15Option$LT$T$GT$4take20h7829258796373778444E"(i8** noalias dereferenceable(8) %2)
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN6option15Option$LT$T$GT$4take20h7829258796373778444E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %self = alloca i8**
  %1 = alloca i8*
  store i8** %0, i8*** %self
  %2 = load i8*** %self
  store i8* null, i8** %1
  %3 = load i8** %1
  %4 = call i8* @_ZN3mem7replace19h209639769543048028E(i8** noalias nocapture dereferenceable(8) %2, i8* %3)
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem7replace19h209639769543048028E(i8** noalias nocapture dereferenceable(8), i8*) unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %dest = alloca i8**
  %src = alloca i8*
  store i8** %0, i8*** %dest
  store i8* %1, i8** %src
  %2 = load i8*** %dest
  call void @_ZN3mem4swap19h824291181901790829E(i8** noalias nocapture dereferenceable(8) %2, i8** noalias nocapture dereferenceable(8) %src)
  %3 = bitcast i8** %src to i8*
  %4 = bitcast i8** %sret_slot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 8, i32 8, i1 false)
  %5 = load i8** %sret_slot
  ret i8* %5
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem4swap19h824291181901790829E(i8** noalias nocapture dereferenceable(8), i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
entry-block:
  %x = alloca i8**
  %y = alloca i8**
  %t = alloca i8*
  store i8** %0, i8*** %x
  store i8** %1, i8*** %y
  %2 = call i8* @_ZN3mem13uninitialized21h11133770887090816266E()
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
  call void @_ZN3mem6forget21h16466161989912575167E(i8* %13)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN3mem13uninitialized21h11133770887090816266E() unnamed_addr #1 {
entry-block:
  %sret_slot = alloca i8*
  %0 = load i8** %sret_slot
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN3mem6forget21h16466161989912575167E(i8*) unnamed_addr #1 {
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
  store i8* getelementptr inbounds ([53 x i8]* @str2242, i32 0, i32 0), i8** %14
  %15 = getelementptr inbounds %str_slice* %6, i32 0, i32 1
  store i64 53, i64* %15
  invoke void @_ZN6unwind12begin_unwind21h14917061321027513071E(%str_slice* noalias nocapture dereferenceable(16) %6, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj15hy_map_contains10_FILE_LINE20h7f2554407f0b4c304haE)
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
  %20 = invoke zeroext i1 @_ZN3Map12contains_key21h17871152466966797160E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %18, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %19)
          to label %normal-return unwind label %unwind_custom_

case_body3:                                       ; preds = %match_else4
  %21 = getelementptr inbounds %str_slice* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8]* @str2198, i32 0, i32 0), i8** %21
  %22 = getelementptr inbounds %str_slice* %5, i32 0, i32 1
  store i64 26, i64* %22
  invoke void @_ZN6unwind12begin_unwind21h14917061321027513071E(%str_slice* noalias nocapture dereferenceable(16) %5, { %str_slice, i64 }* noalias nocapture dereferenceable(24) @_ZN5HyObj15hy_map_contains10_FILE_LINE20h7f2554407f0b4c30KhaE)
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
  invoke void @new_hy_bool(%"struct.HyObj<[]>"* noalias nocapture sret dereferenceable(32) %0, i1 zeroext %27)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
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
  call void @_ZN5HyObj14glue_drop.210917h612609f122e705caE(%"struct.HyObj<[]>"* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN3Map12contains_key21h17871152466966797160E(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias nocapture dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %self = alloca %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"*
  %key = alloca %"struct.collections::string::String<[]>[#6]"*
  %2 = alloca i8*
  %autoref = alloca i8*
  store %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* %0, %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %key
  %3 = load %"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"** %self
  %4 = load %"struct.collections::string::String<[]>[#6]"** %key
  %5 = call i8* @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find20h9226207756819380619E"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16) %3, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %4)
  store i8* %5, i8** %2
  %6 = load i8** %2
  store i8* %6, i8** %autoref
  %7 = call zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h15540250460170558410E"(i8** noalias dereferenceable(8) %autoref)
  %8 = zext i1 %7 to i8
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN6option15Option$LT$T$GT$7is_some21h15540250460170558410E"(i8** noalias nocapture dereferenceable(8)) unnamed_addr #1 {
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
define internal i8* @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find20h9226207756819380619E"(%"struct.collections::treemap::TreeMap<[collections::string::String, HyObj]>[#6]"* noalias dereferenceable(16), %"struct.collections::string::String<[]>[#6]"* noalias nocapture dereferenceable(24)) unnamed_addr #1 {
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
  store i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)* @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find12closure.2240E", i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)** %6
  %7 = bitcast { i64, {}*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }* %__closure to i8*
  %8 = getelementptr inbounds { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* %2, i32 0, i32 1
  store i8* %7, i8** %8
  %9 = call i8* @_ZN7treemap14tree_find_with20h7349375874442776716E(i8** noalias dereferenceable(8) %4, { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* noalias nocapture dereferenceable(16) %2)
  ret i8* %9
}

; Function Attrs: uwtable
define internal i8* @_ZN7treemap14tree_find_with20h7349375874442776716E(i8** noalias dereferenceable(8), { i8 (i8*, %"struct.collections::string::String<[]>[#6]"*)*, i8* }* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
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
  br label %clean_ast_4557_

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
  br label %clean_ast_4581_

match_else5:                                      ; preds = %case_body
  br label %case_body4

match_case6:                                      ; preds = %case_body
  br label %case_body2

match_case7:                                      ; preds = %case_body
  br label %case_body3

clean_custom_:                                    ; preds = %clean_ast_4557_
  br label %return

clean_ast_4557_:                                  ; preds = %case_body1, %clean_custom_8
  br label %clean_custom_

clean_custom_8:                                   ; preds = %clean_ast_4581_
  br label %clean_ast_4557_

clean_ast_4581_:                                  ; preds = %case_body4
  br label %clean_custom_8

join:                                             ; preds = %case_body3, %case_body2
  br label %join10

join10:                                           ; preds = %join
  br label %loop_body
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN7treemap45TreeMap$LT$K$C$$x20V$GT$.Map$LT$K$C$$x20V$GT$4find12closure.2240E"(i8*, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24)) unnamed_addr #1 {
entry-block:
  %k2 = alloca %"struct.collections::string::String<[]>[#6]"*
  store %"struct.collections::string::String<[]>[#6]"* %1, %"struct.collections::string::String<[]>[#6]"** %k2
  %2 = bitcast i8* %0 to { i64, void (i8*)*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }*
  %3 = getelementptr inbounds { i64, void (i8*)*, i8*, i8*, { %"struct.collections::string::String<[]>[#6]"** } }* %2, i32 0, i32 4
  %4 = getelementptr inbounds { %"struct.collections::string::String<[]>[#6]"** }* %3, i32 0, i32 0
  %5 = load %"struct.collections::string::String<[]>[#6]"*** %4
  %6 = load %"struct.collections::string::String<[]>[#6]"** %5
  %7 = load %"struct.collections::string::String<[]>[#6]"** %k2
  %8 = call i8 @_ZN6string22String...std..cmp..Ord3cmp20hbe281fefce71f4f7KVaE(%"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %6, %"struct.collections::string::String<[]>[#6]"* noalias dereferenceable(24) %7)
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
