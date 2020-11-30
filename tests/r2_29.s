.globl main
.align 16
block28435:
	movq $777, %rax
	jmp mainconclusion
block28434:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, %rcx
	cmpq %r12, %rcx
	 je block28434
	jmp block28435
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	subq $8, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %rbp
	retq 

