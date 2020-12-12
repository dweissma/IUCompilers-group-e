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
block156703:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $7, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r9
	movq %r12, %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $4, %r8
	movq %rbx, %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block156705:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block156703
block156704:
	movq $0, %rcx
	jmp block156703
block156706:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq %r12, %r11
	movq 8(%r11), %rbx
	movq $5, %r14
	movq $6, -24(%rbp)
	movq $7, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156704
	jmp block156705
block156708:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156706
block156707:
	movq $0, %rcx
	jmp block156706
mainstart:
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block156707
	jmp block156708
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %r14
	popq %rbp
	retq 

