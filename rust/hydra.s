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
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
Ltmp16:
	.cfi_offset %rbx, -32
Ltmp17:
	.cfi_offset %r14, -24
	leaq	-40(%rbp), %r14
	xorl	%esi, %esi
	movl	$11, %edx
	movq	%r14, %rdi
	callq	"_!range_gen_init"
	jmp	LBB3_1
	.align	4, 0x90
LBB3_2:                                 ## %for_loop_init2
                                        ##   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbp), %edi
	callq	_print_int
	movq	%rsp, %rbx
	addq	$-32, %rbx
	movq	%rbx, %rsp
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	"_!range_gen_init"
	jmp	LBB3_3
	.align	4, 0x90
LBB3_4:                                 ## %for_loop_stmts4
                                        ##   in Loop: Header=BB3_3 Depth=2
	movl	16(%rbx), %edi
	callq	_print_int
LBB3_3:                                 ## %for_loop_check3
                                        ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	"_!range_gen_next"
	testl	%eax, %eax
	jne	LBB3_4
LBB3_1:                                 ## %for_loop_check
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	movq	%r14, %rdi
	callq	"_!range_gen_next"
	testl	%eax, %eax
	jne	LBB3_2
## BB#5:                                ## %for_loop_exit
	xorl	%eax, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_global_gen_fmt:                       ## @global_gen_fmt
	.asciz	"%d"


.subsections_via_symbols
