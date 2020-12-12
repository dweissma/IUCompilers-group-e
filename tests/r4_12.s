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
block154923:
	movq %rbx, %r11
	movq 8(%r11), %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rbx, %r11
	movq 16(%r11), %rsi
	movq %rsi, %r11
	movq 8(%r11), %rsi
	movq %rdx, %rdi
	movq %rcx, %rax
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block154925:
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
	movq %r13, %rax
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block154927:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block154925
block154926:
	movq $0, %rcx
	jmp block154925
block154928:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
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
	 jl block154926
	jmp block154927
block154929:
	movq $0, %rcx
	jmp block154928
block154930:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block154928
block154924:
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block154929
	jmp block154930
fstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq %rdx, %rbx
	cmpq $100, %r12
	 je block154923
	jmp block154924
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $32, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block154931:
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
	movq 16(%r15), %rdi
	movq $0, %rsi
	movq %rcx, %rdx
	movq %r13, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block154933:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block154931
block154932:
	movq $0, %rcx
	jmp block154931
block154934:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block154932
	jmp block154933
block154936:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block154934
block154935:
	movq $0, %rcx
	jmp block154934
block154937:
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
	 jl block154935
	jmp block154936
block154939:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block154937
block154938:
	movq $0, %rcx
	jmp block154937
block154940:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq 16(%r15), %r11
	movq 8(%r11), %r13
	leaq id(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block154938
	jmp block154939
block154942:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block154940
block154941:
	movq $0, %rcx
	jmp block154940
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block154941
	jmp block154942
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

