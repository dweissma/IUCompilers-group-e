.globl main
.align 16
block28410:
	movq $777, %rax
	jmp mainconclusion
block28409:
	movq $42, %rax
	jmp mainconclusion
block28411:
	cmpq $42, %rcx
	 je block28409
	jmp block28410
block28413:
	movq $20, %rcx
	jmp block28411
block28412:
	jmp block28411
mainstart:
	movq $42, %rcx
	cmpq $42, %rcx
	 je block28412
	jmp block28413
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

