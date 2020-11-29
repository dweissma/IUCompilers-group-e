.globl main
.align 16
block8247:
	movq $0, %rax
	jmp mainconclusion
block8245:
	movq $0, %rax
	jmp mainconclusion
block8246:
	movq $42, %rax
	jmp mainconclusion
block8248:
	cmpq %rcx, %rdx
	 setl %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block8245
	jmp block8246
mainstart:
	movq $2, %rdx
	movq $1, %rcx
	cmpq %rdx, %rcx
	 je block8247
	jmp block8248
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

