.globl main
.align 16
block71761:
	movq $777, %rax
	jmp mainconclusion
block71760:
	movq $42, %rax
	jmp mainconclusion
block71762:
	cmpq $42, %rcx
	 je block71760
	jmp block71761
block71763:
	jmp block71762
block71764:
	movq $20, %rcx
	jmp block71762
mainstart:
	movq $42, %rcx
	cmpq $42, %rcx
	 je block71763
	jmp block71764
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

