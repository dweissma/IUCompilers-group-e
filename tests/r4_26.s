.globl g
.align 16
block12739:
	movq $0, %rax
	jmp gconclusion
block12733:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 16(%r15), %r11
	movq 8(%r11), %rdx
	movq %rdx, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rcx, %rdi
	movq %rdx, %rsi
	movq %rbx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block12735:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12733
block12734:
	movq $0, %rcx
	jmp block12733
block12736:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	leaq g(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12734
	jmp block12735
block12738:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12736
block12737:
	movq $0, %rcx
	jmp block12736
block12740:
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12737
	jmp block12738
block12741:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	cmpq $0, %r12
	 je block12739
	jmp block12740
block12743:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12741
block12742:
	movq $0, %rcx
	jmp block12741
gstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12742
	jmp block12743
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 
.globl main
.align 16
block12744:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $1000, %rsi
	callq *%r14
	movq %rax, %rdx
	movq $32, %rcx
	addq %rdx, %rcx
	movq %r12, %r11
	movq 8(%r11), %rdx
	movq 80(%r15), %r11
	movq 8(%r11), %rsi
	movq 72(%r15), %r11
	movq 8(%r11), %rdi
	movq 64(%r15), %r11
	movq 8(%r11), %r8
	movq 56(%r15), %r11
	movq 8(%r11), %r9
	movq 48(%r15), %r11
	movq 8(%r11), %r10
	movq 40(%r15), %r11
	movq 8(%r11), %rbx
	movq 32(%r15), %r11
	movq 8(%r11), %r12
	movq 24(%r15), %r11
	movq 8(%r11), %r13
	movq 16(%r15), %r11
	movq 8(%r11), %r11
	addq %r11, %r13
	movq %r12, %r11
	addq %r13, %r11
	addq %r11, %rbx
	addq %rbx, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp mainconclusion
block12746:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12744
block12745:
	movq $0, %rcx
	jmp block12744
block12747:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq g(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12745
	jmp block12746
block12749:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12747
block12748:
	movq $0, %rcx
	jmp block12747
block12750:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	leaq g(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12748
	jmp block12749
block12752:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12750
block12751:
	movq $0, %rcx
	jmp block12750
block12753:
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
	 jl block12751
	jmp block12752
block12755:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12753
block12754:
	movq $0, %rcx
	jmp block12753
block12756:
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
	 jl block12754
	jmp block12755
block12757:
	movq $0, %rcx
	jmp block12756
block12758:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12756
block12759:
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
	 jl block12757
	jmp block12758
block12761:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12759
block12760:
	movq $0, %rcx
	jmp block12759
block12762:
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
	 jl block12760
	jmp block12761
block12764:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12762
block12763:
	movq $0, %rcx
	jmp block12762
block12765:
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
	 jl block12763
	jmp block12764
block12767:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12765
block12766:
	movq $0, %rcx
	jmp block12765
block12768:
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
	 jl block12766
	jmp block12767
block12769:
	movq $0, %rcx
	jmp block12768
block12770:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12768
block12771:
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
	 jl block12769
	jmp block12770
block12773:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12771
block12772:
	movq $0, %rcx
	jmp block12771
block12774:
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
	 jl block12772
	jmp block12773
block12776:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12774
block12775:
	movq $0, %rcx
	jmp block12774
block12777:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12775
	jmp block12776
block12779:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12777
block12778:
	movq $0, %rcx
	jmp block12777
mainstart:
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12778
	jmp block12779
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

