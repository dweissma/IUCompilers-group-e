.globl main
.align 16
block77708:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block77709:
	movq $0, %rdx
	jmp block77708
block77710:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block77708
mainstart:
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rsi
	cmpq %rsi, %rcx
	 jl block77709
	jmp block77710
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

