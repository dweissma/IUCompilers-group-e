.globl main
.align 16
block30985:
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
	movq %rcx, %rdx
	movq %rdx, %r11
	movq $38, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq $4, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp mainconclusion
block30987:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block30985
block30986:
	movq $0, %rdx
	jmp block30985
mainstart:
	movq $0, %r12
	movq $0, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block30986
	jmp block30987
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

