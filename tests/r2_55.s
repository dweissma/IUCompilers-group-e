.globl main
.align 16
block148487:
	movq %rcx, %rax
	addq $10, %rax
	jmp mainconclusion
block148489:
	movq %r12, %rcx
	jmp block148487
block148488:
	movq %rbx, %rcx
	negq %rcx
	jmp block148487
mainstart:
	movq $1, %rbx
	movq $2, %r12
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block148488
	jmp block148489
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

