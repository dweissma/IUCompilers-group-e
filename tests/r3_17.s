.globl main
.align 16
block77559:
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
block77561:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block77559
block77560:
	movq $0, %rcx
	jmp block77559
mainstart:
	movq $0, %r12
	movq $0, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block77560
	jmp block77561
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

