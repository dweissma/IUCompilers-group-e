.globl h
.align 16
hstart:
	movq %r9, %r10
	movq %r10, %r11
	movq 8(%r11), %r9
	movq %r10, %r11
	movq 16(%r11), %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rsi
	addq %rsi, %rdi
	addq %rdi, %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp hconclusion
h:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp hstart
hconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block140257:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r9
	movq $1, %rcx
	movq $2, %rdx
	movq $3, %rdi
	movq $4, %rsi
	movq $5, %r8
	movq %r13, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block140258:
	movq $0, %rdx
	jmp block140257
block140259:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block140257
mainstart:
	leaq h(%rip), %r13
	movq $6, %r12
	movq $7, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140258
	jmp block140259
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

