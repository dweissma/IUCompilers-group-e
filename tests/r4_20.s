.globl foo
.align 16
block89295:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $9, 0(%r11)
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -40(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r9
	movq -16(%rbp), %rdi
	movq %r14, %rsi
	movq -48(%rbp), %rdx
	movq %r12, %rcx
	movq -32(%rbp), %r8
	movq -24(%rbp), %rax
	subq $0, %r15
	addq $64, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block89297:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block89295
block89296:
	movq $0, %rdx
	jmp block89295
block89299:
	leaq foo(%rip), %rax
	movq %rax, -24(%rbp)
	movq $1, %rsi
	negq %rsi
	movq %rdi, -16(%rbp)
	addq %rsi, -16(%rbp)
	movq %rdx, %r11
	movq 8(%r11), %rsi
	movq %rsi, -56(%rbp)
	movq %rdx, %r11
	movq 16(%r11), %r13
	movq %rdx, %r11
	movq 24(%r11), %rax
	movq %rax, -40(%rbp)
	movq %rdx, %r11
	movq 32(%r11), %rsi
	movq $1, %rdx
	negq %rdx
	movq %rsi, %rbx
	addq %rdx, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $32, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block89296
	jmp block89297
block89298:
	movq %rdx, %r11
	movq 32(%r11), %rax
	jmp fooconclusion
foostart:
	movq %rsi, %r14
	movq %rdx, -48(%rbp)
	movq %rcx, %r12
	movq %r8, -32(%rbp)
	movq %r9, %rdx
	cmpq $0, %rdi
	 je block89298
	jmp block89299
foo:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $64, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp foostart
fooconclusion:
	subq $0, %r15
	addq $64, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block89300:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $9, 0(%r11)
	movq %rcx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r9
	movq $100, %rdi
	movq $2, %rsi
	movq $3, %rdx
	movq $4, %rcx
	movq $5, %r8
	movq %rbx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block89302:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block89300
block89301:
	movq $0, %rdx
	jmp block89300
mainstart:
	leaq foo(%rip), %rbx
	movq $6, -16(%rbp)
	movq $7, %r14
	movq $8, %r13
	movq $142, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89301
	jmp block89302
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $16, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

