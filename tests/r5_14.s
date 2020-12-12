.globl f
.align 16
block159017:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp fconclusion
block159019:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block159017
block159018:
	movq $0, %rcx
	jmp block159017
block159020:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq lambda158976(%rip), %rdx
	movq %rdx, %r13
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159018
	jmp block159019
block159022:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159020
block159021:
	movq $0, %rcx
	jmp block159020
fstart:
	movq %rdi, %rcx
	movq $0, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block159021
	jmp block159022
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl lambda158976
.align 16
lambda158976start:
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	movq %rdx, %r11
	movq %rcx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp lambda158976conclusion
lambda158976:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda158976start
lambda158976conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block159023:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %r13
	movq %r12, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $1, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $2, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r12, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $20, %rsi
	callq *%rcx
	movq %rax, %r12
	movq %r13, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $22, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r12, %r11
	movq 8(%r11), %rdx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rax
	addq %rcx, %rax
	jmp mainconclusion
block159025:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159023
block159024:
	movq $0, %rcx
	jmp block159023
block159026:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %r12
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159024
	jmp block159025
block159028:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159026
block159027:
	movq $0, %rcx
	jmp block159026
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159027
	jmp block159028
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

