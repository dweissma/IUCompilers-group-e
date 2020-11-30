.globl main
.align 16
block73900:
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
	movq 128(%r15), %r11
	movq 8(%r11), %rsi
	movq 120(%r15), %r11
	movq 8(%r11), %rdi
	movq 112(%r15), %r11
	movq 8(%r11), %r8
	movq 144(%r15), %r11
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
block73902:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73900
block73901:
	movq $0, %rcx
	jmp block73900
block73903:
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
	 jl block73901
	jmp block73902
block73905:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73903
block73904:
	movq $0, %rcx
	jmp block73903
block73906:
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
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block73904
	jmp block73905
block73908:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73906
block73907:
	movq $0, %rcx
	jmp block73906
block73909:
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
	 jl block73907
	jmp block73908
block73911:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73909
block73910:
	movq $0, %rcx
	jmp block73909
block73912:
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
	 jl block73910
	jmp block73911
block73914:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73912
block73913:
	movq $0, %rcx
	jmp block73912
block73915:
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
	 jl block73913
	jmp block73914
block73917:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73915
block73916:
	movq $0, %rcx
	jmp block73915
block73918:
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
	 jl block73916
	jmp block73917
block73920:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73918
block73919:
	movq $0, %rcx
	jmp block73918
block73921:
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
	 jl block73919
	jmp block73920
block73923:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73921
block73922:
	movq $0, %rcx
	jmp block73921
block73924:
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
	 jl block73922
	jmp block73923
block73926:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73924
block73925:
	movq $0, %rcx
	jmp block73924
block73927:
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
	 jl block73925
	jmp block73926
block73929:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73927
block73928:
	movq $0, %rcx
	jmp block73927
block73930:
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
	 jl block73928
	jmp block73929
block73932:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73930
block73931:
	movq $0, %rcx
	jmp block73930
block73933:
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
	 jl block73931
	jmp block73932
block73935:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73933
block73934:
	movq $0, %rcx
	jmp block73933
block73936:
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
	 jl block73934
	jmp block73935
block73938:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73936
block73937:
	movq $0, %rcx
	jmp block73936
block73939:
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
	 jl block73937
	jmp block73938
block73941:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73939
block73940:
	movq $0, %rcx
	jmp block73939
block73942:
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
	 jl block73940
	jmp block73941
block73944:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73942
block73943:
	movq $0, %rcx
	jmp block73942
block73945:
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
	 jl block73943
	jmp block73944
block73947:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73945
block73946:
	movq $0, %rcx
	jmp block73945
block73948:
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
	 jl block73946
	jmp block73947
block73950:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73948
block73949:
	movq $0, %rcx
	jmp block73948
block73951:
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
	 jl block73949
	jmp block73950
block73953:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73951
block73952:
	movq $0, %rcx
	jmp block73951
block73954:
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
	 jl block73952
	jmp block73953
block73956:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73954
block73955:
	movq $0, %rcx
	jmp block73954
block73957:
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
	 jl block73955
	jmp block73956
block73959:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73957
block73958:
	movq $0, %rcx
	jmp block73957
block73960:
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
	 jl block73958
	jmp block73959
block73962:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block73960
block73961:
	movq $0, %rcx
	jmp block73960
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block73961
	jmp block73962
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

