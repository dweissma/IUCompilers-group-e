.globl main
.align 16
block76945:
	movq $42, %rax
	jmp mainconclusion
block76944:
	movq $0, %rax
	jmp mainconclusion
block76947:
	movq $42, %rax
	jmp mainconclusion
block76946:
	callq read_int
	movq %rax, %rcx
	cmpq $1, %rcx
	 je block76944
	jmp block76945
mainstart:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block76946
	jmp block76947
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
