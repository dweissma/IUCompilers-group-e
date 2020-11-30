.globl main
.align 16
block71845:
	movq $42, %rax
	jmp mainconclusion
block71844:
	movq $0, %rax
	jmp mainconclusion
block71843:
	movq $42, %rax
	jmp mainconclusion
block71842:
	callq read_int
	movq %rax, %rcx
	cmpq $1, %rcx
	 je block71844
	jmp block71845
mainstart:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block71842
	jmp block71843
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

