	.file	"main.c"
	.globl	x
	.data
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.long	257
	.comm	y,2,2
	.globl	z
	.align 2
	.type	z, @object
	.size	z, 2
z:
	.value	2
	.section	.rodata
.LC0:
	.string	"x=%u,z=%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	p1
	movzwl	z(%rip), %eax
	movswl	%ax, %edx
	movl	x(%rip), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
