.globl main
.align 16
block148515:
	movq $777, %rax
	jmp mainconclusion
block148514:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	movq $1, %rax
	cmpq $1, %rax
	 je block148514
	jmp block148515
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

