.globl id
.align 16
idstart:
	movq %rcx, %rax
	jmp idconclusion
id:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp idstart
idconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl inc
.align 16
incstart:
	movq %rcx, %rax
	addq $1, %rax
	jmp incconclusion
inc:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp incstart
incconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
mainstart:
	leaq id(%rip), %rdx
	leaq inc(%rip), %rcx
	callq *%rdx
	movq %rax, %rdx
	movq $41, %rcx
	movq %rdx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
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

