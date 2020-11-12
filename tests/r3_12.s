.globl main
.align 16
block40714:
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
	movq 144(%r15), %r11
	movq 8(%r11), %rsi
	movq 136(%r15), %r11
	movq 8(%r11), %rdi
	movq 128(%r15), %r11
	movq 8(%r11), %r8
	movq 152(%r15), %r11
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
block40716:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40714
block40715:
	movq $0, %rcx
	jmp block40714
block40717:
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
	 jl block40715
	jmp block40716
block40719:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40717
block40718:
	movq $0, %rcx
	jmp block40717
block40720:
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
	 jl block40718
	jmp block40719
block40722:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40720
block40721:
	movq $0, %rcx
	jmp block40720
block40723:
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
	 jl block40721
	jmp block40722
block40725:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40723
block40724:
	movq $0, %rcx
	jmp block40723
block40726:
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
	 jl block40724
	jmp block40725
block40728:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40726
block40727:
	movq $0, %rcx
	jmp block40726
block40729:
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
	 jl block40727
	jmp block40728
block40731:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40729
block40730:
	movq $0, %rcx
	jmp block40729
block40732:
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
	 jl block40730
	jmp block40731
block40734:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40732
block40733:
	movq $0, %rcx
	jmp block40732
block40735:
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
	 jl block40733
	jmp block40734
block40737:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40735
block40736:
	movq $0, %rcx
	jmp block40735
block40738:
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
	 jl block40736
	jmp block40737
block40739:
	movq $0, %rcx
	jmp block40738
block40740:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40738
block40741:
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
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block40739
	jmp block40740
block40743:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40741
block40742:
	movq $0, %rcx
	jmp block40741
block40744:
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
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block40742
	jmp block40743
block40746:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40744
block40745:
	movq $0, %rcx
	jmp block40744
block40747:
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
	 jl block40745
	jmp block40746
block40749:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40747
block40748:
	movq $0, %rcx
	jmp block40747
block40750:
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
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block40748
	jmp block40749
block40751:
	movq $0, %rcx
	jmp block40750
block40752:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40750
block40753:
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
	 jl block40751
	jmp block40752
block40755:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40753
block40754:
	movq $0, %rcx
	jmp block40753
block40756:
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
	 jl block40754
	jmp block40755
block40758:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40756
block40757:
	movq $0, %rcx
	jmp block40756
block40759:
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
	 jl block40757
	jmp block40758
block40761:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40759
block40760:
	movq $0, %rcx
	jmp block40759
block40762:
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
	 jl block40760
	jmp block40761
block40763:
	movq $0, %rcx
	jmp block40762
block40764:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40762
block40765:
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
	 jl block40763
	jmp block40764
block40767:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40765
block40766:
	movq $0, %rcx
	jmp block40765
block40768:
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
	 jl block40766
	jmp block40767
block40770:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40768
block40769:
	movq $0, %rcx
	jmp block40768
block40771:
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
	 jl block40769
	jmp block40770
block40773:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40771
block40772:
	movq $0, %rcx
	jmp block40771
block40774:
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
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block40772
	jmp block40773
block40775:
	movq $0, %rcx
	jmp block40774
block40776:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block40774
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block40775
	jmp block40776
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

