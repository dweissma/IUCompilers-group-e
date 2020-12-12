.globl f
.align 16
block156772:
	movq $1, %rax
	jmp fconclusion
block156770:
	movq $0, %rax
	jmp fconclusion
block156774:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $2, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r14, %rax
	addq %rcx, %rax
	jmp fconclusion
block156776:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156774
block156775:
	movq $0, %rcx
	jmp block156774
block156777:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $1, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %r14
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156775
	jmp block156776
block156779:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156777
block156778:
	movq $0, %rcx
	jmp block156777
block156773:
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156778
	jmp block156779
block156771:
	cmpq $1, %r12
	 je block156772
	jmp block156773
fstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $0, %r12
	 je block156770
	jmp block156771
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl g
.align 16
block156784:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq %rsi, %r11
	movq 8(%r11), %r8
	movq $1, %rcx
	negq %rcx
	movq %r14, %rdx
	addq %rcx, %rdx
	movq %r13, %rcx
	addq %r12, %rcx
	movq %rsi, %rdi
	movq %rdx, %rsi
	movq %r12, %rdx
	movq %r8, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block156786:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156784
block156785:
	movq $0, %rcx
	jmp block156784
block156783:
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156785
	jmp block156786
block156782:
	movq %r12, %rax
	jmp gconclusion
block156781:
	cmpq $1, %r14
	 je block156782
	jmp block156783
block156780:
	movq %r13, %rax
	jmp gconclusion
gstart:
	movq %rsi, %r14
	movq %rdx, %r13
	movq %rcx, %r12
	cmpq $0, %r14
	 je block156780
	jmp block156781
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block156787:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r8
	movq %rcx, %rdi
	movq $8, %rsi
	movq $0, %rdx
	movq $1, %rcx
	callq *%r8
	movq %rax, %rcx
	movq %r13, %rax
	addq %rcx, %rax
	jmp mainconclusion
block156789:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156787
block156788:
	movq $0, %rcx
	jmp block156787
block156790:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $8, %rsi
	callq *%rcx
	movq %rax, %r13
	leaq g(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156788
	jmp block156789
block156792:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156790
block156791:
	movq $0, %rcx
	jmp block156790
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156791
	jmp block156792
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

