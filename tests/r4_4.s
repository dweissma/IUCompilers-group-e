.globl sum
.align 16
block12873:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq $1, %rdx
	negq %rdx
	movq %r14, %rcx
	addq %rdx, %rcx
	movq %rsi, %rdi
	movq %rcx, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %r14, %rax
	addq %rcx, %rax
	jmp sumconclusion
block12875:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12873
block12874:
	movq $0, %rcx
	jmp block12873
block12876:
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
	leaq sum(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12874
	jmp block12875
block12878:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12876
block12877:
	movq $0, %rcx
	jmp block12876
block12880:
	leaq sum(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12877
	jmp block12878
block12879:
	movq $1, %rax
	jmp sumconclusion
sumstart:
	movq %rdi, %rcx
	movq %rsi, %r14
	cmpq $1, %r14
	 je block12879
	jmp block12880
sum:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp sumstart
sumconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block12882:
	movq $777, %rax
	jmp mainconclusion
block12881:
	movq $42, %rax
	jmp mainconclusion
block12883:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $3, %rsi
	callq *%r13
	movq %rax, %rcx
	cmpq $6, %rcx
	 je block12881
	jmp block12882
block12885:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12883
block12884:
	movq $0, %rcx
	jmp block12883
block12886:
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
	leaq sum(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12884
	jmp block12885
block12887:
	movq $0, %rcx
	jmp block12886
block12888:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12886
mainstart:
	leaq sum(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12887
	jmp block12888
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

