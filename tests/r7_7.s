.globl hopefully__qzxint
.align 16
block811577:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $144115188075855875, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	orq $3, %rax
	jmp hopefully__qzxintconclusion
block811579:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811577
block811578:
	movq $0, %rdx
	jmp block811577
hopefully__qzxintstart:
	movq %rdi, %rcx
	leaq lambda811484(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811578
	jmp block811579
hopefully__qzxint:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hopefully__qzxintstart
hopefully__qzxintconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 
.globl lambda811484
.align 16
block811581:
	movq %r12, %rax
	jmp lambda811484conclusion
block811580:
	movq $42, %rax
	salq $3, %rax
	orq $1, %rax
	jmp lambda811484conclusion
lambda811484start:
	movq %rdi, %rcx
	movq %rsi, %r12
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	cmpq %rdx, %rcx
	 sete %al
	movzbq %al, %rcx
	movq %rcx, %rdx
	salq $3, %rdx
	orq $4, %rdx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 je block811580
	jmp block811581
lambda811484:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda811484start
lambda811484conclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %rbp
	retq 
.globl hopefully__qzxbool
.align 16
block811582:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $144115188075855875, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	orq $3, %rax
	jmp hopefully__qzxboolconclusion
block811584:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811582
block811583:
	movq $0, %rdx
	jmp block811582
hopefully__qzxboolstart:
	movq %rdi, %rdx
	leaq lambda811487(%rip), %rdx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block811583
	jmp block811584
hopefully__qzxbool:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hopefully__qzxboolstart
hopefully__qzxboolconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 
.globl lambda811487
.align 16
block811589:
	movq $-1, %rdi
	callq exit
block811585:
	movq $0, %rax
	salq $3, %rax
	orq $4, %rax
	jmp lambda811487conclusion
block811586:
	movq $1, %rax
	salq $3, %rax
	orq $4, %rax
	jmp lambda811487conclusion
block811587:
	xorq $1, %rcx
	salq $3, %rcx
	orq $4, %rcx
	movq $0, %rdx
	salq $3, %rdx
	orq $4, %rdx
	cmpq %rcx, %rdx
	 je block811585
	jmp block811586
block811588:
	sarq $3, %rcx
	jmp block811587
lambda811487start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $4, %rdx
	 je block811588
	jmp block811589
lambda811487:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda811487start
lambda811487conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block811597:
	movq $-1, %rdi
	callq exit
block811606:
	movq $-1, %rdi
	callq exit
block811600:
	movq $-1, %rdi
	callq exit
block811612:
	movq $-1, %rdi
	callq exit
block811603:
	movq $-1, %rdi
	callq exit
block811609:
	movq $-1, %rdi
	callq exit
block811621:
	movq $-1, %rdi
	callq exit
block811627:
	movq $-1, %rdi
	callq exit
block811618:
	movq $-1, %rdi
	callq exit
block811624:
	movq $-1, %rdi
	callq exit
block811636:
	movq $-1, %rdi
	callq exit
block811633:
	movq $-1, %rdi
	callq exit
block811591:
	movq $-1, %rdi
	callq exit
block811590:
	movq %rdx, %rax
	sarq $3, %rax
	jmp mainconclusion
block811592:
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811590
	jmp block811591
block811616:
	movq %rsi, %r11
	movq 8(%r11), %rcx
	movq $42, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rsi, %rdi
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %rdx
	jmp block811592
block811619:
	jmp block811616
block811620:
	movq $-8, %rsi
	andq %rcx, %rsi
	jmp block811619
block811617:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $1, %rdx
	 je block811620
	jmp block811621
block811622:
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $3, %rdx
	 je block811617
	jmp block811618
block811625:
	jmp block811622
block811626:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811625
block811623:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $0, %rdx
	 je block811626
	jmp block811627
block811628:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	orq $3, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $3, %rdx
	 je block811623
	jmp block811624
block811629:
	movq $0, %rcx
	jmp block811628
block811630:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811628
block811594:
	leaq hopefully__qzxint(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811629
	jmp block811630
block811595:
	movq %rsi, %rdx
	addq %rcx, %rdx
	salq $3, %rdx
	orq $1, %rdx
	jmp block811592
block811596:
	movq %rdx, %rcx
	sarq $3, %rcx
	jmp block811595
block811598:
	movq $0, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811596
	jmp block811597
block811599:
	movq %rdx, %rsi
	sarq $3, %rsi
	jmp block811598
block811601:
	movq %rdx, %rsi
	movq %rsi, %r11
	movq 8(%r11), %rcx
	movq $42, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rsi, %rdi
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811599
	jmp block811600
block811604:
	jmp block811601
block811605:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811604
block811602:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $1, %rdx
	 je block811605
	jmp block811606
block811607:
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $3, %rdx
	 je block811602
	jmp block811603
block811610:
	jmp block811607
block811611:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811610
block811608:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $0, %rdx
	 je block811611
	jmp block811612
block811613:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	orq $3, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $3, %rdx
	 je block811608
	jmp block811609
block811615:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811613
block811614:
	movq $0, %rcx
	jmp block811613
block811593:
	leaq hopefully__qzxint(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811614
	jmp block811615
block811631:
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %rdx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 je block811593
	jmp block811594
block811634:
	jmp block811631
block811635:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811634
block811632:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $0, %rdx
	 je block811635
	jmp block811636
block811637:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	orq $3, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $3, %rdx
	 je block811632
	jmp block811633
block811639:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811637
block811638:
	movq $0, %rcx
	jmp block811637
mainstart:
	leaq hopefully__qzxbool(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811638
	jmp block811639
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 

