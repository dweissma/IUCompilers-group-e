.globl main
.align 16
block82856:
	movq $42, %rax
	jmp mainconclusion
block82855:
	movq $0, %rax
	jmp mainconclusion
block82858:
	cmpq %rcx, %rdx
	 setl %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block82855
	jmp block82856
block82857:
	movq $0, %rax
	jmp mainconclusion
mainstart:
	movq $2, %rdx
	movq $1, %rcx
	cmpq %rdx, %rcx
	 je block82857
	jmp block82858
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

