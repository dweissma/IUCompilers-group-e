.globl main
.align 16
block38646:
	movq $777, %rax
	jmp mainconclusion
block38645:
	callq read_int
	jmp mainconclusion
mainstart:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block38645
	jmp block38646
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

