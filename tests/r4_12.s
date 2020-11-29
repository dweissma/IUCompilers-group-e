.globl id
.align 16
idstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp idconclusion
id:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp idstart
idconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl f
.align 16
block78758:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq -24(%rbp), %rsi
	movq %rcx, %rdx
	movq 16(%r15), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block78760:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block78758
block78759:
	movq $0, %rcx
	jmp block78758
block78761:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq %r12, -24(%rbp)
	addq $1, -24(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r12
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78759
	jmp block78760
block78763:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78761
block78762:
	movq $0, %rcx
	jmp block78761
block78764:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, 16(%r15)
	leaq f(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78762
	jmp block78763
block78766:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78764
block78765:
	movq $0, %rcx
	jmp block78764
block78768:
	leaq f(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78765
	jmp block78766
block78767:
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rbx, %r11
	movq 8(%r11), %rdx
	movq %rbx, %r11
	movq 16(%r11), %rsi
	movq %rsi, %r11
	movq 8(%r11), %rsi
	movq %rdx, %rdi
	movq %rcx, %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
fstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq %rdx, %rbx
	cmpq $100, %r12
	 je block78767
	jmp block78768
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 
.globl main
.align 16
block78769:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq $0, %rsi
	movq %rcx, %rdx
	movq %r13, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block78771:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block78769
block78770:
	movq $0, %rcx
	jmp block78769
block78772:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block78770
	jmp block78771
block78774:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78772
block78773:
	movq $0, %rcx
	jmp block78772
block78775:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r12
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78773
	jmp block78774
block78777:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78775
block78776:
	movq $0, %rcx
	jmp block78775
block78778:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq id(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78776
	jmp block78777
block78780:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78778
block78779:
	movq $0, %rcx
	jmp block78778
block78781:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78779
	jmp block78780
block78783:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78781
block78782:
	movq $0, %rcx
	jmp block78781
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78782
	jmp block78783
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

