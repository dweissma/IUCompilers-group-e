.globl main
.align 16
block38583:
	movq $777, %rax
	jmp mainconclusion
block38582:
	movq $42, %rax
	jmp mainconclusion
block38584:
	cmpq $1, %rcx
	 je block38582
	jmp block38583
block38586:
	movq $0, %rcx
	jmp block38584
block38585:
	movq $1, %rcx
	jmp block38584
block38588:
	movq $0, %rcx
	jmp block38584
block38587:
	cmpq $1, %rcx
	 je block38585
	jmp block38586
mainstart:
	movq $1, %rcx
	cmpq $1, %rcx
	 je block38587
	jmp block38588
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

