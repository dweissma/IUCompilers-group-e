.globl main
.align 16
block28512:
	movq %rcx, %rax
	addq $10, %rax
	jmp mainconclusion
block28514:
	movq %r13, %rcx
	jmp block28512
block28513:
	movq %r12, %rcx
	negq %rcx
	jmp block28512
mainstart:
	movq $1, %r12
	movq $2, %r13
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block28513
	jmp block28514
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r13
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

