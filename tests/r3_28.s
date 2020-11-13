.globl main
.align 16
block85811:
	movq free_ptr(%rip), %rcx
	addq $112, free_ptr(%rip)
	movq %rcx, %r11
	movq $786331, 0(%r11)
	movq %rcx, %r11
	movq 80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 64(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 56(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 88(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 96(%r11), %rax
	jmp mainconclusion
block85813:
	movq %r15, %rdi
	movq $104, %rsi
	callq collect
	jmp block85811
block85812:
	movq $0, %rdx
	jmp block85811
block85814:
	movq free_ptr(%rip), %rcx
	addq $104, free_ptr(%rip)
	movq %rcx, %r11
	movq $393113, 0(%r11)
	movq %rcx, %r11
	movq 72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 64(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 96(%r11)
	movq $0, %rdx
	movq %rcx, 80(%r15)
	movq %r14, 88(%r15)
	movq $42, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $104, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85812
	jmp block85813
block85816:
	movq %r15, %rdi
	movq $96, %rsi
	callq collect
	jmp block85814
block85815:
	movq $0, %rdx
	jmp block85814
block85817:
	movq free_ptr(%rip), %rcx
	addq $96, free_ptr(%rip)
	movq %rcx, %r11
	movq $196503, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 64(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 88(%r11)
	movq $0, %rdx
	movq %rcx, 72(%r15)
	movq $42, -80(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $96, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85815
	jmp block85816
block85819:
	movq %r15, %rdi
	movq $88, %rsi
	callq collect
	jmp block85817
block85818:
	movq $0, %rdx
	jmp block85817
block85820:
	movq free_ptr(%rip), %rcx
	addq $88, free_ptr(%rip)
	movq %rcx, %r11
	movq $98197, 0(%r11)
	movq %rcx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 80(%r11)
	movq $0, %rdx
	movq %rcx, %rbx
	movq $42, -72(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $88, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85818
	jmp block85819
block85822:
	movq %r15, %rdi
	movq $80, %rsi
	callq collect
	jmp block85820
block85821:
	movq $0, %rdx
	jmp block85820
block85823:
	movq free_ptr(%rip), %rcx
	addq $80, free_ptr(%rip)
	movq %rcx, %r11
	movq $49043, 0(%r11)
	movq %rcx, %r11
	movq 56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 72(%r11)
	movq $0, %rdx
	movq %rcx, 64(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $80, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85821
	jmp block85822
block85825:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	jmp block85823
block85824:
	movq $0, %rdx
	jmp block85823
block85826:
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $24465, 0(%r11)
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 64(%r11)
	movq $0, %rdx
	movq %rcx, 56(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $72, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85824
	jmp block85825
block85828:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block85826
block85827:
	movq $0, %rdx
	jmp block85826
block85829:
	movq free_ptr(%rip), %rcx
	addq $64, free_ptr(%rip)
	movq %rcx, %r11
	movq $12175, 0(%r11)
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 56(%r11)
	movq $0, %rdx
	movq %rcx, 48(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85827
	jmp block85828
block85831:
	movq %r15, %rdi
	movq $56, %rsi
	callq collect
	jmp block85829
block85830:
	movq $0, %rdx
	jmp block85829
block85832:
	movq free_ptr(%rip), %rcx
	addq $56, free_ptr(%rip)
	movq %rcx, %r11
	movq $6029, 0(%r11)
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 48(%r11)
	movq $0, %rdx
	movq %rcx, 40(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $56, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85830
	jmp block85831
block85834:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	jmp block85832
block85833:
	movq $0, %rdx
	jmp block85832
block85835:
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $2955, 0(%r11)
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 40(%r11)
	movq $0, %rdx
	movq %rcx, 32(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $48, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85833
	jmp block85834
block85837:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block85835
block85836:
	movq $0, %rdx
	jmp block85835
block85838:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1417, 0(%r11)
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rcx, 24(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85836
	jmp block85837
block85839:
	movq $0, %rdx
	jmp block85838
block85840:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block85838
block85841:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $647, 0(%r11)
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rcx, 16(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85839
	jmp block85840
block85843:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block85841
block85842:
	movq $0, %rdx
	jmp block85841
block85844:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r14
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85842
	jmp block85843
block85846:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block85844
block85845:
	movq $0, %rdx
	jmp block85844
block85847:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %r13
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85845
	jmp block85846
block85849:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block85847
block85848:
	movq $0, %rdx
	jmp block85847
mainstart:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $0, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85848
	jmp block85849
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
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
	popq %r14
	popq %r13
	popq %rbp
	retq 

