.globl main
.align 16
block77949:
	movq free_ptr(%rip), %rdx
	addq $136, free_ptr(%rip)
	movq %rdx, %r11
	movq $8388513, 0(%r11)
	movq %rdx, %r11
	movq 112(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 104(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 88(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 80(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 72(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 128(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 40(%r11), %rcx
	movq %rcx, %r11
	movq 32(%r11), %rcx
	movq %rcx, %r11
	movq 24(%r11), %rcx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block77951:
	movq %r15, %rdi
	movq $128, %rsi
	callq collect
	jmp block77949
block77950:
	movq $0, %rcx
	jmp block77949
block77952:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
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
	movq %rbx, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 112(%r15)
	movq %rcx, 104(%r15)
	movq %rcx, 96(%r15)
	movq %rcx, 88(%r15)
	movq %rcx, 80(%r15)
	movq %rcx, 72(%r15)
	movq %rcx, 64(%r15)
	movq %rcx, 56(%r15)
	movq %rcx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rcx, 32(%r15)
	movq %rcx, %rbx
	movq %rcx, 24(%r15)
	movq %rcx, 16(%r15)
	movq %rcx, %r14
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $128, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block77950
	jmp block77951
block77954:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block77952
block77953:
	movq $0, %rcx
	jmp block77952
block77955:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1929, 0(%r11)
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
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rcx, %r13
	movq %rcx, 32(%r15)
	movq %rcx, 24(%r15)
	movq %rcx, %rbx
	movq %rcx, 16(%r15)
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block77953
	jmp block77954
block77956:
	movq $0, %rcx
	jmp block77955
block77957:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block77955
block77958:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 16(%r15)
	movq %rcx, %r14
	movq %rcx, %r13
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block77956
	jmp block77957
block77960:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block77958
block77959:
	movq $0, %rcx
	jmp block77958
block77961:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rbx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block77959
	jmp block77960
block77963:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block77961
block77962:
	movq $0, %rcx
	jmp block77961
mainstart:
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block77962
	jmp block77963
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
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
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
