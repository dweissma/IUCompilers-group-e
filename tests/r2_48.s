.globl main
.align 16
block8228:
	movq $777, %rax
	jmp mainconclusion
block8227:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	movq $1, %rbx
	callq read_int
	movq %rax, %rcx
	cmpq %rbx, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block8227
	jmp block8228
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 

