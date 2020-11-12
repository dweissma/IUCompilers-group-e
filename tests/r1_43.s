.globl main
.align 16
mainstart:
	movq $1, %rcx
	movq $46, %rdx
	addq $7, %rcx
	movq $4, %rsi
	addq %rcx, %rsi
	addq %rdx, %rcx
	movq %rsi, %rdx
	negq %rdx
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

