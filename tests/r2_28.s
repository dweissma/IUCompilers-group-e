.globl main
.align 16
block148401:
	movq $0, %rax
	jmp mainconclusion
block148400:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	callq read_int
	movq %rax, %rbx
	callq read_int
	movq %rax, %rcx
	cmpq %rbx, %rcx
	 je block148400
	jmp block148401
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
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
	popq %rbx
	popq %rbp
	retq 

