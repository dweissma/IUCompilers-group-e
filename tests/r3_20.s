.globl main
.align 16
block77616:
	movq $777, %rax
	jmp mainconclusion
block77617:
	movq $42, %rax
	jmp mainconclusion
block77618:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	cmpq %r12, %rcx
	 je block77616
	jmp block77617
block77620:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block77618
block77619:
	movq $0, %rcx
	jmp block77618
block77621:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block77619
	jmp block77620
block77623:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block77621
block77622:
	movq $0, %rcx
	jmp block77621
mainstart:
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block77622
	jmp block77623
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

