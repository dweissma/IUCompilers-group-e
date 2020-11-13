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
	addq %r8, %rcx
	addq %rcx, %rdx
	movq %rsi, %rcx
	addq %rdx, %rcx
	movq %rdi, %rax
	addq %rcx, %rax
	jmp hconclusion
h:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hstart
hconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block89336:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r9
	movq $1, %rdi
	movq $2, %rsi
	movq $3, %rdx
	movq $4, %rcx
	movq $5, %r8
	movq %rbx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block89337:
	movq $0, %rdx
	jmp block89336
block89338:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block89336
mainstart:
	leaq h(%rip), %rbx
	movq $6, %r13
	movq $7, %r12
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block89337
	jmp block89338
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

