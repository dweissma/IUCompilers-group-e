.globl fun
.align 16
funstart:
	movq %r9, %r11
	movq 8(%r11), %r10
	movq 16(%r11), %r9
	movq 24(%r11), %r11
	addq %r11, %r9
	addq %r9, %r10
	addq %r10, %r8
	addq %r8, %rcx
	addq %rcx, %rdx
	movq %rsi, %rcx
	addq %rdx, %rcx
	movq %rdi, %rax
	addq %rcx, %rax
	jmp funconclusion
fun:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp funstart
funconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block89560:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $7, 0(%r11)
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r9
	movq $5, %rdi
	movq $5, %rsi
	movq $5, %rdx
	movq $5, %rcx
	movq $5, %r8
	movq %rbx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block89562:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block89560
block89561:
	movq $0, %rdx
	jmp block89560
mainstart:
	leaq fun(%rip), %rbx
	movq $5, %r14
	movq $5, %r13
	movq $7, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block89561
	jmp block89562
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

