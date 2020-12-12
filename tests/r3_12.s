.globl main
.align 16
block150565:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 120(%r15), %r11
	movq 8(%r11), %rdx
	movq 104(%r15), %r11
	movq 8(%r11), %rsi
	movq 96(%r15), %r11
	movq 8(%r11), %rdi
	movq 88(%r15), %r11
	movq 8(%r11), %r8
	movq 72(%r15), %r11
	movq 8(%r11), %r9
	movq 64(%r15), %r11
	movq 8(%r11), %r10
	movq 56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq 48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq 40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -40(%rbp)
	movq 32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -32(%rbp)
	movq 24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%rbp)
	movq 16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	movq %r14, %r11
	movq 8(%r11), %r14
	movq 80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq %r13, %r11
	movq 8(%r11), %r13
	movq %r12, %r11
	movq 8(%r11), %r12
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq 152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq 144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq 136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -88(%rbp), %r11
	addq %rcx, %r11
	movq -80(%rbp), %rcx
	addq %r11, %rcx
	movq -72(%rbp), %r11
	addq %rcx, %r11
	movq %rbx, %rcx
	addq %r11, %rcx
	movq %r12, %r11
	addq %rcx, %r11
	movq %r13, %rcx
	addq %r11, %rcx
	movq -64(%rbp), %r11
	addq %rcx, %r11
	movq %r14, %rcx
	addq %r11, %rcx
	movq -16(%rbp), %r11
	addq %rcx, %r11
	movq -24(%rbp), %rcx
	addq %r11, %rcx
	movq -32(%rbp), %r11
	addq %rcx, %r11
	movq -40(%rbp), %rcx
	addq %r11, %rcx
	movq -48(%rbp), %r11
	addq %rcx, %r11
	movq -56(%rbp), %rcx
	addq %r11, %rcx
	addq %rcx, %r10
	movq %r9, %rcx
	addq %r10, %rcx
	addq %rcx, %r8
	movq %rdi, %rcx
	addq %r8, %rcx
	addq %rcx, %rsi
	movq %rdx, %rax
	addq %rsi, %rax
	jmp mainconclusion
block150567:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150565
block150566:
	movq $0, %rcx
	jmp block150565
block150568:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 136(%r15)
	movq $1, -128(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150566
	jmp block150567
block150570:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150568
block150569:
	movq $0, %rcx
	jmp block150568
block150571:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 144(%r15)
	movq $1, -128(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150569
	jmp block150570
block150573:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150571
block150572:
	movq $0, %rcx
	jmp block150571
block150574:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 152(%r15)
	movq $1, -128(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150572
	jmp block150573
block150576:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150574
block150575:
	movq $0, %rcx
	jmp block150574
block150577:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $1, -128(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150575
	jmp block150576
block150579:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150577
block150578:
	movq $0, %rcx
	jmp block150577
block150580:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150578
	jmp block150579
block150582:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150580
block150581:
	movq $0, %rcx
	jmp block150580
block150583:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150581
	jmp block150582
block150585:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150583
block150584:
	movq $0, %rcx
	jmp block150583
block150586:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 80(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150584
	jmp block150585
block150588:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150586
block150587:
	movq $0, %rcx
	jmp block150586
block150589:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150587
	jmp block150588
block150591:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150589
block150590:
	movq $0, %rcx
	jmp block150589
block150592:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block150590
	jmp block150591
block150594:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150592
block150593:
	movq $0, %rcx
	jmp block150592
block150595:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150593
	jmp block150594
block150597:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150595
block150596:
	movq $0, %rcx
	jmp block150595
block150598:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150596
	jmp block150597
block150600:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150598
block150599:
	movq $0, %rcx
	jmp block150598
block150601:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150599
	jmp block150600
block150603:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150601
block150602:
	movq $0, %rcx
	jmp block150601
block150604:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 48(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150602
	jmp block150603
block150606:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150604
block150605:
	movq $0, %rcx
	jmp block150604
block150607:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 56(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150605
	jmp block150606
block150609:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150607
block150608:
	movq $0, %rcx
	jmp block150607
block150610:
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
	 jl block150608
	jmp block150609
block150612:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150610
block150611:
	movq $0, %rcx
	jmp block150610
block150613:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 72(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150611
	jmp block150612
block150615:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150613
block150614:
	movq $0, %rcx
	jmp block150613
block150616:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 88(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150614
	jmp block150615
block150618:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150616
block150617:
	movq $0, %rcx
	jmp block150616
block150619:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 96(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150617
	jmp block150618
block150621:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150619
block150620:
	movq $0, %rcx
	jmp block150619
block150622:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 104(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150620
	jmp block150621
block150624:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150622
block150623:
	movq $0, %rcx
	jmp block150622
block150625:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 120(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150623
	jmp block150624
block150627:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block150625
block150626:
	movq $0, %rcx
	jmp block150625
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block150626
	jmp block150627
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $128, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $128, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

