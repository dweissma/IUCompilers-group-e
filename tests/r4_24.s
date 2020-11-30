.globl big
.align 16
bigstart:
	movq %rcx, %r8
	movq %rsi, %rdi
	addq %rdx, %rdi
	movq %rsi, %rcx
	addq %r8, %rcx
	addq %rcx, %rdi
	movq %r8, %rcx
	addq %rsi, %rcx
	movq %r8, %r9
	addq %rdx, %r9
	addq %r9, %rcx
	addq %rcx, %rdi
	movq %rdx, %rcx
	addq %rdx, %rcx
	addq %rsi, %rdx
	addq %rdx, %rcx
	movq %r8, %rdx
	addq %rsi, %rdx
	movq %r8, %rsi
	addq %r8, %rsi
	addq %rsi, %rdx
	addq %rdx, %rcx
	movq %rdi, %rax
	addq %rcx, %rax
	jmp bigconclusion
big:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp bigstart
bigconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block80059:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r13
	movq %r13, %r11
	movq 8(%r11), %rbx
	callq read_int
	movq %rax, -16(%rbp)
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, %rcx
	movq %r13, %rdi
	movq -16(%rbp), %rsi
	movq %r12, %rdx
	callq *%rbx
	movq %rax, %rcx
	movq $42, %rax
	addq %rcx, %rax
	jmp mainconclusion
block80061:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80059
block80060:
	movq $0, %rdx
	jmp block80059
mainstart:
	leaq big(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80060
	jmp block80061
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $24, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 

