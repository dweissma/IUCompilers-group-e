.globl f
.align 16
block85786:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $135, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp fconclusion
block85788:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block85786
block85787:
	movq $0, %rdx
	jmp block85786
fstart:
	movq %rdi, %rcx
	movq $4, %rcx
	leaq lambda85752(%rip), %rdi
	movq %rdi, %r13
	movq %rsi, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block85787
	jmp block85788
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl lambda85752
.align 16
lambda85752start:
	movq %rsi, %rdx
	movq %rdi, %r11
	movq 16(%r11), %rcx
	movq %rdi, %r11
	movq 24(%r11), %rsi
	addq %rdx, %rsi
	movq %rcx, %rax
	addq %rsi, %rax
	jmp lambda85752conclusion
lambda85752:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85752start
lambda85752conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block85789:
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
	movq $3, %rsi
	callq *%rcx
	movq %rax, %r12
	movq %r13, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $11, %rsi
	callq *%rcx
	movq %rax, %r13
	movq %r12, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $15, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rax
	addq %rcx, %rax
	jmp mainconclusion
block85791:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85789
block85790:
	movq $0, %rcx
	jmp block85789
block85792:
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
	movq $5, %rsi
	callq *%rcx
	movq %rax, %r13
	leaq f(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85790
	jmp block85791
block85794:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85792
block85793:
	movq $0, %rcx
	jmp block85792
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85793
	jmp block85794
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

