.globl main
.align 16
block71879:
	movq $42, %rax
	jmp mainconclusion
block71878:
	movq $0, %rax
	jmp mainconclusion
block71877:
	cmpq %rcx, %rdx
	 setl %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block71878
	jmp block71879
block71876:
	movq $0, %rax
	jmp mainconclusion
mainstart:
	movq $2, %rdx
	movq $1, %rcx
	cmpq %rdx, %rcx
	 je block71876
	jmp block71877
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

