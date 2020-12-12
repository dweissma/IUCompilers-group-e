.globl main
.align 16
mainstart:
	callq read_int
	movq %rax, -104(%rbp)
	callq read_int
	movq %rax, -96(%rbp)
	callq read_int
	movq %rax, -88(%rbp)
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
	movq %rax, %r13
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, %rcx
	movq -96(%rbp), %rdx
	negq %rdx
	movq -104(%rbp), %rsi
	addq %rdx, %rsi
	movq -80(%rbp), %rdx
	negq %rdx
	movq -88(%rbp), %rdi
	addq %rdx, %rdi
	movq %rsi, %rdx
	addq %rdi, %rdx
	movq -64(%rbp), %rsi
	negq %rsi
	movq -72(%rbp), %rdi
	addq %rsi, %rdi
	movq -48(%rbp), %rsi
	negq %rsi
	movq -56(%rbp), %r8
	addq %rsi, %r8
	movq %rdi, %rsi
	addq %r8, %rsi
	addq %rsi, %rdx
	movq -32(%rbp), %rsi
	negq %rsi
	movq -40(%rbp), %rdi
	addq %rsi, %rdi
	movq -16(%rbp), %rsi
	negq %rsi
	movq -24(%rbp), %r8
	addq %rsi, %r8
	movq %rdi, %rsi
	addq %r8, %rsi
	movq %r13, %rdi
	negq %rdi
	movq %r14, %r8
	addq %rdi, %r8
	negq %rcx
	movq %r12, %rdi
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
	pushq %r12
	pushq %r14
	pushq %r13
	subq $104, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $104, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

