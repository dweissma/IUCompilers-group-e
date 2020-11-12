.globl id
.align 16
idstart:
	movq %rcx, %rax
	jmp idconclusion
id:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp idstart
idconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl f
.align 16
fstart:
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp fconclusion
f:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block140321:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	callq *%r12
	movq %rax, %rdx
	movq $42, %rcx
	movq %rdx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block140323:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140321
block140322:
	movq $0, %rdx
	jmp block140321
mainstart:
	leaq f(%rip), %r12
	leaq id(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block140322
	jmp block140323
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r13
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

