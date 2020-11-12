.globl foo
.align 16
block140216:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $9, 0(%r11)
	movq %rcx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r9
	movq %r12, %rcx
	movq -24(%rbp), %rdx
	movq -16(%rbp), %rdi
	movq %r14, %rsi
	movq -40(%rbp), %r8
	movq %r13, %rax
	subq $0, %r15
	addq $64, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block140218:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block140216
block140217:
	movq $0, %rdx
	jmp block140216
block140220:
	leaq foo(%rip), %r13
	movq $1, %rsi
	negq %rsi
	movq %r10, %r12
	addq %rsi, %r12
	movq %rdx, %r11
	movq 8(%r11), %rsi
	movq %rsi, -32(%rbp)
	movq %rdx, %r11
	movq 16(%r11), %rbx
	movq %rdx, %r11
	movq 24(%r11), %rax
	movq %rax, -56(%rbp)
	movq %rdx, %r11
	movq 32(%r11), %rsi
	movq $1, %rdx
	negq %rdx
	movq %rsi, -48(%rbp)
	addq %rdx, -48(%rbp)
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $32, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block140217
	jmp block140218
block140219:
	movq %rdx, %r11
	movq 32(%r11), %rax
	jmp fooconclusion
foostart:
	movq %rcx, %r10
	movq %rdx, -24(%rbp)
	movq %rdi, -16(%rbp)
	movq %rsi, %r14
	movq %r8, -40(%rbp)
	movq %r9, %rdx
	cmpq $0, %r10
	 je block140219
	jmp block140220
foo:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $64, %rsp
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
block140221:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $9, 0(%r11)
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r9
	movq $100, %rcx
	movq $2, %rdx
	movq $3, %rdi
	movq $4, %rsi
	movq $5, %r8
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block140223:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block140221
block140222:
	movq $0, %rdx
	jmp block140221
mainstart:
	leaq foo(%rip), %rax
	movq %rax, -16(%rbp)
	movq $6, %r14
	movq $7, %r13
	movq $8, %r12
	movq $142, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140222
	jmp block140223
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

