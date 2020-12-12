.globl main
.align 16
block810819:
	movq $-1, %rdi
	callq exit
block810818:
	movq %rcx, %rax
	sarq $3, %rax
	jmp mainconclusion
block810820:
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block810818
	jmp block810819
block810822:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	jmp block810820
block810821:
	movq $777, %rcx
	salq $3, %rcx
	orq $1, %rcx
	jmp block810820
block810823:
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 je block810821
	jmp block810822
block810825:
	movq $1, %rdx
	salq $3, %rdx
	orq $4, %rdx
	jmp block810823
block810824:
	movq $0, %rdx
	salq $3, %rdx
	orq $4, %rdx
	jmp block810823
mainstart:
	movq $1, %rcx
	salq $3, %rcx
	orq $4, %rcx
	movq %rcx, %rdx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 je block810824
	jmp block810825
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

