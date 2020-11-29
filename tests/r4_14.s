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
.globl zero
.align 16
block10517:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %rax
	jmp zeroconclusion
block10519:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block10517
block10518:
	movq $0, %rcx
	jmp block10517
block10535:
	movq free_ptr(%rip), %rcx
	addq $0, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block10518
	jmp block10519
block10520:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq 24(%r15), %rdi
	movq %rcx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block10522:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10520
block10521:
	movq $0, %rcx
	jmp block10520
block10523:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10521
	jmp block10522
block10524:
	movq $0, %rcx
	jmp block10523
block10525:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10523
block10526:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq minus(%rip), %rcx
	movq %rcx, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10524
	jmp block10525
block10528:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10526
block10527:
	movq $0, %rcx
	jmp block10526
block10529:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq minus(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10527
	jmp block10528
block10531:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10529
block10530:
	movq $0, %rcx
	jmp block10529
block10532:
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
	leaq zero(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10530
	jmp block10531
block10534:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10532
block10533:
	movq $0, %rcx
	jmp block10532
block10536:
	leaq zero(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10533
	jmp block10534
zerostart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $0, %r12
	 je block10535
	jmp block10536
zero:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp zerostart
zeroconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl one
.align 16
block10537:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp oneconclusion
block10539:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block10537
block10538:
	movq $0, %rcx
	jmp block10537
block10540:
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
	movq %rax, %r12
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10538
	jmp block10539
block10542:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10540
block10541:
	movq $0, %rcx
	jmp block10540
block10543:
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
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10541
	jmp block10542
block10546:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq 24(%r15), %rdi
	movq %rcx, %rsi
	movq $1, %rdx
	callq *%rbx
	movq %rax, %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block10548:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10546
block10547:
	movq $0, %rcx
	jmp block10546
block10549:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10547
	jmp block10548
block10551:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10549
block10550:
	movq $0, %rcx
	jmp block10549
block10552:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	leaq minus(%rip), %rcx
	movq %rcx, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10550
	jmp block10551
block10554:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10552
block10553:
	movq $0, %rcx
	jmp block10552
block10555:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10553
	jmp block10554
block10557:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10555
block10556:
	movq $0, %rcx
	jmp block10555
block10558:
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
	leaq one(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10556
	jmp block10557
block10560:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10558
block10559:
	movq $0, %rcx
	jmp block10558
block10545:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10543
block10544:
	movq $0, %rcx
	jmp block10543
block10562:
	leaq one(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10559
	jmp block10560
block10561:
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10544
	jmp block10545
onestart:
	movq %rdi, %rcx
	movq %rsi, %r13
	cmpq $0, %r13
	 je block10561
	jmp block10562
one:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp onestart
oneconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl two
.align 16
block10563:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $647, 0(%r11)
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp twoconclusion
block10565:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block10563
block10564:
	movq $0, %rcx
	jmp block10563
block10566:
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
	callq *%r13
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10564
	jmp block10565
block10568:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10566
block10567:
	movq $0, %rcx
	jmp block10566
block10569:
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
	leaq one(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10567
	jmp block10568
block10571:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10569
block10570:
	movq $0, %rcx
	jmp block10569
block10572:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%rbx
	movq %rax, 16(%r15)
	movq $42, %r14
	leaq one(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10570
	jmp block10571
block10574:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10572
block10573:
	movq $0, %rcx
	jmp block10572
block10575:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	leaq zero(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block10573
	jmp block10574
block10578:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rcx
	movq 16(%r15), %rdi
	movq %rcx, %rsi
	movq -24(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block10580:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10578
block10579:
	movq $0, %rcx
	jmp block10578
block10581:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10579
	jmp block10580
block10583:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10581
block10582:
	movq $0, %rcx
	jmp block10581
block10584:
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
	 jl block10582
	jmp block10583
block10586:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10584
block10585:
	movq $0, %rcx
	jmp block10584
block10587:
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
	 jl block10585
	jmp block10586
block10589:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10587
block10588:
	movq $0, %rcx
	jmp block10587
block10590:
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
	leaq two(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10588
	jmp block10589
block10592:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10590
block10591:
	movq $0, %rcx
	jmp block10590
block10577:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10575
block10576:
	movq $0, %rcx
	jmp block10575
block10594:
	leaq two(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10591
	jmp block10592
block10593:
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10576
	jmp block10577
twostart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $0, %rbx
	 je block10593
	jmp block10594
two:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp twostart
twoconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl three
.align 16
block10595:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1673, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp threeconclusion
block10597:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block10595
block10596:
	movq $0, %rcx
	jmp block10595
block10598:
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
	callq *-24(%rbp)
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10596
	jmp block10597
block10600:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10598
block10599:
	movq $0, %rcx
	jmp block10598
block10601:
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
	movq %rax, -24(%rbp)
	leaq two(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10599
	jmp block10600
block10603:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10601
block10602:
	movq $0, %rcx
	jmp block10601
block10604:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%rbx
	movq %rax, 16(%r15)
	leaq two(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block10602
	jmp block10603
block10606:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10604
block10605:
	movq $0, %rcx
	jmp block10604
block10607:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	leaq one(%rip), %rcx
	movq %rcx, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10605
	jmp block10606
block10609:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10607
block10608:
	movq $0, %rcx
	jmp block10607
block10610:
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
	movq %rax, %r14
	movq $42, %r12
	leaq one(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10608
	jmp block10609
block10612:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10610
block10611:
	movq $0, %rcx
	jmp block10610
block10613:
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
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10611
	jmp block10612
block10616:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	movq $1, %rdx
	callq *-24(%rbp)
	movq %rax, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block10618:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10616
block10617:
	movq $0, %rcx
	jmp block10616
block10619:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10617
	jmp block10618
block10621:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10619
block10620:
	movq $0, %rcx
	jmp block10619
block10622:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -24(%rbp)
	leaq minus(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10620
	jmp block10621
block10624:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10622
block10623:
	movq $0, %rcx
	jmp block10622
block10625:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq minus(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10623
	jmp block10624
block10627:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10625
block10626:
	movq $0, %rcx
	jmp block10625
block10628:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq three(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10626
	jmp block10627
block10630:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10628
block10629:
	movq $0, %rcx
	jmp block10628
block10615:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10613
block10614:
	movq $0, %rcx
	jmp block10613
block10632:
	leaq three(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10629
	jmp block10630
block10631:
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10614
	jmp block10615
threestart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $0, %rbx
	 je block10631
	jmp block10632
three:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp threestart
threeconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 
.globl main
.align 16
block10633:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3723, 0(%r11)
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 40(%r11), %rcx
	movq %rcx, %r11
	movq 32(%r11), %rcx
	movq %rcx, %r11
	movq 24(%r11), %rcx
	movq %rcx, %r11
	movq 16(%r11), %rax
	jmp mainconclusion
block10635:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block10633
block10634:
	movq $0, %rcx
	jmp block10633
block10636:
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
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10634
	jmp block10635
block10637:
	movq $0, %rcx
	jmp block10636
block10638:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10636
block10639:
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
	leaq three(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10637
	jmp block10638
block10641:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10639
block10640:
	movq $0, %rcx
	jmp block10639
block10642:
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
	movq %rax, 32(%r15)
	leaq three(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10640
	jmp block10641
block10644:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10642
block10643:
	movq $0, %rcx
	jmp block10642
block10645:
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
	leaq two(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10643
	jmp block10644
block10647:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10645
block10646:
	movq $0, %rcx
	jmp block10645
block10648:
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
	movq %rax, %r14
	leaq two(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10646
	jmp block10647
block10649:
	movq $0, %rcx
	jmp block10648
block10650:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10648
block10651:
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
	leaq one(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10649
	jmp block10650
block10653:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10651
block10652:
	movq $0, %rcx
	jmp block10651
block10654:
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
	movq %rcx, 24(%r15)
	movq $42, -16(%rbp)
	leaq one(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10652
	jmp block10653
block10656:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10654
block10655:
	movq $0, %rcx
	jmp block10654
block10657:
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
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10655
	jmp block10656
block10659:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10657
block10658:
	movq $0, %rcx
	jmp block10657
mainstart:
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10658
	jmp block10659
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $24, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 

