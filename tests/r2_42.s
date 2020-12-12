.globl main
.align 16
block148459:
	movq $2, %rax
	addq %rcx, %rax
	jmp mainconclusion
block148461:
	movq $444, %rcx
	jmp block148459
block148457:
	movq $777, %rax
	jmp mainconclusion
block148460:
	movq $40, %rcx
	jmp block148459
block148458:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block148460
	jmp block148461
mainstart:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block148457
	jmp block148458
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

