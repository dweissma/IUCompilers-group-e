.globl main
.align 16
block71886:
	movq $42, %rax
	jmp mainconclusion
block71884:
	movq $42, %rax
	jmp mainconclusion
block71887:
	movq $0, %rax
	jmp mainconclusion
block71885:
	cmpq %rcx, %rdx
	 jl block71886
	jmp block71887
mainstart:
	movq $2, %rdx
	movq $2, %rcx
	cmpq %rdx, %rcx
	 je block71884
	jmp block71885
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

