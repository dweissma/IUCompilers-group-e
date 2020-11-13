.globl main
.align 16
block84878:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 152(%r15), %r11
	movq 8(%r11), %rdx
	movq 144(%r15), %r11
	movq 8(%r11), %rsi
	movq 136(%r15), %r11
	movq 8(%r11), %rdi
	movq 128(%r15), %r11
	movq 8(%r11), %r8
	movq 112(%r15), %r11
	movq 8(%r11), %r9
	movq 104(%r15), %r11
	movq 8(%r11), %r10
	movq 96(%r15), %r11
	movq 8(%r11), %rbx
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
	movq %r13, %r11
	movq 8(%r11), %r13
	movq %r12, %r11
	movq 8(%r11), %r12
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq %r12, %r11
	addq %rcx, %r11
	movq %r13, %rcx
	addq %r11, %rcx
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
block84880:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84878
block84879:
	movq $0, %rcx
	jmp block84878
block84881:
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
	 jl block84879
	jmp block84880
block84883:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84881
block84882:
	movq $0, %rcx
	jmp block84881
block84884:
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
	 jl block84882
	jmp block84883
block84886:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84884
block84885:
	movq $0, %rcx
	jmp block84884
block84887:
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
	 jl block84885
	jmp block84886
block84889:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84887
block84888:
	movq $0, %rcx
	jmp block84887
block84890:
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
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84888
	jmp block84889
block84892:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84890
block84891:
	movq $0, %rcx
	jmp block84890
block84893:
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
	 jl block84891
	jmp block84892
block84895:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84893
block84894:
	movq $0, %rcx
	jmp block84893
block84896:
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
	 jl block84894
	jmp block84895
block84898:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84896
block84897:
	movq $0, %rcx
	jmp block84896
block84899:
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
	 jl block84897
	jmp block84898
block84901:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84899
block84900:
	movq $0, %rcx
	jmp block84899
block84902:
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
	 jl block84900
	jmp block84901
block84904:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84902
block84903:
	movq $0, %rcx
	jmp block84902
block84905:
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
	 jl block84903
	jmp block84904
block84907:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84905
block84906:
	movq $0, %rcx
	jmp block84905
block84908:
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
	 jl block84906
	jmp block84907
block84910:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84908
block84909:
	movq $0, %rcx
	jmp block84908
block84911:
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
	 jl block84909
	jmp block84910
block84913:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84911
block84912:
	movq $0, %rcx
	jmp block84911
block84914:
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
	 jl block84912
	jmp block84913
block84916:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84914
block84915:
	movq $0, %rcx
	jmp block84914
block84917:
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
	 jl block84915
	jmp block84916
block84919:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84917
block84918:
	movq $0, %rcx
	jmp block84917
block84920:
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
	 jl block84918
	jmp block84919
block84922:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84920
block84921:
	movq $0, %rcx
	jmp block84920
block84923:
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
	 jl block84921
	jmp block84922
block84925:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84923
block84924:
	movq $0, %rcx
	jmp block84923
block84926:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 112(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84924
	jmp block84925
block84928:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84926
block84927:
	movq $0, %rcx
	jmp block84926
block84929:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 128(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84927
	jmp block84928
block84931:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84929
block84930:
	movq $0, %rcx
	jmp block84929
block84932:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 136(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84930
	jmp block84931
block84934:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84932
block84933:
	movq $0, %rcx
	jmp block84932
block84935:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 144(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84933
	jmp block84934
block84937:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84935
block84936:
	movq $0, %rcx
	jmp block84935
block84938:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 152(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84936
	jmp block84937
block84940:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84938
block84939:
	movq $0, %rcx
	jmp block84938
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84939
	jmp block84940
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

