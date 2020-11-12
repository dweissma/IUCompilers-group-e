.globl even
.align 16
block140521:
	leaq odd(%rip), %rdx
	movq $1, %rsi
	negq %rsi
	addq %rsi, %rcx
	movq %rdx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
block140520:
	movq $1, %rax
	jmp evenconclusion
evenstart:
	cmpq $0, %rcx
	 je block140520
	jmp block140521
even:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp evenstart
evenconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl odd
.align 16
block140523:
	leaq even(%rip), %rdx
	movq $1, %rsi
	negq %rsi
	addq %rsi, %rcx
	movq %rdx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
block140522:
	movq $0, %rax
	jmp oddconclusion
oddstart:
	cmpq $0, %rcx
	 je block140522
	jmp block140523
odd:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp oddstart
oddconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block140526:
	movq $0, %rax
	jmp mainconclusion
block140525:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	leaq even(%rip), %rdx
	movq $2, %rcx
	callq *%rdx
	movq %rax, %rcx
	cmpq $1, %rcx
	 je block140525
	jmp block140526
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

