.globl main
.align 16
mainstart:
	callq read_int
	movq %rax, -80(%rbp)
	callq read_int
	movq %rax, -72(%rbp)
	callq read_int
	movq %rax, -64(%rbp)
	callq read_int
	movq %rax, -56(%rbp)
	callq read_int
	movq %rax, -48(%rbp)
	callq read_int
	movq %rax, -40(%rbp)
	callq read_int
	movq %rax, -32(%rbp)
	callq read_int
	movq %rax, -24(%rbp)
	callq read_int
	movq %rax, -16(%rbp)
	callq read_int
	movq %rax, %r14
	callq read_int
	movq %rax, -96(%rbp)
	callq read_int
	movq %rax, %r13
	callq read_int
	movq %rax, -88(%rbp)
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, %rbx
	callq read_int
	movq %rax, %rcx
	movq -72(%rbp), %rdx
	negq %rdx
	movq -80(%rbp), %rsi
	addq %rdx, %rsi
	movq -56(%rbp), %rdx
	negq %rdx
	movq -64(%rbp), %rdi
	addq %rdx, %rdi
	movq %rsi, %rdx
	addq %rdi, %rdx
	movq -40(%rbp), %rsi
	negq %rsi
	movq -48(%rbp), %rdi
	addq %rsi, %rdi
	movq -24(%rbp), %rsi
	negq %rsi
	movq -32(%rbp), %r8
	addq %rsi, %r8
	movq %rdi, %rsi
	addq %r8, %rsi
	addq %rsi, %rdx
	movq %r14, %rsi
	negq %rsi
	movq -16(%rbp), %rdi
	addq %rsi, %rdi
	movq %r13, %rsi
	negq %rsi
	movq -96(%rbp), %r8
	addq %rsi, %r8
	movq %rdi, %rsi
	addq %r8, %rsi
	movq %r12, %rdi
	negq %rdi
	movq -88(%rbp), %r8
	addq %rdi, %r8
	negq %rcx
	movq %rbx, %rdi
	addq %rcx, %rdi
	movq %r8, %rcx
	addq %rdi, %rcx
	addq %rcx, %rsi
	movq %rdx, %rcx
	addq %rsi, %rcx
	movq %rcx, %rax
	addq $42, %rax
	jmp mainconclusion
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $96, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $96, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

