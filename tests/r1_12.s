.globl main
.align 16
mainstart:
	movq $1, %rcx
	movq %rcx, -160(%rbp)
	movq $1, %rcx
	movq %rcx, -136(%rbp)
	movq $1, %rcx
	movq %rcx, -128(%rbp)
	movq $1, %rcx
	movq %rcx, -120(%rbp)
	movq $1, %rcx
	movq %rcx, -112(%rbp)
	movq $1, %rcx
	movq %rcx, -104(%rbp)
	movq $1, %rcx
	movq %rcx, -96(%rbp)
	movq $1, %rcx
	movq %rcx, -88(%rbp)
	movq $1, %rcx
	movq %rcx, -80(%rbp)
	movq $1, %rcx
	movq %rcx, -72(%rbp)
	movq $1, %rcx
	movq %rcx, -64(%rbp)
	movq $1, %rcx
	movq %rcx, -56(%rbp)
	movq $1, %rcx
	movq %rcx, -48(%rbp)
	movq $1, %rcx
	movq %rcx, -40(%rbp)
	movq $1, %rcx
	movq %rcx, -32(%rbp)
	movq $1, %rcx
	movq %rcx, -24(%rbp)
	movq $1, %rcx
	movq %rcx, -16(%rbp)
	movq $1, %rcx
	movq %rcx, %r14
	movq $1, %rcx
	movq %rcx, %r13
	movq $1, %rcx
	movq %rcx, -152(%rbp)
	movq $1, %rcx
	movq %rcx, -144(%rbp)
	movq $1, %rcx
	movq %rcx, %r12
	movq $1, %rcx
	movq %rcx, %rbx
	movq $1, %rcx
	movq %rcx, %r11
	movq $1, %rcx
	movq %rcx, %r10
	movq $1, %rcx
	movq %rcx, %r9
	movq $1, %rcx
	movq %rcx, %r8
	movq $1, %rcx
	movq %rcx, %rdi
	movq $1, %rcx
	movq %rcx, %rsi
	movq $1, %rcx
	movq %rcx, -168(%rbp)
	movq $1, %rcx
	movq %rcx, -176(%rbp)
	movq $1, %rcx
	movq $1, %rdx
	movq %rdx, -192(%rbp)
	movq $1, %rdx
	movq %rdx, -200(%rbp)
	movq $1, %rdx
	movq %rdx, -208(%rbp)
	movq $1, %rdx
	movq %rdx, -216(%rbp)
	movq $1, %rdx
	movq %rdx, -224(%rbp)
	movq $1, %rdx
	movq %rdx, -232(%rbp)
	movq $1, %rdx
	movq %rdx, -240(%rbp)
	movq $1, %rdx
	movq %rdx, -184(%rbp)
	movq $1, %rdx
	addq $1, %rdx
	addq %rdx, -184(%rbp)
	movq -240(%rbp), %rdx
	addq -184(%rbp), %rdx
	movq -232(%rbp), %rax
	movq %rax, -184(%rbp)
	addq %rdx, -184(%rbp)
	movq -224(%rbp), %rdx
	addq -184(%rbp), %rdx
	movq -216(%rbp), %rax
	movq %rax, -184(%rbp)
	addq %rdx, -184(%rbp)
	movq -208(%rbp), %rdx
	addq -184(%rbp), %rdx
	movq -200(%rbp), %rax
	movq %rax, -184(%rbp)
	addq %rdx, -184(%rbp)
	movq -192(%rbp), %rdx
	addq -184(%rbp), %rdx
	addq %rdx, %rcx
	movq -176(%rbp), %rdx
	addq %rcx, %rdx
	movq -168(%rbp), %rcx
	addq %rdx, %rcx
	movq %rsi, %rdx
	addq %rcx, %rdx
	movq %rdi, %rcx
	addq %rdx, %rcx
	movq %r8, %rdx
	addq %rcx, %rdx
	movq %r9, %rcx
	addq %rdx, %rcx
	movq %r10, %rdx
	addq %rcx, %rdx
	movq %r11, %rcx
	addq %rdx, %rcx
	movq %rbx, %rdx
	addq %rcx, %rdx
	movq %r12, %rcx
	addq %rdx, %rcx
	movq -144(%rbp), %rdx
	addq %rcx, %rdx
	movq -152(%rbp), %rcx
	addq %rdx, %rcx
	movq %r13, %rdx
	addq %rcx, %rdx
	movq %r14, %rcx
	addq %rdx, %rcx
	movq -16(%rbp), %rdx
	addq %rcx, %rdx
	movq -24(%rbp), %rcx
	addq %rdx, %rcx
	movq -32(%rbp), %rdx
	addq %rcx, %rdx
	movq -40(%rbp), %rcx
	addq %rdx, %rcx
	movq -48(%rbp), %rdx
	addq %rcx, %rdx
	movq -56(%rbp), %rcx
	addq %rdx, %rcx
	movq -64(%rbp), %rdx
	addq %rcx, %rdx
	movq -72(%rbp), %rcx
	addq %rdx, %rcx
	movq -80(%rbp), %rdx
	addq %rcx, %rdx
	movq -88(%rbp), %rcx
	addq %rdx, %rcx
	movq -96(%rbp), %rdx
	addq %rcx, %rdx
	movq -104(%rbp), %rcx
	addq %rdx, %rcx
	movq -112(%rbp), %rdx
	addq %rcx, %rdx
	movq -120(%rbp), %rcx
	addq %rdx, %rcx
	movq -128(%rbp), %rdx
	addq %rcx, %rdx
	movq -136(%rbp), %rcx
	addq %rdx, %rcx
	movq -160(%rbp), %rax
	addq %rcx, %rax
	jmp mainconclusion
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $240, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $240, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

