.globl main
.align 16
block28531:
	movq $0, %rax
	jmp mainconclusion
block28530:
	movq $42, %rax
	jmp mainconclusion
block28533:
	cmpq %rcx, %rdx
	 jl block28530
	jmp block28531
block28532:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	movq $2, %rdx
	movq $2, %rcx
	cmpq %rdx, %rcx
	 je block28532
	jmp block28533
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

