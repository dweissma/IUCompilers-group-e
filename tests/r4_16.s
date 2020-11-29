.globl minus
.align 16
minusstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	negq %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp minusconclusion
minus:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp minusstart
minusconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl z
.align 16
block11494:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp zconclusion
block11496:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11494
block11495:
	movq $0, %rcx
	jmp block11494
block11533:
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11495
	jmp block11496
block11497:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq -56(%rbp), %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	movq %r12, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block11499:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11497
block11498:
	movq $0, %rcx
	jmp block11497
block11500:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11498
	jmp block11499
block11502:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11500
block11501:
	movq $0, %rcx
	jmp block11500
block11503:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11501
	jmp block11502
block11505:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11503
block11504:
	movq $0, %rcx
	jmp block11503
block11506:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	leaq z(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11504
	jmp block11505
block11508:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11506
block11507:
	movq $0, %rcx
	jmp block11506
block11509:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq z(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11507
	jmp block11508
block11511:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block11509
block11510:
	movq $0, %rcx
	jmp block11509
block11512:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 32(%r15)
	movq %rcx, 24(%r15)
	movq %rbx, 16(%r15)
	movq %rcx, 48(%r15)
	movq %rbx, %r14
	movq %rcx, %r13
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11510
	jmp block11511
block11514:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block11512
block11513:
	movq $0, %rcx
	jmp block11512
block11515:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 16(%r15), %rax
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
	movq %rdx, %rbx
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq $-1, %r13
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11513
	jmp block11514
block11517:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block11515
block11516:
	movq $0, %rcx
	jmp block11515
block11518:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11516
	jmp block11517
block11520:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11518
block11519:
	movq $0, %rcx
	jmp block11518
block11521:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11519
	jmp block11520
block11523:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11521
block11522:
	movq $0, %rcx
	jmp block11521
block11524:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11522
	jmp block11523
block11526:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11524
block11525:
	movq $0, %rcx
	jmp block11524
block11527:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11525
	jmp block11526
block11528:
	movq $0, %rcx
	jmp block11527
block11529:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11527
block11530:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11528
	jmp block11529
block11532:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11530
block11531:
	movq $0, %rcx
	jmp block11530
block11534:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11531
	jmp block11532
zstart:
	movq %rdi, %rcx
	movq %rsi, -56(%rbp)
	cmpq $0, -56(%rbp)
	 je block11533
	jmp block11534
z:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp zstart
zconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl o
.align 16
block11535:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp oconclusion
block11537:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11535
block11536:
	movq $0, %rcx
	jmp block11535
block11576:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11536
	jmp block11537
block11538:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq %r12, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rcx
	movq 16(%r15), %rdi
	movq %rcx, %rsi
	movq %rbx, %rdx
	movq -24(%rbp), %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block11540:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11538
block11539:
	movq $0, %rcx
	jmp block11538
block11541:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq minus(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11539
	jmp block11540
block11543:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11541
block11542:
	movq $0, %rcx
	jmp block11541
block11544:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	leaq minus(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11542
	jmp block11543
block11546:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11544
block11545:
	movq $0, %rcx
	jmp block11544
block11547:
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
	movq %rax, -24(%rbp)
	leaq o(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11545
	jmp block11546
block11548:
	movq $0, %rcx
	jmp block11547
block11549:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11547
block11550:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq o(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11548
	jmp block11549
block11552:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block11550
block11551:
	movq $0, %rcx
	jmp block11550
block11555:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r13, 64(%r15)
	movq %rcx, 56(%r15)
	movq %r13, 48(%r15)
	movq %rcx, 40(%r15)
	movq %r13, 24(%r15)
	movq %rcx, 16(%r15)
	movq %r13, %r14
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11551
	jmp block11552
block11557:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block11555
block11556:
	movq $0, %rcx
	jmp block11555
block11558:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11556
	jmp block11557
block11560:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block11558
block11559:
	movq $0, %rcx
	jmp block11558
block11561:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11559
	jmp block11560
block11563:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11561
block11562:
	movq $0, %rcx
	jmp block11561
block11564:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $5, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11562
	jmp block11563
block11566:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11564
block11565:
	movq $0, %rcx
	jmp block11564
block11567:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $4, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11565
	jmp block11566
block11569:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11567
block11568:
	movq $0, %rcx
	jmp block11567
block11570:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $3, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11568
	jmp block11569
block11572:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11570
block11571:
	movq $0, %rcx
	jmp block11570
block11573:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $2, %r13
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11571
	jmp block11572
block11574:
	movq $0, %rcx
	jmp block11573
block11575:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11573
block11577:
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11574
	jmp block11575
ostart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq %rdx, %rbx
	cmpq $0, %r12
	 je block11576
	jmp block11577
o:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp ostart
oconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl t
.align 16
block11578:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp tconclusion
block11581:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq -24(%rbp), %rsi
	movq $1, %rdx
	callq *%r12
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq 16(%r15), %rdx
	movq %r14, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block11583:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11581
block11582:
	movq $0, %rcx
	jmp block11581
block11584:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11582
	jmp block11583
block11586:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11584
block11585:
	movq $0, %rcx
	jmp block11584
block11587:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11585
	jmp block11586
block11589:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11587
block11588:
	movq $0, %rcx
	jmp block11587
block11590:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11588
	jmp block11589
block11592:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11590
block11591:
	movq $0, %rcx
	jmp block11590
block11593:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11591
	jmp block11592
block11595:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block11593
block11594:
	movq $0, %rcx
	jmp block11593
block11596:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 64(%r15)
	movq %rcx, %r14
	movq %rbx, 56(%r15)
	movq %rcx, %r13
	movq %rbx, 48(%r15)
	movq %rcx, %r12
	movq %rbx, 40(%r15)
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11594
	jmp block11595
block11598:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block11596
block11597:
	movq $0, %rcx
	jmp block11596
block11599:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, %r13
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, %r12
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11597
	jmp block11598
block11601:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block11599
block11600:
	movq $0, %rcx
	jmp block11599
block11602:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11600
	jmp block11601
block11604:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11602
block11603:
	movq $0, %rcx
	jmp block11602
block11605:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $5, -40(%rbp)
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11603
	jmp block11604
block11607:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11605
block11606:
	movq $0, %rcx
	jmp block11605
block11608:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11606
	jmp block11607
block11610:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11608
block11609:
	movq $0, %rcx
	jmp block11608
block11611:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11609
	jmp block11610
block11613:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11611
block11612:
	movq $0, %rcx
	jmp block11611
block11614:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11612
	jmp block11613
block11616:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11614
block11615:
	movq $0, %rcx
	jmp block11614
block11580:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11578
block11579:
	movq $0, %rcx
	jmp block11578
block11618:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11615
	jmp block11616
block11617:
	movq 16(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11579
	jmp block11580
tstart:
	movq %rdi, %rcx
	movq %rsi, -24(%rbp)
	movq %rdx, 16(%r15)
	cmpq $0, -24(%rbp)
	 je block11617
	jmp block11618
t:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tstart
tconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl h
.align 16
block11619:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp hconclusion
block11621:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11619
block11620:
	movq $0, %rcx
	jmp block11619
block11658:
	movq 16(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11620
	jmp block11621
block11622:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq -24(%rbp), %rsi
	movq $1, %rdx
	callq *%r12
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq 16(%r15), %rdx
	movq %r14, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block11624:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11622
block11623:
	movq $0, %rcx
	jmp block11622
block11625:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11623
	jmp block11624
block11627:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11625
block11626:
	movq $0, %rcx
	jmp block11625
block11628:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11626
	jmp block11627
block11630:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11628
block11629:
	movq $0, %rcx
	jmp block11628
block11631:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11629
	jmp block11630
block11633:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11631
block11632:
	movq $0, %rcx
	jmp block11631
block11634:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11632
	jmp block11633
block11636:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block11634
block11635:
	movq $0, %rcx
	jmp block11634
block11637:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 64(%r15)
	movq %rcx, 56(%r15)
	movq %rbx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rbx, %r14
	movq %rcx, %r13
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11635
	jmp block11636
block11639:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block11637
block11638:
	movq $0, %rcx
	jmp block11637
block11640:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -144(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, %r14
	movq $-1, -136(%rbp)
	movq $-1, %r13
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11638
	jmp block11639
block11642:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block11640
block11641:
	movq $0, %rcx
	jmp block11640
block11643:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11641
	jmp block11642
block11645:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11643
block11644:
	movq $0, %rcx
	jmp block11643
block11646:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11644
	jmp block11645
block11648:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11646
block11647:
	movq $0, %rcx
	jmp block11646
block11649:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11647
	jmp block11648
block11651:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11649
block11650:
	movq $0, %rcx
	jmp block11649
block11652:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11650
	jmp block11651
block11653:
	movq $0, %rcx
	jmp block11652
block11654:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11652
block11655:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11653
	jmp block11654
block11657:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11655
block11656:
	movq $0, %rcx
	jmp block11655
block11659:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11656
	jmp block11657
hstart:
	movq %rdi, %rcx
	movq %rsi, -24(%rbp)
	movq %rdx, 16(%r15)
	cmpq $0, -24(%rbp)
	 je block11658
	jmp block11659
h:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hstart
hconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl f
.align 16
block11660:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp fconclusion
block11662:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11660
block11661:
	movq $0, %rcx
	jmp block11660
block11699:
	movq %r14, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11661
	jmp block11662
block11663:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq -16(%rbp), %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rcx
	movq 24(%r15), %rdi
	movq %rcx, %rsi
	movq %r14, %rdx
	movq -32(%rbp), %rax
	subq $0, %r15
	addq $136, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block11665:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11663
block11664:
	movq $0, %rcx
	jmp block11663
block11666:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11664
	jmp block11665
block11668:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11666
block11667:
	movq $0, %rcx
	jmp block11666
block11669:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11667
	jmp block11668
block11671:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11669
block11670:
	movq $0, %rcx
	jmp block11669
block11672:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -32(%rbp)
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11670
	jmp block11671
block11674:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11672
block11673:
	movq $0, %rcx
	jmp block11672
block11675:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11673
	jmp block11674
block11677:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block11675
block11676:
	movq $0, %rcx
	jmp block11675
block11678:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 144(%r15), %rax
	movq %rax, 56(%r15)
	movq %rcx, 24(%r15)
	movq 144(%r15), %rax
	movq %rax, 48(%r15)
	movq %rcx, %rbx
	movq 144(%r15), %rax
	movq %rax, 40(%r15)
	movq %rcx, %r13
	movq 144(%r15), %rax
	movq %rax, 32(%r15)
	movq %rcx, 64(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11676
	jmp block11677
block11680:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block11678
block11679:
	movq $0, %rcx
	jmp block11678
block11681:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, 144(%r15)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, %r13
	movq $-1, %rbx
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11679
	jmp block11680
block11682:
	movq $0, %rcx
	jmp block11681
block11683:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block11681
block11684:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11682
	jmp block11683
block11686:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11684
block11685:
	movq $0, %rcx
	jmp block11684
block11687:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11685
	jmp block11686
block11689:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11687
block11688:
	movq $0, %rcx
	jmp block11687
block11690:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11688
	jmp block11689
block11692:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11690
block11691:
	movq $0, %rcx
	jmp block11690
block11693:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11691
	jmp block11692
block11694:
	movq $0, %rcx
	jmp block11693
block11695:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11693
block11696:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11694
	jmp block11695
block11698:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11696
block11697:
	movq $0, %rcx
	jmp block11696
block11700:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11697
	jmp block11698
fstart:
	movq %rdi, %rcx
	movq %rsi, -16(%rbp)
	movq %rdx, %r14
	cmpq $0, -16(%rbp)
	 je block11699
	jmp block11700
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $136, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $136, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl e
.align 16
block11701:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp econclusion
block11704:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq -16(%rbp), %rsi
	movq $1, %rdx
	callq *-32(%rbp)
	movq %rax, %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	movq %r14, %rdx
	movq %r13, %rax
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block11706:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11704
block11705:
	movq $0, %rcx
	jmp block11704
block11707:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -32(%rbp)
	leaq minus(%rip), %rcx
	movq %rcx, -24(%rbp)
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block11705
	jmp block11706
block11709:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11707
block11708:
	movq $0, %rcx
	jmp block11707
block11710:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	leaq minus(%rip), %rcx
	movq %rcx, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11708
	jmp block11709
block11712:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11710
block11711:
	movq $0, %rcx
	jmp block11710
block11713:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11711
	jmp block11712
block11715:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11713
block11714:
	movq $0, %rcx
	jmp block11713
block11716:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11714
	jmp block11715
block11718:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block11716
block11717:
	movq $0, %rcx
	jmp block11716
block11719:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 64(%r15)
	movq %rcx, 56(%r15)
	movq %rbx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rbx, 32(%r15)
	movq %rcx, 24(%r15)
	movq %rbx, %r13
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11717
	jmp block11718
block11721:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block11719
block11720:
	movq $0, %rcx
	jmp block11719
block11722:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11720
	jmp block11721
block11724:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block11722
block11723:
	movq $0, %rcx
	jmp block11722
block11725:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11723
	jmp block11724
block11727:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11725
block11726:
	movq $0, %rcx
	jmp block11725
block11728:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11726
	jmp block11727
block11730:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11728
block11729:
	movq $0, %rcx
	jmp block11728
block11731:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11729
	jmp block11730
block11733:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11731
block11732:
	movq $0, %rcx
	jmp block11731
block11734:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11732
	jmp block11733
block11736:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11734
block11735:
	movq $0, %rcx
	jmp block11734
block11737:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11735
	jmp block11736
block11739:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11737
block11738:
	movq $0, %rcx
	jmp block11737
block11703:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11701
block11702:
	movq $0, %rcx
	jmp block11701
block11741:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11738
	jmp block11739
block11740:
	movq %r14, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11702
	jmp block11703
estart:
	movq %rdi, %rcx
	movq %rsi, -16(%rbp)
	movq %rdx, %r14
	cmpq $0, -16(%rbp)
	 je block11740
	jmp block11741
e:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $152, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp estart
econclusion:
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block11742:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %r14, %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-16(%rbp)
	movq %rax, %rcx
	movq 24(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-32(%rbp)
	movq %rax, %rcx
	movq 40(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-48(%rbp)
	movq %rax, %rcx
	movq 56(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-64(%rbp)
	movq %rax, %rcx
	movq 72(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-80(%rbp)
	movq %rax, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block11744:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11742
block11743:
	movq $0, %rcx
	jmp block11742
block11745:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	leaq z(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11743
	jmp block11744
block11747:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11745
block11746:
	movq $0, %rcx
	jmp block11745
block11748:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq z(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11746
	jmp block11747
block11750:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11748
block11749:
	movq $0, %rcx
	jmp block11748
block11751:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11749
	jmp block11750
block11753:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11751
block11752:
	movq $0, %rcx
	jmp block11751
block11754:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11752
	jmp block11753
block11756:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11754
block11755:
	movq $0, %rcx
	jmp block11754
block11757:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -32(%rbp)
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11755
	jmp block11756
block11759:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11757
block11758:
	movq $0, %rcx
	jmp block11757
block11760:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11758
	jmp block11759
block11762:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11760
block11761:
	movq $0, %rcx
	jmp block11760
block11763:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11761
	jmp block11762
block11765:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11763
block11764:
	movq $0, %rcx
	jmp block11763
block11766:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 56(%r15)
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11764
	jmp block11765
block11768:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11766
block11767:
	movq $0, %rcx
	jmp block11766
block11769:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11767
	jmp block11768
block11771:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11769
block11770:
	movq $0, %rcx
	jmp block11769
block11772:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 72(%r15)
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11770
	jmp block11771
block11773:
	movq $0, %rcx
	jmp block11772
block11774:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11772
block11775:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11773
	jmp block11774
block11777:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block11775
block11776:
	movq $0, %rcx
	jmp block11775
mainstart:
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block11776
	jmp block11777
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $88, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $88, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 

