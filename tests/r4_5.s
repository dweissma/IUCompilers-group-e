.globl tailrecur
.align 16
block89580:
	movq $0, %rax
	jmp tailrecurconclusion
block89581:
	leaq tailrecur(%rip), %rcx
	movq $1, %rsi
	negq %rsi
	addq %rsi, %rdx
	movq %rdx, %rdi
	movq %rcx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
tailrecurstart:
	movq %rdi, %rdx
	cmpq $0, %rdx
	 je block89580
	jmp block89581
tailrecur:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tailrecurstart
tailrecurconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block89583:
	movq $777, %rax
	jmp mainconclusion
block89582:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	leaq tailrecur(%rip), %rcx
	movq $99, %rdi
	callq *%rcx
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block89582
	jmp block89583
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

