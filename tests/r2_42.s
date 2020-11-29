.globl main
.align 16
block76932:
	movq $2, %rax
	addq %rcx, %rax
	jmp mainconclusion
block76934:
	movq $444, %rcx
	jmp block76932
block76933:
	movq $40, %rcx
	jmp block76932
block76936:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block76933
	jmp block76934
block76935:
	movq $777, %rax
	jmp mainconclusion
mainstart:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block76935
	jmp block76936
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

