.globl main
.align 16
block30953:
	movq %r14, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block30955:
	movq %rbx, %r11
	movq $42, 8(%r11)
	movq $0, %rcx
	jmp block30953
block30954:
	movq %r14, %r11
	movq $42, 8(%r11)
	movq $0, %rcx
	jmp block30953
block30956:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block30954
	jmp block30955
block30958:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block30956
block30957:
	movq $0, %rcx
	jmp block30956
block30959:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $1, -32(%rbp)
	movq $2, -24(%rbp)
	movq $3, %rbx
	movq $4, -16(%rbp)
	movq $5, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30957
	jmp block30958
block30961:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30959
block30960:
	movq $0, %rcx
	jmp block30959
mainstart:
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30960
	jmp block30961
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $40, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $40, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 

