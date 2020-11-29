.globl main
.align 16
block76863:
	movq $777, %rax
	jmp mainconclusion
block76862:
	movq $42, %rax
	jmp mainconclusion
block76864:
	cmpq $42, %rcx
	 je block76862
	jmp block76863
block76865:
	jmp block76864
block76866:
	movq $20, %rcx
	jmp block76864
mainstart:
	movq $42, %rcx
	cmpq $42, %rcx
	 je block76865
	jmp block76866
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

