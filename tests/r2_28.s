.globl main
.align 16
block76884:
	movq $0, %rax
	jmp mainconclusion
block76883:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, %rcx
	cmpq %r12, %rcx
	 je block76883
	jmp block76884
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

