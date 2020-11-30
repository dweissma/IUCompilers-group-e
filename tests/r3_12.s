.globl main
.align 16
block30616:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, %r11
	movq 8(%r11), %rdx
	movq 152(%r15), %r11
	movq 8(%r11), %rsi
	movq 144(%r15), %r11
	movq 8(%r11), %rdi
	movq 136(%r15), %r11
	movq 8(%r11), %r8
	movq 128(%r15), %r11
	movq 8(%r11), %r9
	movq 120(%r15), %r11
	movq 8(%r11), %r10
	movq 112(%r15), %r11
	movq 8(%r11), %rbx
	movq 104(%r15), %r11
	movq 8(%r11), %r12
	movq 96(%r15), %r11
	movq 8(%r11), %r13
	movq 88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq 80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq 72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq 64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
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
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq %r14, %r11
	addq %rcx, %r11
	movq -16(%rbp), %rcx
	addq %r11, %rcx
	movq -24(%rbp), %r11
	addq %rcx, %r11
	movq -32(%rbp), %rcx
	addq %r11, %rcx
	movq -40(%rbp), %r11
	addq %rcx, %r11
	movq -48(%rbp), %rcx
	addq %r11, %rcx
	movq -56(%rbp), %r11
	addq %rcx, %r11
	movq -64(%rbp), %rcx
	addq %r11, %rcx
	movq -72(%rbp), %r11
	addq %rcx, %r11
	movq -80(%rbp), %rcx
	addq %r11, %rcx
	movq -88(%rbp), %r11
	addq %rcx, %r11
	movq %r13, %rcx
	addq %r11, %rcx
	movq %r12, %r11
	addq %rcx, %r11
	movq %rbx, %rcx
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
block30618:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30616
block30617:
	movq $0, %rcx
	jmp block30616
block30619:
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
	 jl block30617
	jmp block30618
block30621:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30619
block30620:
	movq $0, %rcx
	jmp block30619
block30622:
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
	 jl block30620
	jmp block30621
block30624:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30622
block30623:
	movq $0, %rcx
	jmp block30622
block30625:
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
	 jl block30623
	jmp block30624
block30627:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30625
block30626:
	movq $0, %rcx
	jmp block30625
block30628:
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
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30626
	jmp block30627
block30630:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30628
block30629:
	movq $0, %rcx
	jmp block30628
block30631:
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
	 jl block30629
	jmp block30630
block30633:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30631
block30632:
	movq $0, %rcx
	jmp block30631
block30634:
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
	 jl block30632
	jmp block30633
block30636:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30634
block30635:
	movq $0, %rcx
	jmp block30634
block30637:
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
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30635
	jmp block30636
block30639:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30637
block30638:
	movq $0, %rcx
	jmp block30637
block30640:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 64(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30638
	jmp block30639
block30642:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30640
block30641:
	movq $0, %rcx
	jmp block30640
block30643:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 72(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30641
	jmp block30642
block30645:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30643
block30644:
	movq $0, %rcx
	jmp block30643
block30646:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 80(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block30644
	jmp block30645
block30648:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30646
block30647:
	movq $0, %rcx
	jmp block30646
block30649:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 88(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30647
	jmp block30648
block30651:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30649
block30650:
	movq $0, %rcx
	jmp block30649
block30652:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 96(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30650
	jmp block30651
block30654:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30652
block30653:
	movq $0, %rcx
	jmp block30652
block30655:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 104(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30653
	jmp block30654
block30657:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30655
block30656:
	movq $0, %rcx
	jmp block30655
block30658:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 112(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30656
	jmp block30657
block30660:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30658
block30659:
	movq $0, %rcx
	jmp block30658
block30661:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 120(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30659
	jmp block30660
block30663:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30661
block30662:
	movq $0, %rcx
	jmp block30661
block30664:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 128(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30662
	jmp block30663
block30666:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30664
block30665:
	movq $0, %rcx
	jmp block30664
block30667:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 136(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30665
	jmp block30666
block30669:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30667
block30668:
	movq $0, %rcx
	jmp block30667
block30670:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 144(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30668
	jmp block30669
block30672:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30670
block30671:
	movq $0, %rcx
	jmp block30670
block30673:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 152(%r15)
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30671
	jmp block30672
block30675:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30673
block30674:
	movq $0, %rcx
	jmp block30673
block30676:
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
	 jl block30674
	jmp block30675
block30678:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block30676
block30677:
	movq $0, %rcx
	jmp block30676
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block30677
	jmp block30678
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $96, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $96, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

