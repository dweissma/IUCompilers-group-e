.globl main
.align 16
block810805:
	movq $-1, %rdi
	callq exit
block810804:
	movq %rcx, %rax
	sarq $3, %rax
	jmp mainconclusion
mainstart:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block810804
	jmp block810805
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

