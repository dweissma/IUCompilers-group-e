.globl tail__qzxsum
.align 16
block89312:
	leaq tail__qzxsum(%rip), %rcx
	movq $1, %r8
	negq %r8
	movq %rdx, %rdi
	addq %r8, %rdi
	addq %rsi, %rdx
	movq %rdx, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
block89311:
	movq %rsi, %rax
	jmp tail__qzxsumconclusion
tail__qzxsumstart:
	movq %rdi, %rdx
	cmpq $0, %rdx
	 je block89311
	jmp block89312
tail__qzxsum:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
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
	leaq tail__qzxsum(%rip), %rcx
	movq $5, %rdi
	movq $0, %rsi
	callq *%rcx
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

