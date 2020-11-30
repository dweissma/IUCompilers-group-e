.globl main
.align 16
block74845:
	movq free_ptr(%rip), %rcx
	addq $112, free_ptr(%rip)
	movq %rcx, %r11
	movq $786331, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 72(%r15), %rax
	movq %rax, 16(%r11)
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
	movq 88(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 96(%r11), %rax
	jmp mainconclusion
block74847:
	movq %r15, %rdi
	movq $104, %rsi
	callq collect
	jmp block74845
block74846:
	movq $0, %rdx
	jmp block74845
block74848:
	movq free_ptr(%rip), %rcx
	addq $104, free_ptr(%rip)
	movq %rcx, %r11
	movq $393113, 0(%r11)
	movq %rcx, %r11
	movq 72(%r15), %rax
	movq %rax, 8(%r11)
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
	movq %r13, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r12
	movq %r13, 88(%r15)
	movq $42, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $104, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74846
	jmp block74847
block74850:
	movq %r15, %rdi
	movq $96, %rsi
	callq collect
	jmp block74848
block74849:
	movq $0, %rdx
	jmp block74848
block74851:
	movq free_ptr(%rip), %rcx
	addq $96, free_ptr(%rip)
	movq %rcx, %r11
	movq $196503, 0(%r11)
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
	movq %r13, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 88(%r11)
	movq $0, %rdx
	movq %rcx, 72(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $96, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74849
	jmp block74850
block74853:
	movq %r15, %rdi
	movq $88, %rsi
	callq collect
	jmp block74851
block74852:
	movq $0, %rdx
	jmp block74851
block74854:
	movq free_ptr(%rip), %rcx
	addq $88, free_ptr(%rip)
	movq %rcx, %r11
	movq $98197, 0(%r11)
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
	movq %r13, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 80(%r11)
	movq $0, %rdx
	movq %rcx, 64(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $88, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74852
	jmp block74853
block74856:
	movq %r15, %rdi
	movq $80, %rsi
	callq collect
	jmp block74854
block74855:
	movq $0, %rdx
	jmp block74854
block74857:
	movq free_ptr(%rip), %rcx
	addq $80, free_ptr(%rip)
	movq %rcx, %r11
	movq $49043, 0(%r11)
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
	movq %r13, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 72(%r11)
	movq $0, %rdx
	movq %rcx, 56(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $80, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74855
	jmp block74856
block74859:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	jmp block74857
block74858:
	movq $0, %rdx
	jmp block74857
block74860:
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $24465, 0(%r11)
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
	movq %r13, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rdx
	movq %rcx, 48(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $72, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74858
	jmp block74859
block74862:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block74860
block74861:
	movq $0, %rdx
	jmp block74860
block74863:
	movq free_ptr(%rip), %rcx
	addq $64, free_ptr(%rip)
	movq %rcx, %r11
	movq $12175, 0(%r11)
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
	movq %r13, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 56(%r11)
	movq $0, %rdx
	movq %rcx, 40(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74861
	jmp block74862
block74865:
	movq %r15, %rdi
	movq $56, %rsi
	callq collect
	jmp block74863
block74864:
	movq $0, %rdx
	jmp block74863
block74866:
	movq free_ptr(%rip), %rcx
	addq $56, free_ptr(%rip)
	movq %rcx, %r11
	movq $6029, 0(%r11)
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
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 48(%r11)
	movq $0, %rdx
	movq %rcx, 32(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $56, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74864
	jmp block74865
block74868:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	jmp block74866
block74867:
	movq $0, %rdx
	jmp block74866
block74869:
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $2955, 0(%r11)
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rdx
	movq %rcx, 24(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $48, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74867
	jmp block74868
block74871:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block74869
block74870:
	movq $0, %rdx
	jmp block74869
block74872:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1417, 0(%r11)
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rdx
	movq %rcx, 16(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74870
	jmp block74871
block74874:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block74872
block74873:
	movq $0, %rdx
	jmp block74872
block74875:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $647, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r14
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74873
	jmp block74874
block74877:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block74875
block74876:
	movq $0, %rdx
	jmp block74875
block74878:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r13
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74876
	jmp block74877
block74880:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block74878
block74879:
	movq $0, %rdx
	jmp block74878
block74881:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %rbx
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74879
	jmp block74880
block74883:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block74881
block74882:
	movq $0, %rdx
	jmp block74881
mainstart:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $0, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74882
	jmp block74883
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

