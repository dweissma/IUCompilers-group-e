.globl g
.align 16
block38450:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r12, %r11
	movq 8(%r11), %rdx
	movq %rdx, %rsi
	negq %rsi
	movq %rbx, %rdx
	addq %rsi, %rdx
	movq %rcx, %rdi
	movq %rdx, %rsi
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block38452:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38450
block38451:
	movq $0, %rcx
	jmp block38450
block38453:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq g(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38451
	jmp block38452
block38455:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38453
block38454:
	movq $0, %rcx
	jmp block38453
block38457:
	leaq g(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38454
	jmp block38455
block38456:
	movq $0, %rax
	jmp gconclusion
block38458:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	cmpq $0, %rbx
	 je block38456
	jmp block38457
block38460:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38458
block38459:
	movq $0, %rcx
	jmp block38458
gstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block38459
	jmp block38460
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block38461:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $1000, %rsi
	callq *%r14
	movq %rax, %rdx
	movq $32, %rcx
	addq %rdx, %rcx
	movq %rbx, %r11
	movq 8(%r11), %rdx
	movq 64(%r15), %r11
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
	movq 80(%r15), %r11
	movq 8(%r11), %r12
	movq 72(%r15), %r11
	movq 8(%r11), %r13
	movq 16(%r15), %r11
	movq 8(%r11), %r11
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
block38463:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38461
block38462:
	movq $0, %rcx
	jmp block38461
block38464:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq g(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38462
	jmp block38463
block38466:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38464
block38465:
	movq $0, %rcx
	jmp block38464
block38467:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	leaq g(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38465
	jmp block38466
block38469:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38467
block38468:
	movq $0, %rcx
	jmp block38467
block38470:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 72(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38468
	jmp block38469
block38472:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38470
block38471:
	movq $0, %rcx
	jmp block38470
block38473:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 80(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38471
	jmp block38472
block38475:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38473
block38474:
	movq $0, %rcx
	jmp block38473
block38476:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block38474
	jmp block38475
block38478:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38476
block38477:
	movq $0, %rcx
	jmp block38476
block38479:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38477
	jmp block38478
block38481:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38479
block38480:
	movq $0, %rcx
	jmp block38479
block38482:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38480
	jmp block38481
block38484:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38482
block38483:
	movq $0, %rcx
	jmp block38482
block38485:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 48(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38483
	jmp block38484
block38487:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38485
block38486:
	movq $0, %rcx
	jmp block38485
block38488:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 56(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38486
	jmp block38487
block38490:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38488
block38489:
	movq $0, %rcx
	jmp block38488
block38491:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 64(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38489
	jmp block38490
block38493:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38491
block38492:
	movq $0, %rcx
	jmp block38491
block38494:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38492
	jmp block38493
block38496:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38494
block38495:
	movq $0, %rcx
	jmp block38494
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block38495
	jmp block38496
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

