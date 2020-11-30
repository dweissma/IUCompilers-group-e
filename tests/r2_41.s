.globl main
.align 16
block28470:
	movq $2, %rax
	addq %rcx, %rax
	jmp mainconclusion
block28472:
	movq $444, %rcx
	jmp block28470
block28471:
	movq $40, %rcx
	jmp block28470
block28474:
	movq $1, %rcx
	addq $1, %rcx
	cmpq $2, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block28471
	jmp block28472
block28473:
	movq $777, %rax
	jmp mainconclusion
mainstart:
	movq $0, %rax
	cmpq $1, %rax
	 je block28473
	jmp block28474
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

