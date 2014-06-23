	.section	__TEXT,__text,regular,pure_instructions
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
	ret
LBB0_4:                                 ## %exit
	xorl	%eax, %eax
	ret
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
	ret
	.cfi_endproc

	.globl	_print_int
	.align	4, 0x90
_print_int:                             ## @print_int
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
Ltmp7:
	.cfi_def_cfa_offset 32
Ltmp8:
	.cfi_offset %rbx, -24
Ltmp9:
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
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.cfi_endproc

	.globl	"_+"
	.align	4, 0x90
"_+":                                   ## @"+"
	.cfi_startproc
## BB#0:
                                        ## kill: ESI<def> ESI<kill> RSI<def>
                                        ## kill: EDI<def> EDI<kill> RDI<def>
	leal	(%rdi,%rsi), %eax
	ret
	.cfi_endproc

	.globl	"_-"
	.align	4, 0x90
"_-":                                   ## @-
	.cfi_startproc
## BB#0:
	subl	%esi, %edi
	movl	%edi, %eax
	ret
	.cfi_endproc

	.globl	"_*"
	.align	4, 0x90
"_*":                                   ## @"*"
	.cfi_startproc
## BB#0:
	imull	%esi, %edi
	movl	%edi, %eax
	ret
	.cfi_endproc

	.globl	"_/"
	.align	4, 0x90
"_/":                                   ## @"/"
	.cfi_startproc
## BB#0:
	movl	%edi, %eax
	cltd
	idivl	%esi
	ret
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
	ret
	.cfi_endproc

	.globl	_times
	.align	4, 0x90
_times:                                 ## @times
	.cfi_startproc
## BB#0:
	imull	%esi, %edi
	movl	%edi, %eax
	ret
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %for_loop_init
	pushq	%rbp
Ltmp13:
	.cfi_def_cfa_offset 16
Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp15:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
Ltmp16:
	.cfi_offset %rbx, -48
Ltmp17:
	.cfi_offset %r12, -40
Ltmp18:
	.cfi_offset %r14, -32
Ltmp19:
	.cfi_offset %r15, -24
	movl	$2, %edi
	movl	$3, %esi
	callq	"_*"
	movl	$2, %esi
	movl	%eax, %edi
	callq	"_/"
	movl	$1, %esi
	movl	%eax, %edi
	callq	"_-"
	movl	$2, %esi
	movl	%eax, %edi
	callq	_times
	movl	$1, %edi
	movl	%eax, %esi
	callq	"_+"
	leaq	-56(%rbp), %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	"_!range_gen_init"
	movl	$-1, -60(%rbp)
	jmp	LBB9_1
	.align	4, 0x90
LBB9_2:                                 ## %for_loop_init5
                                        ##   in Loop: Header=BB9_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	movl	$10, -16(%rax)
	movl	-60(%rbp), %edi
	callq	_print_int
	movl	-60(%rbp), %edx
	incl	%edx
	movq	%rsp, %rbx
	addq	$-32, %rbx
	movq	%rbx, %rsp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	"_!range_gen_init"
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$-1, -16(%rax)
	jmp	LBB9_3
	.align	4, 0x90
LBB9_4:                                 ## %for_loop_stmts7
                                        ##   in Loop: Header=BB9_3 Depth=2
	movl	16(%rbx), %edi
	movl	%edi, (%r12)
	movl	$1, %esi
	callq	"_+"
	movl	$1, %esi
	movl	%eax, %edi
	callq	"_-"
	movl	(%r15), %esi
	movl	%eax, %edi
	callq	"_+"
	movl	%eax, %edi
	callq	_print_int
LBB9_3:                                 ## %for_loop_check6
                                        ##   Parent Loop BB9_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	"_!range_gen_next"
	testl	%eax, %eax
	jne	LBB9_4
LBB9_1:                                 ## %for_loop_check
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_3 Depth 2
	movq	%r14, %rdi
	callq	"_!range_gen_next"
	testl	%eax, %eax
	jne	LBB9_2
## BB#5:                                ## %while_loop_exit
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$11, -16(%rax)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	$12, -16(%rcx)
	movl	-16(%rax), %edi
	movl	$12, %esi
	callq	"_+"
	movl	%eax, %edi
	callq	_print_int
	xorl	%eax, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_global_gen_fmt:                       ## @global_gen_fmt
	.asciz	"%d"


.subsections_via_symbols
