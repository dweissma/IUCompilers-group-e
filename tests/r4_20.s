.globl foo
.align 16
block79861:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r9
	movq 32(%r15), %rdi
	movq -24(%rbp), %rsi
	movq -48(%rbp), %rdx
	movq -64(%rbp), %rcx
	movq -40(%rbp), %r8
	movq -56(%rbp), %rax
	subq $0, %r15
	addq $64, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block79863:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block79861
block79862:
	movq $0, %rcx
	jmp block79861
block79864:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq 32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq $1, %rcx
	negq %rcx
	movq %r12, -24(%rbp)
	addq %rcx, -24(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, -16(%rbp)
	movq %rbx, %r11
	movq 16(%r11), %r14
	movq %rbx, %r11
	movq 24(%r11), %r13
	movq %rbx, %r11
	movq 32(%r11), %r12
	movq %rbx, %r11
	movq 40(%r11), %rdx
	movq $1, %rcx
	negq %rcx
	movq %rdx, %rbx
	addq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79862
	jmp block79863
block79866:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79864
block79865:
	movq $0, %rcx
	jmp block79864
block79860:
	leaq foo(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79865
	jmp block79866
block79859:
	movq %rbx, %r11
	movq 40(%r11), %rax
	jmp fooconclusion
foostart:
	movq %rsi, %r12
	movq %rdx, -48(%rbp)
	movq %rcx, -64(%rbp)
	movq %r8, -40(%rbp)
	movq %r9, %rbx
	cmpq $0, %r12
	 je block79859
	jmp block79860
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
block79867:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r9
	movq 40(%r15), %rdi
	movq $100, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $4, %r8
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block79869:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block79867
block79868:
	movq $0, %rcx
	jmp block79867
block79870:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq 40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	movq $5, %r14
	movq $6, -32(%rbp)
	movq $7, %rbx
	movq $8, %r13
	movq $142, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79868
	jmp block79869
block79872:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79870
block79871:
	movq $0, %rcx
	jmp block79870
mainstart:
	leaq foo(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79871
	jmp block79872
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $32, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

