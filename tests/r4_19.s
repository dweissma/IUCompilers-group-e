.globl m
.align 16
mstart:
	movq %r8, %rcx
	movq %r9, %rcx
	movq %rcx, %r11
	movq 40(%r11), %rax
	jmp mconclusion
m:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mstart
mconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block156552:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r9
	movq %r13, %rdi
	movq $777, %rsi
	movq $776, %rdx
	movq $775, %rcx
	movq $774, %r8
	movq -40(%rbp), %rax
	subq $0, %r15
	addq $48, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block156554:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block156552
block156553:
	movq $0, %rcx
	jmp block156552
block156555:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq %r13, %r11
	movq 8(%r11), %rax
	movq %rax, -40(%rbp)
	movq $773, %r12
	movq $772, -24(%rbp)
	movq $771, -16(%rbp)
	movq $770, %rbx
	movq $42, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156553
	jmp block156554
block156557:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156555
block156556:
	movq $0, %rcx
	jmp block156555
mainstart:
	leaq m(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156556
	jmp block156557
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $48, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $48, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

