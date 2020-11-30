.globl h
.align 16
hstart:
	movq %r8, %rdi
	movq %r9, %r10
	movq %r10, %r11
	movq 8(%r11), %r9
	movq %r10, %r11
	movq 16(%r11), %r8
	movq %r10, %r11
	movq 24(%r11), %r10
	addq %r10, %r8
	addq %r8, %r9
	addq %r9, %rdi
	addq %rdi, %rcx
	addq %rcx, %rdx
	movq %rsi, %rax
	addq %rdx, %rax
	jmp hconclusion
h:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hstart
hconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block79938:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $7, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r9
	movq %r14, %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $4, %r8
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block79940:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block79938
block79939:
	movq $0, %rcx
	jmp block79938
block79941:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq %r14, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	movq $5, %rbx
	movq $6, %r13
	movq $7, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79939
	jmp block79940
block79943:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79941
block79942:
	movq $0, %rcx
	jmp block79941
mainstart:
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79942
	jmp block79943
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

