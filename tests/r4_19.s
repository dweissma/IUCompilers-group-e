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
block12124:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
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
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r9
	movq 24(%r15), %rdi
	movq $777, %rsi
	movq $776, %rdx
	movq $775, %rcx
	movq $774, %r8
	movq -32(%rbp), %rax
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block12126:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block12124
block12125:
	movq $0, %rcx
	jmp block12124
block12127:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $773, -16(%rbp)
	movq $772, %r14
	movq $771, %r13
	movq $770, %r12
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block12125
	jmp block12126
block12129:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12127
block12128:
	movq $0, %rcx
	jmp block12127
block12130:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -32(%rbp)
	leaq m(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12128
	jmp block12129
block12132:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12130
block12131:
	movq $0, %rcx
	jmp block12130
mainstart:
	leaq m(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12131
	jmp block12132
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $32, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

