.globl main
.align 16
block8127:
	movq $777, %rax
	jmp mainconclusion
block8126:
	movq $42, %rax
	jmp mainconclusion
block8128:
	cmpq $1, %rcx
	 je block8126
	jmp block8127
block8132:
	movq $0, %rcx
	jmp block8128
block8129:
	movq $1, %rcx
	jmp block8128
block8130:
	movq $0, %rcx
	jmp block8128
block8131:
	cmpq $1, %rcx
	 je block8129
	jmp block8130
mainstart:
	movq $1, %rcx
	cmpq $1, %rcx
	 je block8131
	jmp block8132
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

