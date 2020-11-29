.globl map
.align 16
block9882:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp mapconclusion
block9884:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block9882
block9883:
	movq $0, %rdx
	jmp block9882
mapstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	movq %rdx, %r14
	movq %rbx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %r14, %r11
	movq 8(%r11), %rdx
	movq %rbx, %rdi
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %r13
	movq %rbx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %r14, %r11
	movq 16(%r11), %rdx
	movq %rbx, %rdi
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9883
	jmp block9884
map:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mapstart
mapconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl add1
.align 16
add1start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	addq $1, %rax
	jmp add1conclusion
add1:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp add1start
add1conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block9885:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $5, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq %r13, %rsi
	movq %rcx, %rdx
	callq *-16(%rbp)
	movq %rax, %rcx
	movq %rcx, %r11
	movq 16(%r11), %rax
	jmp mainconclusion
block9887:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block9885
block9886:
	movq $0, %rcx
	jmp block9885
block9888:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $0, %r12
	movq $41, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9886
	jmp block9887
block9890:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block9888
block9889:
	movq $0, %rcx
	jmp block9888
block9891:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq add1(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9889
	jmp block9890
block9893:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block9891
block9892:
	movq $0, %rcx
	jmp block9891
block9894:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq map(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9892
	jmp block9893
block9896:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block9894
block9895:
	movq $0, %rcx
	jmp block9894
mainstart:
	leaq map(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9895
	jmp block9896
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $16, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

