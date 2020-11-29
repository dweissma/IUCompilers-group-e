.globl main
.align 16
block76962:
	movq %rcx, %rax
	addq $10, %rax
	jmp mainconclusion
block76964:
	movq %r13, %rcx
	jmp block76962
block76963:
	movq %rbx, %rcx
	negq %rcx
	jmp block76962
mainstart:
	movq $1, %rbx
	movq $2, %r13
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block76963
	jmp block76964
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r13
	subq $0, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r13
	popq %rbp
	retq 

