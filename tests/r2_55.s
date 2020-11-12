.globl main
.align 16
block38691:
	movq %rcx, %rax
	addq $10, %rax
	jmp mainconclusion
block38693:
	movq %r12, %rcx
	jmp block38691
block38692:
	movq %rbx, %rcx
	negq %rcx
	jmp block38691
mainstart:
	movq $1, %rbx
	movq $2, %r12
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block38692
	jmp block38693
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 

