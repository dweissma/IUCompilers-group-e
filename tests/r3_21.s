.globl main
.align 16
block31068:
	movq $44, %rax
	jmp mainconclusion
block31067:
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %r11
	movq 24(%r11), %rdx
	movq %rdx, %r11
	movq 8(%r11), %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp mainconclusion
block31069:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $519, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rcx
	cmpq $1, %rcx
	 je block31067
	jmp block31068
block31071:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block31069
block31070:
	movq $0, %rcx
	jmp block31069
block31072:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block31070
	jmp block31071
block31074:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block31072
block31073:
	movq $0, %rcx
	jmp block31072
mainstart:
	movq $40, %r13
	movq $1, %r12
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block31073
	jmp block31074
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

