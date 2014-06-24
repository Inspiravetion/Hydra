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

	.globl	"_<"
	.align	4, 0x90
"_<":                                   ## @"<"
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	setl	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc

	.globl	"_>"
	.align	4, 0x90
"_>":                                   ## @">"
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	setg	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc

	.globl	"_<="
	.align	4, 0x90
"_<=":                                  ## @"<="
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	setle	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc

	.globl	"_>="
	.align	4, 0x90
"_>=":                                  ## @">="
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	setge	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc

	.globl	"_=="
	.align	4, 0x90
"_==":                                  ## @"=="
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc

	.globl	"_!="
	.align	4, 0x90
"_!=":                                  ## @"!="
	.cfi_startproc
## BB#0:
	cmpl	%esi, %edi
	setne	%al
	movzbl	%al, %eax
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
	jmp	LBB15_1
	.align	4, 0x90
LBB15_8:                                ## %for_loop_exit7
                                        ##   in Loop: Header=BB15_1 Depth=1
	movl	$100, -60(%rbp)
	movl	$100, %edi
	callq	_print_int
LBB15_1:                                ## %for_loop_check
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_6 Depth 2
	movq	%r14, %rdi
	callq	"_!range_gen_next"
	testl	%eax, %eax
	je	LBB15_2
## BB#5:                                ## %for_loop_init4
                                        ##   in Loop: Header=BB15_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
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
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$-1, -16(%rax)
	jmp	LBB15_6
	.align	4, 0x90
LBB15_7:                                ## %for_loop_stmts6
                                        ##   in Loop: Header=BB15_6 Depth=2
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
LBB15_6:                                ## %for_loop_check5
                                        ##   Parent Loop BB15_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	"_!range_gen_next"
	testl	%eax, %eax
	jne	LBB15_7
	jmp	LBB15_8
LBB15_2:                                ## %for_loop_exit
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movl	$11, -16(%rbx)
	movq	%rsp, %r14
	leaq	-16(%r14), %rax
	movq	%rax, %rsp
	movl	$12, -16(%r14)
	movl	-16(%rbx), %edi
	movl	$12, %esi
	callq	"_+"
	movl	%eax, %edi
	callq	_print_int
	movl	$21, -16(%rbx)
	movl	$22, -16(%r14)
	movl	-16(%rbx), %edi
	movl	$22, %esi
	callq	"_+"
	movl	%eax, %edi
	callq	_print_int
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movl	$0, -16(%rax)
	jmp	LBB15_3
	.align	4, 0x90
LBB15_4:                                ## %while_loop_stmts
                                        ##   in Loop: Header=BB15_3 Depth=1
	movl	$1000000, %edi          ## imm = 0xF4240
	callq	_print_int
LBB15_3:                                ## %while_loop_check
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%rbx), %edi
	movl	$5, %esi
	callq	"_<="
	testl	%eax, %eax
	jne	LBB15_4
## BB#9:                                ## %while_loop_exit
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
