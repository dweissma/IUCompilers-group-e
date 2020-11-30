.globl main
.align 16
mainstart:
	movq $20, %rdx
	addq $1, %rdx
	movq $10, %rcx
	addq %rdx, %rcx
	movq $2, %rsi
	addq $4, %rsi
	movq $5, %rdx
	addq %rsi, %rdx
	movq %rcx, %rax
	addq %rdx, %rax
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

