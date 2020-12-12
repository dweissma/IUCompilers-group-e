.globl map
.align 16
block154811:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $5, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp mapconclusion
block154812:
	movq $0, %rcx
	jmp block154811
block154813:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block154811
mapstart:
	movq %rdi, %rcx
	movq %rsi, %r14
	movq %rdx, %r13
	movq %r14, %rsi
	movq %rsi, %r11
	movq 8(%r11), %rcx
	movq %r13, %r11
	movq 8(%r11), %rdx
	movq %rsi, %rdi
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %r12
	movq %r14, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %r13, %r11
	movq 16(%r11), %rsi
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block154812
	jmp block154813
map:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mapstart
mapconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
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
block154814:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $5, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r13, %rdi
	movq %rbx, %rsi
	movq %rcx, %rdx
	callq *%r12
	movq %rax, %rcx
	movq %rcx, %r11
	movq 16(%r11), %rax
	jmp mainconclusion
block154816:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block154814
block154815:
	movq $0, %rcx
	jmp block154814
block154817:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $0, -16(%rbp)
	movq $41, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block154815
	jmp block154816
block154819:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block154817
block154818:
	movq $0, %rcx
	jmp block154817
block154820:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r13
	movq %r13, %r11
	movq 8(%r11), %r12
	leaq add1(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block154818
	jmp block154819
block154822:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block154820
block154821:
	movq $0, %rcx
	jmp block154820
mainstart:
	leaq map(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block154821
	jmp block154822
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $24, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 

