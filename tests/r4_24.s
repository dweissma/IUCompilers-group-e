.globl big
.align 16
bigstart:
	movq %rcx, %rdi
	movq %rsi, %r8
	addq %rdx, %r8
	movq %rsi, %rcx
	addq %rdi, %rcx
	addq %rcx, %r8
	movq %rdi, %rcx
	addq %rsi, %rcx
	movq %rdi, %r9
	addq %rdx, %r9
	addq %r9, %rcx
	addq %rcx, %r8
	movq %rdx, %rcx
	addq %rdx, %rcx
	addq %rsi, %rdx
	addq %rdx, %rcx
	movq %rdi, %rdx
	addq %rsi, %rdx
	movq %rdi, %rsi
	addq %rdi, %rsi
	addq %rsi, %rdx
	addq %rdx, %rcx
	movq %r8, %rax
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
block12518:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	callq read_int
	movq %rax, %r13
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, %rcx
	movq %r14, %rdi
	movq %r13, %rsi
	movq %r12, %rdx
	callq *-16(%rbp)
	movq %rax, %rcx
	movq $42, %rax
	addq %rcx, %rax
	jmp mainconclusion
block12520:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12518
block12519:
	movq $0, %rcx
	jmp block12518
block12521:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq big(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12519
	jmp block12520
block12523:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12521
block12522:
	movq $0, %rcx
	jmp block12521
mainstart:
	leaq big(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12522
	jmp block12523
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
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
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

