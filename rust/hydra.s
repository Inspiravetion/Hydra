	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fac
	.align	4, 0x90
_fac:                                   ## @fac
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbx
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movl	$1, %eax
	testl	%ebx, %ebx
	je	LBB0_2
## BB#1:                                ## %if_false
	leal	-1(%rbx), %edi
	callq	_fac
	imull	%eax, %ebx
	movl	%ebx, %eax
LBB0_2:                                 ## %end
	popq	%rbx
	ret
	.cfi_endproc

	.globl	_range_gen_next
	.align	4, 0x90
_range_gen_next:                        ## @range_gen_next
	.cfi_startproc
## BB#0:                                ## %entry
	jmpq	*(%rdi)
Ltmp4:                                  ## Block address taken
LBB1_1:                                 ## %incr
	incl	8(%rdi)
Ltmp5:                                  ## Block address taken
LBB1_2:                                 ## %cond
	movl	8(%rdi), %eax
	cmpl	12(%rdi), %eax
	jge	LBB1_4
## BB#3:                                ## %yield1
	leaq	Ltmp4(%rip), %rax
	movq	%rax, (%rdi)
	movl	$1, %eax
	ret
LBB1_4:                                 ## %exit
	xorl	%eax, %eax
	ret
	.cfi_endproc

	.globl	_range_gen_init
	.align	4, 0x90
_range_gen_init:                        ## @range_gen_init
	.cfi_startproc
## BB#0:
	leaq	Ltmp5(%rip), %rax
	movq	%rax, (%rdi)
	movl	%esi, 8(%rdi)
	movl	%edx, 12(%rdi)
	ret
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp12:
	.cfi_offset %rbx, -48
Ltmp13:
	.cfi_offset %r12, -40
Ltmp14:
	.cfi_offset %r14, -32
Ltmp15:
	.cfi_offset %r15, -24
	movl	$4, %edi
	callq	_fac
	movl	%eax, %r14d
	movl	$20, %edi
	callq	_malloc
	movq	%rax, %rbx
	leaq	L_global_fmt(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	_sprintf
	movq	%rbx, %rdi
	callq	_puts
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	_range_gen_init
	leaq	L_global_gen_fmt(%rip), %r14
	jmp	LBB3_1
	.align	4, 0x90
LBB3_2:                                 ## %loop_stmts
                                        ##   in Loop: Header=BB3_1 Depth=1
	movl	8(%r15), %r12d
	movl	$20, %edi
	callq	_malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	_sprintf
	movq	%rbx, %rdi
	callq	_puts
LBB3_1:                                 ## %loop_check
                                        ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_range_gen_next
	testl	%eax, %eax
	jne	LBB3_2
## BB#3:                                ## %exit
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
L_global_fmt:                           ## @global_fmt
	.asciz	"fac(4) = %d"

	.align	4                       ## @global_gen_fmt
L_global_gen_fmt:
	.asciz	"generator returned => %d"


.subsections_via_symbols
