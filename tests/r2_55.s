.globl main
.align 16
block8235:
	movq %rcx, %rax
	addq $10, %rax
	jmp mainconclusion
block8236:
	movq %r12, %rcx
	negq %rcx
	jmp block8235
block8237:
	movq %r13, %rcx
	jmp block8235
mainstart:
	movq $1, %r12
	movq $2, %r13
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block8236
	jmp block8237
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

