.globl big
.align 16
bigstart:
	movq %rcx, %rdi
	movq %rsi, %rcx
	addq %rdx, %rcx
	movq %rsi, %r8
	addq %rdi, %r8
	addq %r8, %rcx
	movq %rdi, %r8
	addq %rsi, %r8
	movq %rdi, %r9
	addq %rdx, %r9
	addq %r9, %r8
	addq %r8, %rcx
	movq %rdx, %r8
	addq %rdx, %r8
	addq %rsi, %rdx
	addq %rdx, %r8
	movq %rdi, %rdx
	addq %rsi, %rdx
	movq %rdi, %rsi
	addq %rdi, %rsi
	addq %rsi, %rdx
	movq %r8, %rsi
	addq %rdx, %rsi
	movq %rcx, %rax
	addq %rsi, %rax
	jmp bigconclusion
big:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp bigstart
bigconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block38235:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	callq read_int
	movq %rax, %r13
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, %rcx
	movq %r14, %rdi
	movq %r13, %rsi
	movq %r12, %rdx
	callq *-16(%rbp)
	movq %rax, %rcx
	movq $42, %rax
	addq %rcx, %rax
	jmp mainconclusion
block38237:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38235
block38236:
	movq $0, %rcx
	jmp block38235
block38238:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq big(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38236
	jmp block38237
block38240:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38238
block38239:
	movq $0, %rcx
	jmp block38238
mainstart:
	leaq big(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38239
	jmp block38240
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
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
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

