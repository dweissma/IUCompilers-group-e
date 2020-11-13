.globl main
.align 16
mainstart:
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq %rdx, %rcx
	movq $1, %rax
	addq %rcx, %rax
	jmp mainconclusion
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

