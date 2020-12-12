.globl main
.align 16
block148371:
	movq $777, %rax
	jmp mainconclusion
block148370:
	movq $42, %rax
	jmp mainconclusion
block148372:
	cmpq $1, %rcx
	 je block148370
	jmp block148371
block148376:
	movq $0, %rcx
	jmp block148372
block148375:
	movq $1, %rcx
	jmp block148372
block148374:
	movq $0, %rcx
	jmp block148372
block148373:
	cmpq $1, %rcx
	 je block148375
	jmp block148376
mainstart:
	movq $1, %rcx
	cmpq $1, %rcx
	 je block148373
	jmp block148374
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

