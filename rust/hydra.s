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

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rax
Ltmp9:
	.cfi_def_cfa_offset 32
Ltmp10:
	.cfi_offset %rbx, -24
Ltmp11:
	.cfi_offset %rbp, -16
	movl	$4, %edi
	callq	_fac
	movl	%eax, %ebp
	movl	$20, %edi
	callq	_malloc
	movq	%rax, %rbx
	leaq	L_global_fmt(%rip), %rsi
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
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_global_fmt:                           ## @global_fmt
	.asciz	"fac(4) = %d"


.subsections_via_symbols
