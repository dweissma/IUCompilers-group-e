.globl main
.align 16
block811819:
	movq $-1, %rdi
	callq exit
block811818:
	movq %rcx, %rax
	sarq $3, %rax
	jmp mainconclusion
block811820:
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block811818
	jmp block811819
block811822:
	movq $0, %rcx
	salq $3, %rcx
	orq $1, %rcx
	jmp block811820
block811821:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	jmp block811820
mainstart:
	movq $1, %rdx
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
	 je block811821
	jmp block811822
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

