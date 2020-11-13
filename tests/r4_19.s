.globl m
.align 16
mstart:
	movq %r8, %rcx
	movq %r9, %rcx
	movq %rcx, %r11
	movq 32(%r11), %rax
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
block89254:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $9, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r9
	movq $777, %rdi
	movq $776, %rsi
	movq $775, %rdx
	movq $774, %rcx
	movq $773, %r8
	movq %rbx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block89256:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block89254
block89255:
	movq $0, %rcx
	jmp block89254
mainstart:
	leaq m(%rip), %rbx
	movq $772, -16(%rbp)
	movq $771, %r14
	movq $770, %r13
	movq $42, %r12
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $32, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block89255
	jmp block89256
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

