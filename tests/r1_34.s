.globl main
.align 16
mainstart:
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rcx
	addq $1, %rcx
	addq %rcx, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rsi
	addq $1, %rsi
	addq %rsi, %rcx
	movq %rdx, %rsi
	addq %rcx, %rsi
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rcx
	addq $1, %rcx
	addq %rcx, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rdi
	addq $1, %rdi
	addq %rdi, %rcx
	addq %rcx, %rdx
	movq %rsi, %rcx
	addq %rdx, %rcx
	movq $1, %rsi
	addq $1, %rsi
	movq $1, %rdx
	addq $1, %rdx
	movq %rsi, %rdi
	addq %rdx, %rdi
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rsi
	addq $1, %rsi
	addq %rsi, %rdx
	addq %rdx, %rdi
	movq $1, %rsi
	addq $1, %rsi
	movq $1, %rdx
	addq $1, %rdx
	movq %rsi, %r8
	addq %rdx, %r8
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rsi
	addq $1, %rsi
	addq %rsi, %rdx
	movq %r8, %rsi
	addq %rdx, %rsi
	movq %rdi, %rdx
	addq %rsi, %rdx
	addq %rdx, %rcx
	movq $10, %rax
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

