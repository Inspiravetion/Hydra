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
	pushq	%rbp
Ltmp14:
	.cfi_def_cfa_offset 16
Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp16:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
Ltmp17:
	.cfi_offset %rbx, -32
Ltmp18:
	.cfi_offset %r14, -24
	movl	$100000000, %edi        ## imm = 0x5F5E100
	callq	_hy_new_int
	movq	%rax, %rdi
	callq	_print
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rax, -24(%rbp)
	movl	$2, %edi
	callq	_hy_new_int
	movq	%rax, -32(%rbp)
	movl	$3, %edi
	callq	_hy_new_int
	movq	%rax, -40(%rbp)
	movl	$6, %edi
	callq	_hy_new_int
	movq	%rax, -48(%rbp)
	movl	$9, %edi
	callq	_hy_new_int
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	"_+"
	movq	%rax, %rdi
	callq	_print
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	"_-"
	movq	%rax, %rdi
	callq	_print
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	"_*"
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	"_/"
	movq	%rax, %rdi
	callq	_print
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	"_%"
	movq	%rax, %rdi
	callq	_print
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	"_<"
	movq	%rax, %rdi
	callq	_print
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	"_>"
	movq	%rax, %rdi
	callq	_print
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	"_<="
	movq	%rax, %rdi
	callq	_print
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	"_>="
	movq	%rax, %rdi
	callq	_print
	movq	-24(%rbp), %rdi
	movq	%rdi, %rsi
	callq	"_=="
	movq	%rax, %rdi
	callq	_print
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	"_=="
	movq	%rax, %rdi
	callq	_print
	movq	-24(%rbp), %rdi
	movq	%rdi, %rsi
	callq	"_!="
	movq	%rax, %rdi
	callq	_print
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	"_!="
	movq	%rax, %rdi
	callq	_print
	movl	$15, %edi
	callq	_hy_new_int
	movq	%rax, -64(%rbp)
	callq	_hy_new_undefined
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	_print
	movq	-72(%rbp), %rdi
	callq	_print
	movq	-64(%rbp), %rdi
	callq	_print
	movq	-64(%rbp), %rdi
	movq	%rdi, %rsi
	callq	"_+"
	movq	%rax, %rdi
	callq	_print
	movq	-64(%rbp), %rdi
	callq	_print
	movl	$4, %edi
	callq	_hy_new_int
	movq	%rax, -72(%rbp)
	movq	%rax, %rdi
	callq	_print
	movq	-64(%rbp), %rdi
	callq	_print
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	"_+"
	movq	%rax, %rdi
	callq	_print
	movq	-72(%rbp), %rbx
	movl	$1000, %edi             ## imm = 0x3E8
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_>"
	movq	%rax, %rdi
	callq	_hy_obj_to_truthy_val
	testl	%eax, %eax
	je	LBB14_1
## BB#3:                                ## %if_else_stmts
	movl	$10, %edi
	jmp	LBB14_4
LBB14_1:                                ## %if_else_cond
	xorl	%edi, %edi
	callq	_hy_new_bool
	movq	%rax, %rdi
	callq	_hy_obj_to_truthy_val
	testl	%eax, %eax
	je	LBB14_2
## BB#8:                                ## %if_else_stmts75
	movl	$100, %edi
	jmp	LBB14_4
LBB14_2:                                ## %if_else_cond74
	movl	$1000, %edi             ## imm = 0x3E8
LBB14_4:                                ## %if_else_exit
	callq	_hy_new_int
	movq	%rax, %rdi
	callq	_print
	xorl	%edi, %edi
	callq	_hy_new_int
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r14
	movq	%r14, %rsp
	movq	%rax, -16(%rcx)
	jmp	LBB14_5
	.align	4, 0x90
LBB14_6:                                ## %while_loop_stmts
                                        ##   in Loop: Header=BB14_5 Depth=1
	movq	(%r14), %rdi
	callq	_print
	movq	(%r14), %rbx
	movl	$1, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_+"
	movq	%rax, (%r14)
LBB14_5:                                ## %while_loop_check
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rbx
	movl	$3, %edi
	callq	_hy_new_int
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	"_<"
	movq	%rax, %rdi
	callq	_hy_obj_to_truthy_val
	testl	%eax, %eax
	jne	LBB14_6
## BB#7:                                ## %while_loop_exit
	xorl	%eax, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
