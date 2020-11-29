.globl main
.align 16
block8739:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rax
	addq $22, %rax
	jmp mainconclusion
block8741:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8739
block8740:
	movq $0, %rcx
	jmp block8739
block8742:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -32(%rbp)
	movq $2, -24(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8740
	jmp block8741
block8744:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8742
block8743:
	movq $0, %rcx
	jmp block8742
block8745:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -32(%rbp)
	movq $2, -24(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8743
	jmp block8744
block8747:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8745
block8746:
	movq $0, %rcx
	jmp block8745
block8748:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -32(%rbp)
	movq $2, -24(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8746
	jmp block8747
block8750:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8748
block8749:
	movq $0, %rcx
	jmp block8748
block8751:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -32(%rbp)
	movq $2, -24(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8749
	jmp block8750
block8753:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8751
block8752:
	movq $0, %rcx
	jmp block8751
block8754:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -24(%rbp)
	movq $2, -32(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8752
	jmp block8753
block8756:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8754
block8755:
	movq $0, %rcx
	jmp block8754
block8757:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -24(%rbp)
	movq $2, -32(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8755
	jmp block8756
block8759:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8757
block8758:
	movq $0, %rcx
	jmp block8757
block8760:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -16(%rbp)
	movq $2, -32(%rbp)
	movq $3, %r12
	movq $4, %rbx
	movq $5, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8758
	jmp block8759
block8762:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8760
block8761:
	movq $0, %rcx
	jmp block8760
block8763:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $2059, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -32(%rbp)
	movq $2, -24(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block8761
	jmp block8762
block8765:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8763
block8764:
	movq $0, %rcx
	jmp block8763
block8766:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $1035, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -32(%rbp)
	movq $2, -24(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8764
	jmp block8765
block8768:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8766
block8767:
	movq $0, %rcx
	jmp block8766
block8769:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $523, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, %r12
	movq $2, %rbx
	movq $3, -32(%rbp)
	movq %rcx, 24(%r15)
	movq $5, -16(%rbp)
	movq free_ptr(%rip), %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block8767
	jmp block8768
block8771:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8769
block8770:
	movq $0, %rcx
	jmp block8769
block8772:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $267, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -32(%rbp)
	movq $2, -24(%rbp)
	movq %rcx, 16(%r15)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8770
	jmp block8771
block8774:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8772
block8773:
	movq $0, %rcx
	jmp block8772
block8775:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $139, 0(%r11)
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, -32(%rbp)
	movq %rcx, 24(%r15)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8773
	jmp block8774
block8777:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8775
block8776:
	movq $0, %rcx
	jmp block8775
block8778:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 32(%r15)
	movq $2, -24(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8776
	jmp block8777
block8780:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8778
block8779:
	movq $0, %rcx
	jmp block8778
block8781:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $1, -32(%rbp)
	movq $2, -24(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8779
	jmp block8780
block8783:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8781
block8782:
	movq $0, %rcx
	jmp block8781
mainstart:
	movq $20, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8782
	jmp block8783
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $40, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $40, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 

