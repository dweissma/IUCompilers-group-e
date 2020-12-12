.globl main
.align 16
block148481:
	movq $42, %rax
	jmp mainconclusion
block148482:
	movq $777, %rax
	jmp mainconclusion
mainstart:
	movq $0, %rax
	cmpq $0, %rax
	 je block148481
	jmp block148482
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

