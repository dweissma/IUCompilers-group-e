.globl main
.align 16
block148508:
	movq $0, %rax
	jmp mainconclusion
block148507:
	movq $42, %rax
	jmp mainconclusion
block148506:
	cmpq %rcx, %rdx
	 jl block148507
	jmp block148508
block148505:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	movq $2, %rdx
	movq $2, %rcx
	cmpq %rdx, %rcx
	 je block148505
	jmp block148506
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

