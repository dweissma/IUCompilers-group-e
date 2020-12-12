.globl main
.align 16
block810809:
	movq $-1, %rdi
	callq exit
block810808:
	movq %rdx, %rax
	sarq $3, %rax
	jmp mainconclusion
mainstart:
	movq $42, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block810808
	jmp block810809
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

