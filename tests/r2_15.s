.globl main
.align 16
block82746:
	movq $777, %rax
	jmp mainconclusion
block82745:
	movq $42, %rax
	jmp mainconclusion
block82747:
	cmpq $42, %rcx
	 je block82745
	jmp block82746
block82749:
	movq $20, %rcx
	jmp block82747
block82748:
	jmp block82747
mainstart:
	movq $42, %rcx
	cmpq $42, %rcx
	 je block82748
	jmp block82749
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

