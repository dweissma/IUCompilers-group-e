.globl main
.align 16
mainstart:
	movq $20, %rcx
	addq $1, %rcx
	movq $10, %rsi
	addq %rcx, %rsi
	movq $2, %rdx
	addq $4, %rdx
	movq $5, %rcx
	addq %rdx, %rcx
	movq %rsi, %rax
	addq %rcx, %rax
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

