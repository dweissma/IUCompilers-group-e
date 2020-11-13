.globl main
.align 16
block82863:
	movq $42, %rax
	jmp mainconclusion
block82865:
	movq $42, %rax
	jmp mainconclusion
block82864:
	movq $0, %rax
	jmp mainconclusion
block82866:
	cmpq %rcx, %rdx
	 jl block82863
	jmp block82864
mainstart:
	movq $2, %rdx
	movq $2, %rcx
	cmpq %rdx, %rcx
	 je block82865
	jmp block82866
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

