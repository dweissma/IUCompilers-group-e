.globl m
.align 16
mstart:
	movq %rdx, %rcx
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %r8, %rcx
	movq %r9, %rcx
	movq %rcx, %r11
	movq 32(%r11), %rax
	jmp mconclusion
m:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp mstart
mconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block140174:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $9, 0(%r11)
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r9
	movq $777, %rcx
	movq $776, %rdx
	movq $775, %rdi
	movq $774, %rsi
	movq $773, %r8
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block140175:
	movq $0, %rdx
	jmp block140174
block140176:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block140174
mainstart:
	leaq m(%rip), %rax
	movq %rax, -16(%rbp)
	movq $772, %r14
	movq $771, %rbx
	movq $770, %r12
	movq $42, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $32, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block140175
	jmp block140176
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

