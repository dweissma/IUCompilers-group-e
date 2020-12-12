.globl main
.align 16
block148380:
	movq $777, %rax
	jmp mainconclusion
block148379:
	movq $42, %rax
	jmp mainconclusion
block148381:
	cmpq $42, %rcx
	 je block148379
	jmp block148380
block148383:
	movq $20, %rcx
	jmp block148381
block148382:
	jmp block148381
mainstart:
	movq $42, %rcx
	cmpq $42, %rcx
	 je block148382
	jmp block148383
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

