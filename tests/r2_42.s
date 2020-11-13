.globl main
.align 16
block82818:
	movq $777, %rax
	jmp mainconclusion
block82815:
	movq $2, %rax
	addq %rcx, %rax
	jmp mainconclusion
block82817:
	movq $444, %rcx
	jmp block82815
block82816:
	movq $40, %rcx
	jmp block82815
block82819:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block82816
	jmp block82817
mainstart:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block82818
	jmp block82819
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

