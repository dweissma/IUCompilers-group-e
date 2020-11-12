.globl big
.align 16
bigstart:
	movq %rcx, %rsi
	addq %rdx, %rsi
	movq %rcx, %r8
	addq %rdi, %r8
	addq %r8, %rsi
	movq %rdi, %r8
	addq %rcx, %r8
	movq %rdi, %r9
	addq %rdx, %r9
	addq %r9, %r8
	addq %r8, %rsi
	movq %rdx, %r8
	addq %rdx, %r8
	addq %rcx, %rdx
	addq %rdx, %r8
	movq %rdi, %rdx
	addq %rcx, %rdx
	movq %rdi, %rcx
	addq %rdi, %rcx
	addq %rcx, %rdx
	movq %r8, %rcx
	addq %rdx, %rcx
	movq %rsi, %rax
	addq %rcx, %rax
	jmp bigconclusion
big:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
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
	leaq big(%rip), %rbx
	callq read_int
	movq %rax, %r14
	callq read_int
	movq %rax, %r13
	callq read_int
	movq %rax, %rsi
	movq %r14, %rcx
	movq %r13, %rdx
	movq %rsi, %rdi
	callq *%rbx
	movq %rax, %rcx
	movq $42, %rax
	addq %rcx, %rax
	jmp mainconclusion
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
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
	popq %r14
	popq %r13
	popq %rbp
	retq 

