.globl main
.align 16
block71775:
	movq $42, %rax
	jmp mainconclusion
block71774:
	movq $777, %rax
	jmp mainconclusion
block71773:
	movq $42, %rax
	jmp mainconclusion
block71772:
	callq read_int
	movq %rax, %rcx
	cmpq $42, %rcx
	 je block71774
	jmp block71775
mainstart:
	movq $0, %rcx
	cmpq $1, %rcx
	 je block71772
	jmp block71773
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

