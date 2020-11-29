.globl main
.align 16
block76973:
	movq $42, %rax
	jmp mainconclusion
block76974:
	movq $0, %rax
	jmp mainconclusion
block76972:
	movq $0, %rax
	jmp mainconclusion
block76975:
	cmpq %rcx, %rdx
	 setl %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block76972
	jmp block76973
mainstart:
	movq $2, %rdx
	movq $1, %rcx
	cmpq %rdx, %rcx
	 je block76974
	jmp block76975
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

