	.file	"bomb.c"
	.text
	.comm	infile,8,8
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"%s: Error: Couldn't open %s\n"
.LC2:
	.string	"Usage: %s [<input_file>]\n"
	.align 8
.LC3:
	.string	"Welcome to my fiendish little bomb. You have 6 phases with"
	.align 8
.LC4:
	.string	"which to blow yourself up. Have a nice day!"
	.align 8
.LC5:
	.string	"Phase 1 defused. How about the next one?"
.LC6:
	.string	"That's number 2.  Keep going!"
.LC7:
	.string	"Halfway there!"
	.align 8
.LC8:
	.string	"So you got that one.  Try this one."
.LC9:
	.string	"Good work!  On to the next..."
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L2
	movq	stdin(%rip), %rax
	movq	%rax, infile(%rip)
	jmp	.L3
.L2:
	cmpl	$2, -20(%rbp)
	jne	.L4
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, infile(%rip)
	movq	infile(%rip), %rax
	testq	%rax, %rax
	jne	.L3
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$8, %edi
	call	exit@PLT
.L4:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$8, %edi
	call	exit@PLT
.L3:
	movl	$0, %eax
	call	initialize_bomb@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	call	read_line@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	phase_1@PLT
	movl	$0, %eax
	call	phase_defused@PLT
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	call	read_line@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	phase_2@PLT
	movl	$0, %eax
	call	phase_defused@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	call	read_line@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	phase_3@PLT
	movl	$0, %eax
	call	phase_defused@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	call	read_line@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	phase_4@PLT
	movl	$0, %eax
	call	phase_defused@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	call	read_line@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	phase_5@PLT
	movl	$0, %eax
	call	phase_defused@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	call	read_line@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	phase_6@PLT
	movl	$0, %eax
	call	phase_defused@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
