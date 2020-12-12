.globl main
.align 16
mainstart:
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq %rdx, %rsi
	addq %rcx, %rsi
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rdx
	addq $1, %rdx
	addq %rdx, %rcx
	addq %rcx, %rsi
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rdx
	addq $1, %rdx
	addq %rdx, %rcx
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rdi
	addq $1, %rdi
	addq %rdi, %rdx
	addq %rdx, %rcx
	addq %rcx, %rsi
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rdx
	addq $1, %rdx
	addq %rdx, %rcx
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rdi
	addq $1, %rdi
	addq %rdi, %rdx
	addq %rdx, %rcx
	movq $1, %rdi
	addq $1, %rdi
	movq $1, %rdx
	addq $1, %rdx
	movq %rdi, %r8
	addq %rdx, %r8
	movq $1, %rdi
	addq $1, %rdi
	movq $1, %rdx
	addq $1, %rdx
	addq %rdx, %rdi
	movq %r8, %rdx
	addq %rdi, %rdx
	addq %rdx, %rcx
	movq %rsi, %rdx
	addq %rcx, %rdx
	movq $10, %rax
	addq %rdx, %rax
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

