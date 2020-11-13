.globl g
.align 16
block89498:
	leaq g(%rip), %rcx
	movq %rdx, %r11
	movq 8(%r11), %rdx
	negq %rdx
	movq %r12, %rsi
	addq %rdx, %rsi
	movq %rsi, %rdi
	movq %rcx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	jmp *%rax
block89497:
	movq $0, %rax
	jmp gconclusion
block89499:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	cmpq $0, %r12
	 je block89497
	jmp block89498
block89501:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89499
block89500:
	movq $0, %rdx
	jmp block89499
gstart:
	movq %rdi, %r12
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block89500
	jmp block89501
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl main
.align 16
block89502:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	leaq g(%rip), %rcx
	movq $1000, %rdi
	callq *%rcx
	movq %rax, %rdx
	movq $32, %rcx
	addq %rdx, %rcx
	movq 64(%r15), %r11
	movq 8(%r11), %rdx
	movq %rbx, %r11
	movq 8(%r11), %rsi
	movq 56(%r15), %r11
	movq 8(%r11), %rdi
	movq 48(%r15), %r11
	movq 8(%r11), %r8
	movq 40(%r15), %r11
	movq 8(%r11), %r9
	movq 32(%r15), %r11
	movq 8(%r11), %r10
	movq 24(%r15), %r11
	movq 8(%r11), %rbx
	movq 16(%r15), %r11
	movq 8(%r11), %r12
	movq %r14, %r11
	movq 8(%r11), %r14
	movq %r13, %r11
	movq 8(%r11), %r11
	movq %r14, %r13
	addq %r11, %r13
	movq %r12, %r11
	addq %r13, %r11
	addq %r11, %rbx
	addq %rbx, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp mainconclusion
block89504:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89502
block89503:
	movq $0, %rcx
	jmp block89502
block89505:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89503
	jmp block89504
block89507:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89505
block89506:
	movq $0, %rcx
	jmp block89505
block89508:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89506
	jmp block89507
block89510:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89508
block89509:
	movq $0, %rcx
	jmp block89508
block89511:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89509
	jmp block89510
block89513:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89511
block89512:
	movq $0, %rcx
	jmp block89511
block89514:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block89512
	jmp block89513
block89516:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89514
block89515:
	movq $0, %rcx
	jmp block89514
block89517:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89515
	jmp block89516
block89519:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89517
block89518:
	movq $0, %rcx
	jmp block89517
block89520:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 48(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89518
	jmp block89519
block89522:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89520
block89521:
	movq $0, %rcx
	jmp block89520
block89523:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 56(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block89521
	jmp block89522
block89525:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89523
block89524:
	movq $0, %rcx
	jmp block89523
block89526:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block89524
	jmp block89525
block89528:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89526
block89527:
	movq $0, %rcx
	jmp block89526
block89529:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89527
	jmp block89528
block89531:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89529
block89530:
	movq $0, %rcx
	jmp block89529
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89530
	jmp block89531
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

