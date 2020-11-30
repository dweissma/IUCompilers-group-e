.globl main
.align 16
block31043:
	movq $42, %rax
	jmp mainconclusion
block31042:
	movq $777, %rax
	jmp mainconclusion
block31044:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	cmpq %r13, %rcx
	 je block31042
	jmp block31043
block31046:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block31044
block31045:
	movq $0, %rcx
	jmp block31044
block31047:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block31045
	jmp block31046
block31049:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block31047
block31048:
	movq $0, %rcx
	jmp block31047
mainstart:
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block31048
	jmp block31049
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r13
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
	popq %r13
	popq %rbp
	retq 

