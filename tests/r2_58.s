.globl main
.align 16
block76982:
	movq $42, %rax
	jmp mainconclusion
block76980:
	movq $42, %rax
	jmp mainconclusion
block76981:
	movq $0, %rax
	jmp mainconclusion
block76983:
	cmpq %rcx, %rdx
	 jl block76980
	jmp block76981
mainstart:
	movq $2, %rdx
	movq $2, %rcx
	cmpq %rdx, %rcx
	 je block76982
	jmp block76983
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

