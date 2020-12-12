.globl main
.align 16
block810915:
	movq $-1, %rdi
	callq exit
block810914:
	movq %rcx, %rax
	sarq $3, %rax
	jmp mainconclusion
block810916:
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block810914
	jmp block810915
block810918:
	movq $777, %rcx
	salq $3, %rcx
	orq $1, %rcx
	jmp block810916
block810917:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	jmp block810916
mainstart:
	movq $0, %rdx
	salq $3, %rdx
	orq $4, %rdx
	movq $0, %rcx
	salq $3, %rcx
	orq $1, %rcx
	cmpq %rdx, %rcx
	 sete %al
	movzbq %al, %rcx
	movq %rcx, %rdx
	salq $3, %rdx
	orq $4, %rdx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 je block810917
	jmp block810918
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

