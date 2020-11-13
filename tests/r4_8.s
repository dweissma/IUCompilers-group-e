.globl even
.align 16
block89602:
	leaq odd(%rip), %rcx
	movq $1, %rsi
	negq %rsi
	addq %rsi, %rdx
	movq %rdx, %rdi
	movq %rcx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
block89601:
	movq $1, %rax
	jmp evenconclusion
evenstart:
	movq %rdi, %rdx
	cmpq $0, %rdx
	 je block89601
	jmp block89602
even:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp evenstart
evenconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl odd
.align 16
block89604:
	leaq even(%rip), %rcx
	movq $1, %rsi
	negq %rsi
	addq %rsi, %rdx
	movq %rdx, %rdi
	movq %rcx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
block89603:
	movq $0, %rax
	jmp oddconclusion
oddstart:
	movq %rdi, %rdx
	cmpq $0, %rdx
	 je block89603
	jmp block89604
odd:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp oddstart
oddconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block89607:
	movq $0, %rax
	jmp mainconclusion
block89606:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	leaq even(%rip), %rcx
	movq $2, %rdi
	callq *%rcx
	movq %rax, %rcx
	cmpq $1, %rcx
	 je block89606
	jmp block89607
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

