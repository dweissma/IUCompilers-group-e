.globl main
.align 16
block8253:
	movq $42, %rax
	jmp mainconclusion
block8255:
	movq $42, %rax
	jmp mainconclusion
block8254:
	movq $0, %rax
	jmp mainconclusion
block8256:
	cmpq %rcx, %rdx
	 jl block8253
	jmp block8254
mainstart:
	movq $2, %rdx
	movq $2, %rcx
	cmpq %rdx, %rcx
	 je block8255
	jmp block8256
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

