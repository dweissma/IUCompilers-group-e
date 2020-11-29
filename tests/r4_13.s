.globl zero
.align 16
block78854:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %rax
	jmp zeroconclusion
block78856:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block78854
block78855:
	movq $0, %rcx
	jmp block78854
block78866:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $0, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78855
	jmp block78856
block78857:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	negq %rdx
	addq %rdx, %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	movq %r13, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block78859:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78857
block78858:
	movq $0, %rcx
	jmp block78857
block78860:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78858
	jmp block78859
block78862:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78860
block78861:
	movq $0, %rcx
	jmp block78860
block78863:
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
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78861
	jmp block78862
block78865:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78863
block78864:
	movq $0, %rcx
	jmp block78863
block78867:
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78864
	jmp block78865
zerostart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $0, %r12
	 je block78866
	jmp block78867
zero:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp zerostart
zeroconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block78868:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $391, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 24(%r11), %rax
	jmp mainconclusion
block78870:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block78868
block78869:
	movq $0, %rcx
	jmp block78868
block78871:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $2, %rsi
	callq *%r13
	movq %rax, %r12
	movq $42, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78869
	jmp block78870
block78873:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78871
block78872:
	movq $0, %rcx
	jmp block78871
block78874:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq zero(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78872
	jmp block78873
block78876:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78874
block78875:
	movq $0, %rcx
	jmp block78874
block78877:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $1, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %r14
	leaq zero(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78875
	jmp block78876
block78879:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78877
block78878:
	movq $0, %rcx
	jmp block78877
block78880:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq zero(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78878
	jmp block78879
block78882:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78880
block78881:
	movq $0, %rcx
	jmp block78880
mainstart:
	leaq zero(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78881
	jmp block78882
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

