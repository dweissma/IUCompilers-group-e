.globl main
.align 16
block71870:
	movq $0, %rax
	jmp mainconclusion
block71869:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	movq $1, %rax
	cmpq $2, %rax
	 jl block71869
	jmp block71870
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

