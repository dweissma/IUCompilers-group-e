.globl main
.align 16
block150969:
	movq $777, %rax
	jmp mainconclusion
block150968:
	movq $42, %rax
	jmp mainconclusion
block150970:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	cmpq %rcx, %rcx
	 je block150968
	jmp block150969
block150972:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150970
block150971:
	movq $0, %rcx
	jmp block150970
mainstart:
	movq $0, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block150971
	jmp block150972
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

