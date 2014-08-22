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

	.globl	_print_int
	.align	4, 0x90
_print_int:                             ## @print_int
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rax
Ltmp4:
	.cfi_def_cfa_offset 32
Ltmp5:
	.cfi_offset %rbx, -24
Ltmp6:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	$20, %edi
	callq	_malloc
	movq	%rax, %rbx
	leaq	L_global_gen_fmt(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	_sprintf
	movq	%rbx, %rdi
	callq	_puts
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	"_+"
	.align	4, 0x90
"_+":                                   ## @"+"
	.cfi_startproc
## BB#0:
                                        ## kill: ESI<def> ESI<kill> RSI<def>
                                        ## kill: EDI<def> EDI<kill> RDI<def>
	leal	(%rdi,%rsi), %eax
	retq
	.cfi_endproc

	.globl	"_-"
	.align	4, 0x90
"_-":                                   ## @-
	.cfi_startproc
## BB#0:
	subl	%esi, %edi
	movl	%edi, %eax
	retq
	.cfi_endproc

	.globl	"_*"
	.align	4, 0x90
"_*":                                   ## @"*"
	.cfi_startproc
## BB#0:
	imull	%esi, %edi
	movl	%edi, %eax
	retq
	.cfi_endproc

	.globl	"_/"
	.align	4, 0x90
"_/":                                   ## @"/"
	.cfi_startproc
## BB#0:
	movl	%edi, %eax
	cltd
	idivl	%esi
	retq
	.cfi_endproc

	.globl	"_%"
	.align	4, 0x90
"_%":                                   ## @"%"
	.cfi_startproc
## BB#0:
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	%edx, %eax
	retq
	.cfi_endproc

	.globl	"_<"
	.align	4, 0x90
"_<":                                   ## @"<"
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	setl	%al
	movzbl	%al, %eax
	retq
	.cfi_endproc

	.globl	"_>"
	.align	4, 0x90
"_>":                                   ## @">"
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	setg	%al
	movzbl	%al, %eax
	retq
	.cfi_endproc

	.globl	"_<="
	.align	4, 0x90
"_<=":                                  ## @"<="
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	setle	%al
	movzbl	%al, %eax
	retq
	.cfi_endproc

	.globl	"_>="
	.align	4, 0x90
"_>=":                                  ## @">="
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	setge	%al
	movzbl	%al, %eax
	retq
	.cfi_endproc

	.globl	"_=="
	.align	4, 0x90
"_==":                                  ## @"=="
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	sete	%al
	movzbl	%al, %eax
	retq
	.cfi_endproc

	.globl	"_!="
	.align	4, 0x90
"_!=":                                  ## @"!="
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	setne	%al
	movzbl	%al, %eax
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %for_loop_init
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp9:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
Ltmp10:
	.cfi_offset %rbx, -40
Ltmp11:
	.cfi_offset %r14, -32
Ltmp12:
	.cfi_offset %r15, -24
	movl	$2, %edi
	movl	$2, %esi
	callq	"_+"
	movl	%eax, %edi
	callq	_double
	movl	%eax, -28(%rbp)
	movl	%eax, %edi
	callq	_print_int
	movl	$2, %edi
	movl	$3, %esi
	callq	"_*"
	movl	$2, %esi
	movl	%eax, %edi
	callq	"_/"
	movl	$1, %esi
	movl	%eax, %edi
	callq	"_-"
	movl	$10, %esi
	movl	%eax, %edi
	callq	_times
	movl	$1, %edi
	movl	%eax, %esi
	callq	"_+"
	movl	%eax, %edi
	callq	_print_int
	leaq	-56(%rbp), %r14
	xorl	%esi, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	"_!range_gen_init"
	movl	$-1, -60(%rbp)
	jmp	LBB14_1
	.align	4, 0x90
LBB14_3:                                ## %for_loop_stmts11
                                        ##   in Loop: Header=BB14_1 Depth=1
	movl	16(%rbx), %eax
	movl	%eax, (%r15)
	movl	-60(%rbp), %edi
	callq	_print_int
LBB14_1:                                ## %for_loop_check
                                        ## =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	"_!range_gen_next"
	testl	%eax, %eax
	je	LBB14_4
## BB#2:                                ## %for_loop_check10
                                        ##   in Loop: Header=BB14_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$10, -16(%rax)
	movl	-60(%rbp), %edx
	incl	%edx
	movq	%rsp, %rbx
	addq	$-32, %rbx
	movq	%rbx, %rsp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	"_!range_gen_init"
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movl	$-1, -16(%rax)
	movq	%rbx, %rdi
	callq	"_!range_gen_next"
	testl	%eax, %eax
	je	LBB14_1
	jmp	LBB14_3
LBB14_4:                                ## %function_def_bridge21
	movl	$1200, %edi             ## imm = 0x4B0
	movl	$34, %esi
	callq	_plus
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	%eax, -16(%rcx)
	movl	%eax, %edi
	callq	_print_int
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r14
	movq	%r14, %rsp
	movl	$11, -16(%rbx)
	movq	%rsp, %r15
	leaq	-16(%r15), %rax
	movq	%rax, %rsp
	movl	$12, -16(%r15)
	movl	-16(%rbx), %edi
	movl	$12, %esi
	callq	"_+"
	movl	%eax, %edi
	callq	_print_int
	movl	$21, -16(%rbx)
	movl	$22, -16(%r15)
	movl	-16(%rbx), %edi
	movl	$22, %esi
	callq	"_+"
	movl	%eax, %edi
	callq	_print_int
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	LBB14_5
	.align	4, 0x90
LBB14_6:                                ## %while_loop_stmts
                                        ##   in Loop: Header=BB14_5 Depth=1
	movl	$1000000, %edi          ## imm = 0xF4240
	callq	_print_int
	movl	(%rbx), %edi
	movl	$1, %esi
	callq	"_+"
	movl	%eax, (%rbx)
LBB14_5:                                ## %while_loop_check
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%rbx), %edi
	movl	$5, %esi
	callq	"_<="
	testl	%eax, %eax
	jne	LBB14_6
## BB#7:                                ## %if_cond
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$-1, -16(%rax)
	movl	(%r14), %edi
	movl	$1000, %esi             ## imm = 0x3E8
	callq	"_>"
	testl	%eax, %eax
	je	LBB14_8
## BB#10:                               ## %if_else_stmts
	movl	(%r14), %edi
	jmp	LBB14_11
LBB14_8:                                ## %if_else_cond
	movl	$1, %edi
	movl	$100, %esi
	callq	"_<"
	testl	%eax, %eax
	je	LBB14_9
## BB#12:                               ## %if_else_stmts44
	movl	$2, (%rbx)
	movl	$100, %edi
	jmp	LBB14_11
LBB14_9:                                ## %if_else_cond43
	movl	$1000, %edi             ## imm = 0x3E8
LBB14_11:                               ## %if_else_exit
	callq	_print_int
	movl	(%rbx), %edi
	callq	_print_int
	movl	$10, %edi
	movl	$100, %esi
	callq	_minus
	movl	%eax, %edi
	callq	_print_int
	xorl	%eax, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_double
	.align	4, 0x90
_double:                                ## @double
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp13:
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	movl	$2, %esi
	callq	"_*"
	popq	%rdx
	retq
	.cfi_endproc

	.globl	_minus
	.align	4, 0x90
_minus:                                 ## @minus
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp14:
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	movl	%esi, (%rsp)
	movl	4(%rsp), %edi
	callq	"_-"
	popq	%rdx
	retq
	.cfi_endproc

	.globl	"_!squares_gen_next"
	.align	4, 0x90
"_!squares_gen_next":                   ## @"!squares_gen_next"
	.cfi_startproc
## BB#0:                                ## %gen_state_restore
	jmpq	*(%rdi)
LBB17_1:                                ## %gen_state_save
	movl	$1, %eax
	retq
Ltmp15:                                 ## Block address taken
LBB17_2:                                ## %gen_state_entry
	movabsq	$8589934591, %rax       ## imm = 0x1FFFFFFFF
	movq	%rax, 12(%rdi)
	movabsq	$-4294967294, %rax      ## imm = 0xFFFFFFFF00000002
	movq	%rax, 16(%rdi)
	movabsq	$12884901887, %rax      ## imm = 0x2FFFFFFFF
	movq	%rax, 24(%rdi)
	movl	12(%rdi), %eax
	movl	%eax, 32(%rdi)
	movl	20(%rdi), %eax
	movl	%eax, 36(%rdi)
	leaq	Ltmp16(%rip), %rax
	jmp	LBB17_4
Ltmp16:                                 ## Block address taken
LBB17_3:                                ## %post_yield
	movl	20(%rdi), %eax
	movl	%eax, 28(%rdi)
	movl	24(%rdi), %eax
	movl	%eax, 32(%rdi)
	movl	16(%rdi), %eax
	movl	%eax, 36(%rdi)
	leaq	Ltmp17(%rip), %rax
LBB17_4:                                ## %post_yield
	movq	%rax, (%rdi)
	movl	$1, %eax
	retq
Ltmp17:                                 ## Block address taken
LBB17_5:                                ## %post_yield13
	movl	$2, 20(%rdi)
LBB17_6:                                ## %gen_exit
	xorl	%eax, %eax
	retq
	.cfi_endproc

	.globl	"_!squares_gen_init"
	.align	4, 0x90
"_!squares_gen_init":                   ## @"!squares_gen_init"
	.cfi_startproc
## BB#0:
	leaq	Ltmp15(%rip), %rax
	movq	%rax, (%rdi)
	movl	%esi, 8(%rdi)
	retq
	.cfi_endproc

	.globl	_times
	.align	4, 0x90
_times:                                 ## @times
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp18:
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	movl	%esi, (%rsp)
	movl	4(%rsp), %edi
	callq	"_*"
	popq	%rdx
	retq
	.cfi_endproc

	.globl	_plus
	.align	4, 0x90
_plus:                                  ## @plus
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp19:
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	movl	%esi, (%rsp)
	movl	4(%rsp), %edi
	callq	"_+"
	popq	%rdx
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_global_gen_fmt:                       ## @global_gen_fmt
	.asciz	"%d"


.subsections_via_symbols
