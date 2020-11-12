.globl main
.align 16
block38710:
	movq $0, %rax
	jmp mainconclusion
block38709:
	movq $42, %rax
	jmp mainconclusion
block38712:
	cmpq %rcx, %rdx
	 jl block38709
	jmp block38710
block38711:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	movq $2, %rdx
	movq $2, %rcx
	cmpq %rdx, %rcx
	 je block38711
	jmp block38712
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

