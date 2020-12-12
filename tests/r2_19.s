.globl main
.align 16
block148392:
	movq $42, %rax
	jmp mainconclusion
block148393:
	movq $777, %rax
	jmp mainconclusion
block148394:
	movq $42, %rax
	jmp mainconclusion
block148391:
	callq read_int
	movq %rax, %rcx
	cmpq $42, %rcx
	 je block148393
	jmp block148394
mainstart:
	movq $0, %rcx
	cmpq $1, %rcx
	 je block148391
	jmp block148392
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

