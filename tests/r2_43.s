.globl main
.align 16
block76939:
	movq $0, %rax
	jmp mainconclusion
block76938:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	callq read_int
	movq %rax, %rcx
	cmpq $1, %rcx
	 je block76938
	jmp block76939
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

