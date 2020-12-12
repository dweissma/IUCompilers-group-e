.globl main
.align 16
block151897:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq $42, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block151899:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block151897
block151898:
	movq $0, %rdx
	jmp block151897
mainstart:
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block151898
	jmp block151899
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
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
	popq %rbp
	retq 

