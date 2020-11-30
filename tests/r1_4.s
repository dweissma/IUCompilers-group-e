.globl main
.align 16
mainstart:
	movq $10, %rsi
	addq $11, %rsi
	movq $4, %rdx
	negq %rdx
	movq $25, %rcx
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

