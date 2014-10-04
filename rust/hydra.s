	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 12, 5
	.globl	"_!range_gen_next"
	.align	4, 0x90
"_!range_gen_next":                     ## @"!range_gen_next"
	.cfi_startproc
## BB#0:                                ## %entry
	jmpq	*(%rdi)
Ltmp0:                                  ## Block address taken
LBB0_1:                                 ## %incr
	incl	8(%rdi)
Ltmp1:                                  ## Block address taken
LBB0_2:                                 ## %cond
	movl	8(%rdi), %eax
	cmpl	12(%rdi), %eax
	jge	LBB0_4
## BB#3:                                ## %yield1
	leaq	Ltmp0(%rip), %rax
	movq	%rax, (%rdi)
	movl	8(%rdi), %eax
	movl	%eax, 16(%rdi)
	movl	$1, %eax
	retq
LBB0_4:                                 ## %exit
	xorl	%eax, %eax
	retq
	.cfi_endproc

	.globl	"_!range_gen_init"
	.align	4, 0x90
"_!range_gen_init":                     ## @"!range_gen_init"
	.cfi_startproc
## BB#0:
	leaq	Ltmp1(%rip), %rax
	movq	%rax, (%rdi)
	movl	%esi, 8(%rdi)
	movl	%edx, 12(%rdi)
	retq
	.cfi_endproc

	.globl	_print
	.align	4, 0x90
_print:                                 ## @print
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp2:
	.cfi_def_cfa_offset 16
	xorl	%esi, %esi
	callq	_hy_obj_slice_get
	movq	%rax, %rdi
	callq	_hy_obj_print
	callq	_hy_new_undefined
	popq	%rdx
	retq
	.cfi_endproc

	.globl	_println
	.align	4, 0x90
_println:                               ## @println
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp3:
	.cfi_def_cfa_offset 16
	xorl	%esi, %esi
	callq	_hy_obj_slice_get
	movq	%rax, %rdi
	callq	_hy_obj_println
	callq	_hy_new_undefined
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_+"
	.align	4, 0x90
"_+":                                   ## @"+"
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp4:
	.cfi_def_cfa_offset 16
	callq	_hy_add_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_-"
	.align	4, 0x90
"_-":                                   ## @-
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp5:
	.cfi_def_cfa_offset 16
	callq	_hy_sub_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_*"
	.align	4, 0x90
"_*":                                   ## @"*"
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp6:
	.cfi_def_cfa_offset 16
	callq	_hy_mul_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_/"
	.align	4, 0x90
"_/":                                   ## @"/"
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp7:
	.cfi_def_cfa_offset 16
	callq	_hy_div_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_%"
	.align	4, 0x90
"_%":                                   ## @"%"
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp8:
	.cfi_def_cfa_offset 16
	callq	_hy_mod_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_<"
	.align	4, 0x90
"_<":                                   ## @"<"
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp9:
	.cfi_def_cfa_offset 16
	callq	_hy_lt_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_>"
	.align	4, 0x90
"_>":                                   ## @">"
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp10:
	.cfi_def_cfa_offset 16
	callq	_hy_gt_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_<="
	.align	4, 0x90
"_<=":                                  ## @"<="
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp11:
	.cfi_def_cfa_offset 16
	callq	_hy_lt_eq_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_>="
	.align	4, 0x90
"_>=":                                  ## @">="
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp12:
	.cfi_def_cfa_offset 16
	callq	_hy_gt_eq_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_=="
	.align	4, 0x90
"_==":                                  ## @"=="
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp13:
	.cfi_def_cfa_offset 16
	callq	_hy_eq_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_!="
	.align	4, 0x90
"_!=":                                  ## @"!="
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp14:
	.cfi_def_cfa_offset 16
	callq	_hy_neq_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %function_def_bridge1
	pushq	%r15
Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rbx
Ltmp17:
	.cfi_def_cfa_offset 32
	subq	$128, %rsp
Ltmp18:
	.cfi_def_cfa_offset 160
Ltmp19:
	.cfi_offset %rbx, -32
Ltmp20:
	.cfi_offset %r14, -24
Ltmp21:
	.cfi_offset %r15, -16
	leaq	104(%rsp), %r14
	movl	$1, %esi
	movq	%r14, %rdi
	callq	_hy_obj_slice_init
	leaq	80(%rsp), %rbx
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	_hy_obj_slice_init
	movl	$5, %edi
	callq	_hy_new_int
	movq	%rax, %rdi
	callq	_hy_obj_clone
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_hy_obj_slice_push
	movl	$5, %edi
	callq	_hy_new_int
	movq	%rax, %rdi
	callq	_hy_obj_clone
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_hy_obj_slice_push
	movq	%rbx, %rdi
	callq	_add_and_mult
	movq	%rax, %rdi
	callq	_hy_obj_clone
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_hy_obj_slice_push
	movq	%r14, %rdi
	callq	_println
	leaq	56(%rsp), %r14
	movl	$1, %esi
	movq	%r14, %rdi
	callq	_hy_obj_slice_init
	callq	_hy_new_array
	movq	%rax, %rbx
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_hy_array_push
	movl	$1, %edi
	callq	_hy_new_bool
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_hy_array_push
	leaq	32(%rsp), %r15
	movl	$2, %esi
	movq	%r15, %rdi
	callq	_hy_obj_slice_init
	movl	$5, %edi
	callq	_hy_new_int
	movq	%rax, %rdi
	callq	_hy_obj_clone
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	_hy_obj_slice_push
	movl	$6, %edi
	callq	_hy_new_int
	movq	%rax, %rdi
	callq	_hy_obj_clone
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	_hy_obj_slice_push
	movq	%r15, %rdi
	callq	_add_and_mult
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_hy_array_push
	movq	%rbx, %rdi
	callq	_hy_obj_clone
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_hy_obj_slice_push
	movq	%r14, %rdi
	callq	_println
	callq	_hy_new_map
	movq	%rax, %rbx
	leaq	"L_global_\"arr\"_literal"(%rip), %rdi
	callq	_hy_new_string
	movq	%rax, %r14
	callq	_hy_new_array
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_hy_map_insert
	leaq	"L_global_\"avc\"_literal"(%rip), %rdi
	callq	_hy_new_string
	movq	%rax, %r14
	movl	$1, %edi
	callq	_hy_new_bool
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_hy_map_insert
	movq	%rbx, 24(%rsp)
	leaq	(%rsp), %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	_hy_obj_slice_init
	movq	24(%rsp), %rdi
	callq	_hy_obj_clone
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_hy_obj_slice_push
	movq	%rbx, %rdi
	callq	_println
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc

	.globl	_add
	.align	4, 0x90
_add:                                   ## @add
	.cfi_startproc
## BB#0:                                ## %add_param_setup
	pushq	%rbx
Ltmp22:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
Ltmp23:
	.cfi_def_cfa_offset 32
Ltmp24:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
                                        ## kill: RDI<def> RBX<kill>
	callq	_hy_obj_slice_get
	movq	%rax, 8(%rsp)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	_hy_obj_slice_get
	movq	%rax, (%rsp)
	movq	8(%rsp), %rdi
	movq	(%rsp), %rsi
	callq	"_+"
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc

	.globl	_add_and_mult
	.align	4, 0x90
_add_and_mult:                          ## @add_and_mult
	.cfi_startproc
## BB#0:                                ## %add_and_mult_param_setup
	pushq	%rbx
Ltmp25:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
Ltmp26:
	.cfi_def_cfa_offset 32
Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
                                        ## kill: RDI<def> RBX<kill>
	callq	_hy_obj_slice_get
	movq	%rax, 8(%rsp)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	_hy_obj_slice_get
	movq	%rax, (%rsp)
	movl	$2, %edi
	callq	_hy_new_tuple
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	movq	(%rsp), %rsi
	callq	"_+"
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_hy_tuple_insert
	movq	8(%rsp), %rdi
	movq	(%rsp), %rsi
	callq	"_*"
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_hy_tuple_insert
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
"L_global_\"arr\"_literal":             ## @"global_\22arr\22_literal"
	.asciz	"\"arr\""

"L_global_\"avc\"_literal":             ## @"global_\22avc\22_literal"
	.asciz	"\"avc\""


.subsections_via_symbols
