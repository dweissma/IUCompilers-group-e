.globl main
.align 16
block159075:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $42, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	jmp *%rax
block159077:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159075
block159076:
	movq $0, %rdx
	jmp block159075
mainstart:
	leaq lambda159066(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159076
	jmp block159077
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
.globl lambda159066
.align 16
lambda159066start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda159066conclusion
lambda159066:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159066start
lambda159066conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

