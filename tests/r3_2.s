.globl main
.align 16
block150982:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $5, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp mainconclusion
block150983:
	movq $0, %rcx
	jmp block150982
block150984:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block150982
mainstart:
	movq $20, %r12
	movq $22, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block150983
	jmp block150984
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

