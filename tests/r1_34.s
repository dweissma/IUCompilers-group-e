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
	movq %rsi, %rdx
	addq %rcx, %rdx
	movq $1, %rsi
	addq $1, %rsi
	movq $1, %rcx
	addq $1, %rcx
	movq %rsi, %rdi
	addq %rcx, %rdi
	movq $1, %rsi
	addq $1, %rsi
	movq $1, %rcx
	addq $1, %rcx
	addq %rcx, %rsi
	movq %rdi, %rcx
	addq %rsi, %rcx
	addq %rcx, %rdx
	movq $1, %rsi
	addq $1, %rsi
	movq $1, %rcx
	addq $1, %rcx
	movq %rsi, %rdi
	addq %rcx, %rdi
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rsi
	addq $1, %rsi
	addq %rsi, %rcx
	addq %rcx, %rdi
	movq $1, %rsi
	addq $1, %rsi
	movq $1, %rcx
	addq $1, %rcx
	movq %rsi, %r8
	addq %rcx, %r8
	movq $1, %rsi
	addq $1, %rsi
	movq $1, %rcx
	addq $1, %rcx
	addq %rcx, %rsi
	movq %r8, %rcx
	addq %rsi, %rcx
	movq %rdi, %rsi
	addq %rcx, %rsi
	movq %rdx, %rcx
	addq %rsi, %rcx
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

