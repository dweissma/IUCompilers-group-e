.globl main
.align 16
block71832:
	movq $2, %rax
	addq %rcx, %rax
	jmp mainconclusion
block71834:
	movq $444, %rcx
	jmp block71832
block71833:
	movq $40, %rcx
	jmp block71832
block71831:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block71833
	jmp block71834
block71830:
	movq $777, %rax
	jmp mainconclusion
mainstart:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block71830
	jmp block71831
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

