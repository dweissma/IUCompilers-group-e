.globl main
.align 16
mainstart:
	movq $30, %rcx
	addq $10, %rcx
	movq %rcx, %rax
	addq $2, %rax
	jmp mainconclusion
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

