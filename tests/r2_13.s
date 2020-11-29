.globl main
.align 16
block76854:
	movq $777, %rax
	jmp mainconclusion
block76853:
	movq $42, %rax
	jmp mainconclusion
block76855:
	cmpq $1, %rcx
	 je block76853
	jmp block76854
block76856:
	movq $1, %rcx
	jmp block76855
block76857:
	movq $0, %rcx
	jmp block76855
block76858:
	cmpq $1, %rcx
	 je block76856
	jmp block76857
block76859:
	movq $0, %rcx
	jmp block76855
mainstart:
	movq $1, %rcx
	cmpq $1, %rcx
	 je block76858
	jmp block76859
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

