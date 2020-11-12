.globl tailrecur
.align 16
block140500:
	leaq tailrecur(%rip), %rdx
	movq $1, %rsi
	negq %rsi
	addq %rsi, %rcx
	movq %rdx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
block140499:
	movq $0, %rax
	jmp tailrecurconclusion
tailrecurstart:
	cmpq $0, %rcx
	 je block140499
	jmp block140500
tailrecur:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp tailrecurstart
tailrecurconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block140502:
	movq $777, %rax
	jmp mainconclusion
block140501:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	leaq tailrecur(%rip), %rdx
	movq $99, %rcx
	callq *%rdx
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block140501
	jmp block140502
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

