.globl foo
.align 16
block156624:
	movq %rbx, %r11
	movq 40(%r11), %rax
	jmp fooconclusion
block156626:
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
	movq 40(%r15), %rdi
	movq -24(%rbp), %rsi
	movq -64(%rbp), %rdx
	movq -56(%rbp), %rcx
	movq -48(%rbp), %r8
	movq -32(%rbp), %rax
	subq $0, %r15
	addq $64, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block156628:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block156626
block156627:
	movq $0, %rcx
	jmp block156626
block156629:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq 40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -32(%rbp)
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
	 jl block156627
	jmp block156628
block156631:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156629
block156630:
	movq $0, %rcx
	jmp block156629
block156625:
	leaq foo(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block156630
	jmp block156631
foostart:
	movq %rsi, %r12
	movq %rdx, -64(%rbp)
	movq %rcx, -56(%rbp)
	movq %r8, -48(%rbp)
	movq %r9, %rbx
	cmpq $0, %r12
	 je block156624
	jmp block156625
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
block156632:
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
	movq %rbx, 32(%r11)
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
	movq -24(%rbp), %rax
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block156634:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block156632
block156633:
	movq $0, %rcx
	jmp block156632
block156635:
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
	movq %rax, -24(%rbp)
	movq $5, -16(%rbp)
	movq $6, %r14
	movq $7, %r13
	movq $8, %rbx
	movq $142, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156633
	jmp block156634
block156636:
	movq $0, %rcx
	jmp block156635
block156637:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156635
mainstart:
	leaq foo(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156636
	jmp block156637
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

