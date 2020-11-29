.globl main
.align 16
block8136:
	movq $777, %rax
	jmp mainconclusion
block8135:
	movq $42, %rax
	jmp mainconclusion
block8137:
	cmpq $42, %rcx
	 je block8135
	jmp block8136
block8139:
	movq $20, %rcx
	jmp block8137
block8138:
	jmp block8137
mainstart:
	movq $42, %rcx
	cmpq $42, %rcx
	 je block8138
	jmp block8139
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

