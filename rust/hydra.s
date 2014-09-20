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
	callq	_hy_obj_to_str
	movq	%rax, %rdi
	callq	_puts
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
Ltmp3:
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
Ltmp4:
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
Ltmp5:
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
Ltmp6:
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
Ltmp7:
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
Ltmp8:
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
Ltmp9:
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
Ltmp10:
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
Ltmp11:
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
Ltmp12:
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
Ltmp13:
	.cfi_def_cfa_offset 16
	callq	_hy_neq_op
	popq	%rdx
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbx
Ltmp14:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
Ltmp15:
	.cfi_def_cfa_offset 32
Ltmp16:
	.cfi_offset %rbx, -16
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$2, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_+"
	movq	%rax, %rdi
	callq	_print
	movl	$6, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$3, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_-"
	movq	%rax, %rdi
	callq	_print
	movl	$2, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$3, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_*"
	movq	%rax, %rbx
	movl	$2, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_/"
	movq	%rax, %rdi
	callq	_print
	movl	$9, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$6, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_%"
	movq	%rax, %rdi
	callq	_print
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$2, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_<"
	movq	%rax, %rdi
	callq	_print
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$2, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_>"
	movq	%rax, %rdi
	callq	_print
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$2, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_<="
	movq	%rax, %rdi
	callq	_print
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$2, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_>="
	movq	%rax, %rdi
	callq	_print
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_=="
	movq	%rax, %rdi
	callq	_print
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$2, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_=="
	movq	%rax, %rdi
	callq	_print
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_!="
	movq	%rax, %rdi
	callq	_print
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rax, %rbx
	movl	$2, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_!="
	movq	%rax, %rdi
	callq	_print
	movl	$15, %edi
	callq	_hy_new_int
	movq	%rax, 8(%rsp)
	callq	_hy_new_undefined
	movq	%rax, (%rsp)
	movq	8(%rsp), %rdi
	callq	_print
	movq	(%rsp), %rdi
	callq	_print
	movq	8(%rsp), %rdi
	callq	_print
	movq	8(%rsp), %rdi
	movq	%rdi, %rsi
	callq	"_+"
	movq	%rax, %rdi
	callq	_print
	movq	8(%rsp), %rdi
	callq	_print
	movl	$4, %edi
	callq	_hy_new_int
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_print
	movq	8(%rsp), %rdi
	callq	_print
	movq	8(%rsp), %rdi
	movq	(%rsp), %rsi
	callq	"_+"
	movq	%rax, %rdi
	callq	_print
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc


.subsections_via_symbols
