.globl sum
.align 16
block140489:
	movq $1, %rax
	jmp sumconclusion
block140490:
	leaq sum(%rip), %rdx
	movq $1, %rsi
	negq %rsi
	movq %rbx, %rcx
	addq %rsi, %rcx
	callq *%rdx
	movq %rax, %rcx
	movq %rbx, %rax
	addq %rcx, %rax
	jmp sumconclusion
sumstart:
	movq %rcx, %rbx
	cmpq $1, %rbx
	 je block140489
	jmp block140490
sum:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	addq $0, %r15
	jmp sumstart
sumconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 
.globl main
.align 16
block140492:
	movq $777, %rax
	jmp mainconclusion
block140491:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	leaq sum(%rip), %rdx
	movq $3, %rcx
	callq *%rdx
	movq %rax, %rcx
	cmpq $6, %rcx
	 je block140491
	jmp block140492
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

