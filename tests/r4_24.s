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
block156824:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, 16(%r15)
	movq 16(%r15), %r11
	movq 8(%r11), %r14
	callq read_int
	movq %rax, %r13
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, %rcx
	movq 16(%r15), %rdi
	movq %r13, %rsi
	movq %r12, %rdx
	callq *%r14
	movq %rax, %rcx
	movq $42, %rax
	addq %rcx, %rax
	jmp mainconclusion
block156826:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156824
block156825:
	movq $0, %rdx
	jmp block156824
mainstart:
	leaq big(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block156825
	jmp block156826
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
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
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

