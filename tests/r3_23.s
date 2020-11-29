.globl main
.align 16
block77691:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $135, 0(%r11)
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq $42, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block77693:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block77691
block77692:
	movq $0, %rcx
	jmp block77691
block77694:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rax
	movq %rax, 16(%r15)
	movq $99, %r14
	movq $100, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block77692
	jmp block77693
block77696:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block77694
block77695:
	movq $0, %rcx
	jmp block77694
block77697:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $98, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block77695
	jmp block77696
block77699:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block77697
block77698:
	movq $0, %rcx
	jmp block77697
mainstart:
	movq $777, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block77698
	jmp block77699
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %r14
	popq %rbp
	retq 

