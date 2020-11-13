.globl sum
.align 16
block89571:
	leaq sum(%rip), %rcx
	movq $1, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %rcx
	movq %r12, %rax
	addq %rcx, %rax
	jmp sumconclusion
block89570:
	movq $1, %rax
	jmp sumconclusion
sumstart:
	movq %rdi, %r12
	cmpq $1, %r12
	 je block89570
	jmp block89571
sum:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp sumstart
sumconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %rbp
	retq 
.globl main
.align 16
block89573:
	movq $777, %rax
	jmp mainconclusion
block89572:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	leaq sum(%rip), %rcx
	movq $3, %rdi
	callq *%rcx
	movq %rax, %rcx
	cmpq $6, %rcx
	 je block89572
	jmp block89573
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

