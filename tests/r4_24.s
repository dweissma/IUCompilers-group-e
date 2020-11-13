.globl big
.align 16
bigstart:
	movq %rdi, %rcx
	movq %rcx, %r8
	addq %rsi, %r8
	movq %rcx, %rdi
	addq %rdx, %rdi
	movq %r8, %r9
	addq %rdi, %r9
	movq %rdx, %r8
	addq %rcx, %r8
	movq %rdx, %rdi
	addq %rsi, %rdi
	addq %rdi, %r8
	movq %r9, %rdi
	addq %r8, %rdi
	movq %rsi, %r8
	addq %rsi, %r8
	addq %rcx, %rsi
	addq %rsi, %r8
	movq %rdx, %rsi
	addq %rcx, %rsi
	movq %rdx, %rcx
	addq %rdx, %rcx
	movq %rsi, %rdx
	addq %rcx, %rdx
	movq %r8, %rcx
	addq %rdx, %rcx
	movq %rdi, %rax
	addq %rcx, %rax
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
mainstart:
	leaq big(%rip), %r14
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, %rbx
	callq read_int
	movq %rax, %rcx
	movq %r12, %rdi
	movq %rbx, %rsi
	movq %rcx, %rdx
	callq *%r14
	movq %rax, %rcx
	movq $42, %rax
	addq %rcx, %rax
	jmp mainconclusion
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %r14
	popq %rbp
	retq 

