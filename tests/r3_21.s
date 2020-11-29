.globl main
.align 16
block8919:
	movq $44, %rax
	jmp mainconclusion
block8918:
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %r11
	movq 24(%r11), %rdx
	movq %rdx, %r11
	movq 8(%r11), %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp mainconclusion
block8920:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $519, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rcx
	cmpq $1, %rcx
	 je block8918
	jmp block8919
block8922:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block8920
block8921:
	movq $0, %rcx
	jmp block8920
block8923:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8921
	jmp block8922
block8924:
	movq $0, %rcx
	jmp block8923
block8925:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8923
mainstart:
	movq $40, %r12
	movq $1, %rbx
	movq $2, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8924
	jmp block8925
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

