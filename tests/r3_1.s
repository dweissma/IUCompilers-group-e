.globl main
.align 16
block150395:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq $42, %rax
	jmp mainconclusion
block150396:
	movq $0, %rdx
	jmp block150395
block150397:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block150395
mainstart:
	movq $1, %r12
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block150396
	jmp block150397
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
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
	popq %rbx
	popq %r12
	popq %rbp
	retq 

