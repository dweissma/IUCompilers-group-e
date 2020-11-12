.globl tail__qzxsum
.align 16
block140233:
	leaq tail__qzxsum(%rip), %rsi
	movq $1, %r8
	negq %r8
	movq %rcx, %rdi
	addq %r8, %rdi
	movq %rcx, %r8
	addq %rdx, %r8
	movq %rdi, %rcx
	movq %r8, %rdx
	movq %rsi, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
block140232:
	movq %rdx, %rax
	jmp tail__qzxsumconclusion
tail__qzxsumstart:
	cmpq $0, %rcx
	 je block140232
	jmp block140233
tail__qzxsum:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp tail__qzxsumstart
tail__qzxsumconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
mainstart:
	leaq tail__qzxsum(%rip), %rsi
	movq $5, %rcx
	movq $0, %rdx
	callq *%rsi
	movq %rax, %rcx
	movq %rcx, %rax
	addq $27, %rax
	jmp mainconclusion
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

