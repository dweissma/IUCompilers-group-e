.globl main
.align 16
block8260:
	movq $777, %rax
	jmp mainconclusion
block8261:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	movq $2, %rax
	cmpq $1, %rax
	 je block8260
	jmp block8261
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

