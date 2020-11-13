.globl minus
.align 16
minusstart:
	movq %rdi, %rcx
	movq %rsi, %rdx
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
block88857:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp zconclusion
block88859:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88857
block88858:
	movq $0, %rcx
	jmp block88857
block88884:
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88858
	jmp block88859
block88860:
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
	movq %r13, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq z(%rip), %rbx
	leaq minus(%rip), %rcx
	movq -16(%rbp), %rdi
	movq $1, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rdi
	movq %rbx, %rax
	subq $0, %r15
	addq $136, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block88862:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block88860
block88861:
	movq $0, %rcx
	jmp block88860
block88863:
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
	movq -32(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 56(%r15)
	movq %rcx, 24(%r15)
	movq %rbx, 48(%r15)
	movq %rcx, %r13
	movq %rbx, 40(%r15)
	movq %rcx, %r12
	movq %rbx, 32(%r15)
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88861
	jmp block88862
block88865:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block88863
block88864:
	movq $0, %rcx
	jmp block88863
block88866:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -136(%rbp)
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
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, %r13
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88864
	jmp block88865
block88867:
	movq $0, %rcx
	jmp block88866
block88868:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block88866
block88869:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88867
	jmp block88868
block88871:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88869
block88870:
	movq $0, %rcx
	jmp block88869
block88872:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $5, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88870
	jmp block88871
block88874:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88872
block88873:
	movq $0, %rcx
	jmp block88872
block88875:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $4, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88873
	jmp block88874
block88877:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88875
block88876:
	movq $0, %rcx
	jmp block88875
block88878:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88876
	jmp block88877
block88879:
	movq $0, %rcx
	jmp block88878
block88880:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88878
block88881:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88879
	jmp block88880
block88883:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88881
block88882:
	movq $0, %rcx
	jmp block88881
block88885:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88882
	jmp block88883
zstart:
	movq %rdi, -16(%rbp)
	cmpq $0, -16(%rbp)
	 je block88884
	jmp block88885
z:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $136, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp zstart
zconclusion:
	subq $0, %r15
	addq $136, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl o
.align 16
block88886:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp oconclusion
block88889:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
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
	movq 16(%r15), %rax
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
	leaq o(%rip), %rbx
	leaq minus(%rip), %rcx
	movq -64(%rbp), %rdi
	movq $1, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rdi
	movq 56(%r15), %rsi
	movq %rbx, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block88891:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block88889
block88890:
	movq $0, %rcx
	jmp block88889
block88892:
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
	movq -144(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
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
	movq -40(%rbp), %rax
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
	movq %rbx, 40(%r15)
	movq %rcx, 32(%r15)
	movq %rbx, 24(%r15)
	movq %rcx, 16(%r15)
	movq %rbx, %r14
	movq %rcx, %r13
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88890
	jmp block88891
block88894:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block88892
block88893:
	movq $0, %rcx
	jmp block88892
block88895:
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
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -40(%rbp)
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
	 jl block88893
	jmp block88894
block88897:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block88895
block88896:
	movq $0, %rcx
	jmp block88895
block88898:
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
	 jl block88896
	jmp block88897
block88900:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88898
block88899:
	movq $0, %rcx
	jmp block88898
block88901:
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
	 jl block88899
	jmp block88900
block88903:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88901
block88902:
	movq $0, %rcx
	jmp block88901
block88904:
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
	 jl block88902
	jmp block88903
block88906:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88904
block88905:
	movq $0, %rcx
	jmp block88904
block88907:
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
	 jl block88905
	jmp block88906
block88909:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88907
block88908:
	movq $0, %rcx
	jmp block88907
block88910:
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
	 jl block88908
	jmp block88909
block88912:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88910
block88911:
	movq $0, %rcx
	jmp block88910
block88888:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88886
block88887:
	movq $0, %rcx
	jmp block88886
block88914:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88911
	jmp block88912
block88913:
	movq 56(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88887
	jmp block88888
ostart:
	movq %rdi, -64(%rbp)
	movq %rsi, 56(%r15)
	cmpq $0, -64(%rbp)
	 je block88913
	jmp block88914
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
block88915:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp tconclusion
block88916:
	movq $0, %rcx
	jmp block88915
block88917:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88915
block88942:
	movq 56(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88916
	jmp block88917
block88918:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
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
	movq 16(%r15), %rax
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
	leaq t(%rip), %rbx
	leaq minus(%rip), %rcx
	movq -64(%rbp), %rdi
	movq $1, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rdi
	movq 56(%r15), %rsi
	movq %rbx, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block88920:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block88918
block88919:
	movq $0, %rcx
	jmp block88918
block88921:
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
	movq -128(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
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
	movq -40(%rbp), %rax
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
	movq %rbx, 40(%r15)
	movq %rcx, 32(%r15)
	movq %rbx, 24(%r15)
	movq %rcx, 16(%r15)
	movq %rbx, %r14
	movq %rcx, %r13
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88919
	jmp block88920
block88922:
	movq $0, %rcx
	jmp block88921
block88923:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block88921
block88924:
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
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -40(%rbp)
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
	 jl block88922
	jmp block88923
block88926:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block88924
block88925:
	movq $0, %rcx
	jmp block88924
block88927:
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
	 jl block88925
	jmp block88926
block88929:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88927
block88928:
	movq $0, %rcx
	jmp block88927
block88930:
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
	 jl block88928
	jmp block88929
block88932:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88930
block88931:
	movq $0, %rcx
	jmp block88930
block88933:
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
	 jl block88931
	jmp block88932
block88934:
	movq $0, %rcx
	jmp block88933
block88935:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88933
block88936:
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
	 jl block88934
	jmp block88935
block88938:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88936
block88937:
	movq $0, %rcx
	jmp block88936
block88939:
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
	 jl block88937
	jmp block88938
block88941:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88939
block88940:
	movq $0, %rcx
	jmp block88939
block88943:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88940
	jmp block88941
tstart:
	movq %rdi, -64(%rbp)
	movq %rsi, 56(%r15)
	cmpq $0, -64(%rbp)
	 je block88942
	jmp block88943
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
block88944:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp hconclusion
block88947:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
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
	leaq h(%rip), %r13
	leaq minus(%rip), %rcx
	movq %rbx, %rdi
	movq $1, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rdi
	movq 64(%r15), %rsi
	movq %r13, %rax
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block88949:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block88947
block88948:
	movq $0, %rcx
	jmp block88947
block88950:
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
	movq -128(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
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
	movq -32(%rbp), %rax
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
	movq %r13, 56(%r15)
	movq %rcx, 48(%r15)
	movq %r13, 40(%r15)
	movq %rcx, 32(%r15)
	movq %r13, 24(%r15)
	movq %rcx, 16(%r15)
	movq %r13, %r14
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88948
	jmp block88949
block88952:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block88950
block88951:
	movq $0, %rcx
	jmp block88950
block88953:
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
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88951
	jmp block88952
block88955:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block88953
block88954:
	movq $0, %rcx
	jmp block88953
block88956:
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
	 jl block88954
	jmp block88955
block88958:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88956
block88957:
	movq $0, %rcx
	jmp block88956
block88959:
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
	 jl block88957
	jmp block88958
block88961:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88959
block88960:
	movq $0, %rcx
	jmp block88959
block88962:
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
	 jl block88960
	jmp block88961
block88964:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88962
block88963:
	movq $0, %rcx
	jmp block88962
block88965:
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
	 jl block88963
	jmp block88964
block88967:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88965
block88966:
	movq $0, %rcx
	jmp block88965
block88968:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $2, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88966
	jmp block88967
block88970:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88968
block88969:
	movq $0, %rcx
	jmp block88968
block88946:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88944
block88945:
	movq $0, %rcx
	jmp block88944
block88972:
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88969
	jmp block88970
block88971:
	movq 64(%r15), %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block88945
	jmp block88946
hstart:
	movq %rdi, %rbx
	movq %rsi, 64(%r15)
	cmpq $0, %rbx
	 je block88971
	jmp block88972
h:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $152, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hstart
hconclusion:
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl f
.align 16
block88973:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp fconclusion
block88975:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88973
block88974:
	movq $0, %rcx
	jmp block88973
block89000:
	movq 56(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88974
	jmp block88975
block88976:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
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
	movq 16(%r15), %rax
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
	leaq f(%rip), %rbx
	leaq minus(%rip), %rcx
	movq -64(%rbp), %rdi
	movq $1, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rdi
	movq 56(%r15), %rsi
	movq %rbx, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block88978:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block88976
block88977:
	movq $0, %rcx
	jmp block88976
block88979:
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
	movq -128(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
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
	movq -40(%rbp), %rax
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
	movq %rbx, 40(%r15)
	movq %rcx, 32(%r15)
	movq %rbx, 24(%r15)
	movq %rcx, 16(%r15)
	movq %rbx, %r14
	movq %rcx, %r13
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88977
	jmp block88978
block88981:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block88979
block88980:
	movq $0, %rcx
	jmp block88979
block88982:
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
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -40(%rbp)
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
	 jl block88980
	jmp block88981
block88984:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block88982
block88983:
	movq $0, %rcx
	jmp block88982
block88985:
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
	 jl block88983
	jmp block88984
block88986:
	movq $0, %rcx
	jmp block88985
block88987:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88985
block88988:
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
	 jl block88986
	jmp block88987
block88990:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88988
block88989:
	movq $0, %rcx
	jmp block88988
block88991:
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
	 jl block88989
	jmp block88990
block88993:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88991
block88992:
	movq $0, %rcx
	jmp block88991
block88994:
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
	 jl block88992
	jmp block88993
block88996:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88994
block88995:
	movq $0, %rcx
	jmp block88994
block88997:
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
	 jl block88995
	jmp block88996
block88998:
	movq $0, %rcx
	jmp block88997
block88999:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88997
block89001:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88998
	jmp block88999
fstart:
	movq %rdi, -64(%rbp)
	movq %rsi, 56(%r15)
	cmpq $0, -64(%rbp)
	 je block89000
	jmp block89001
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl e
.align 16
block89002:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp econclusion
block89005:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
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
	leaq e(%rip), %r13
	leaq minus(%rip), %rcx
	movq %r12, %rdi
	movq $1, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rdi
	movq %rbx, %rsi
	movq %r13, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block89007:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block89005
block89006:
	movq $0, %rcx
	jmp block89005
block89008:
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
	movq -128(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
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
	movq -32(%rbp), %rax
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
	movq %r13, 56(%r15)
	movq %rcx, 48(%r15)
	movq %r13, 40(%r15)
	movq %rcx, 32(%r15)
	movq %r13, 24(%r15)
	movq %rcx, 16(%r15)
	movq %r13, %r14
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89006
	jmp block89007
block89010:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block89008
block89009:
	movq $0, %rcx
	jmp block89008
block89011:
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
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89009
	jmp block89010
block89013:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block89011
block89012:
	movq $0, %rcx
	jmp block89011
block89014:
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
	 jl block89012
	jmp block89013
block89016:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89014
block89015:
	movq $0, %rcx
	jmp block89014
block89017:
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
	 jl block89015
	jmp block89016
block89019:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89017
block89018:
	movq $0, %rcx
	jmp block89017
block89020:
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
	 jl block89018
	jmp block89019
block89022:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89020
block89021:
	movq $0, %rcx
	jmp block89020
block89023:
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
	 jl block89021
	jmp block89022
block89025:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89023
block89024:
	movq $0, %rcx
	jmp block89023
block89026:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $2, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89024
	jmp block89025
block89028:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89026
block89027:
	movq $0, %rcx
	jmp block89026
block89004:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block89002
block89003:
	movq $0, %rcx
	jmp block89002
block89030:
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89027
	jmp block89028
block89029:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89003
	jmp block89004
estart:
	movq %rdi, %r12
	movq %rsi, %rbx
	cmpq $0, %r12
	 je block89029
	jmp block89030
e:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp estart
econclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
mainstart:
	leaq e(%rip), %rbx
	leaq f(%rip), %rax
	movq %rax, -24(%rbp)
	leaq h(%rip), %rax
	movq %rax, -16(%rbp)
	leaq t(%rip), %r14
	leaq o(%rip), %r13
	leaq z(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, %rcx
	movq $20, %rdi
	movq %rcx, %rsi
	callq *%r13
	movq %rax, %rcx
	movq $20, %rdi
	movq %rcx, %rsi
	callq *%r14
	movq %rax, %rcx
	movq $20, %rdi
	movq %rcx, %rsi
	callq *-16(%rbp)
	movq %rax, %rcx
	movq $20, %rdi
	movq %rcx, %rsi
	callq *-24(%rbp)
	movq %rax, %rcx
	movq $20, %rdi
	movq %rcx, %rsi
	callq *%rbx
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
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
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
	popq %r14
	popq %r13
	popq %rbp
	retq 

