.globl main
.align 16
mainstart:
	movq $1, %rcx
	movq %rcx, %r12
	movq $1, %rcx
	movq %rcx, %r9
	movq $1, %rcx
	movq %rcx, %r8
	movq $1, %rcx
	movq %rcx, %rdi
	movq $1, %rcx
	movq %rcx, %rsi
	movq $1, %rcx
	movq %rcx, %rbx
	movq $1, %rcx
	movq %rcx, %rdx
	movq $1, %rcx
	movq $1, %r10
	movq %r10, -152(%rbp)
	movq $1, %r10
	movq %r10, %r11
	movq $1, %r10
	movq %r10, -144(%rbp)
	movq $1, %r10
	movq %r10, -136(%rbp)
	movq $1, %r10
	movq %r10, -128(%rbp)
	movq $1, %r10
	movq %r10, -120(%rbp)
	movq $1, %r10
	movq %r10, -112(%rbp)
	movq $1, %r10
	movq %r10, -104(%rbp)
	movq $1, %r10
	movq %r10, -96(%rbp)
	movq $1, %r10
	movq %r10, -88(%rbp)
	movq $1, %r10
	movq %r10, -80(%rbp)
	movq $1, %r10
	movq %r10, -72(%rbp)
	movq $1, %r10
	movq %r10, -64(%rbp)
	movq $1, %r10
	movq %r10, -56(%rbp)
	movq $1, %r10
	movq %r10, -48(%rbp)
	movq $1, %r10
	movq %r10, -40(%rbp)
	movq $1, %r10
	movq %r10, -32(%rbp)
	movq $1, %r10
	movq %r10, -24(%rbp)
	movq $1, %r10
	movq %r10, -16(%rbp)
	movq $1, %r10
	movq %r10, %r14
	movq $1, %r10
	movq %r10, %r13
	movq $1, %r10
	movq %r10, -160(%rbp)
	movq $1, %r10
	movq %r10, -176(%rbp)
	movq $1, %r10
	movq %r10, -184(%rbp)
	movq $1, %r10
	movq %r10, -192(%rbp)
	movq $1, %r10
	movq %r10, -200(%rbp)
	movq $1, %r10
	movq %r10, -208(%rbp)
	movq $1, %r10
	movq %r10, -216(%rbp)
	movq $1, %r10
	movq %r10, -224(%rbp)
	movq $1, %r10
	movq %r10, -232(%rbp)
	movq $1, %r10
	movq %r10, -240(%rbp)
	movq $1, %r10
	movq $1, -168(%rbp)
	addq $1, -168(%rbp)
	addq -168(%rbp), %r10
	movq -240(%rbp), %rax
	movq %rax, -168(%rbp)
	addq %r10, -168(%rbp)
	movq -232(%rbp), %r10
	addq -168(%rbp), %r10
	movq -224(%rbp), %rax
	movq %rax, -168(%rbp)
	addq %r10, -168(%rbp)
	movq -216(%rbp), %r10
	addq -168(%rbp), %r10
	movq -208(%rbp), %rax
	movq %rax, -168(%rbp)
	addq %r10, -168(%rbp)
	movq -200(%rbp), %r10
	addq -168(%rbp), %r10
	movq -192(%rbp), %rax
	movq %rax, -168(%rbp)
	addq %r10, -168(%rbp)
	movq -184(%rbp), %r10
	addq -168(%rbp), %r10
	movq -176(%rbp), %rax
	movq %rax, -168(%rbp)
	addq %r10, -168(%rbp)
	movq -160(%rbp), %r10
	addq -168(%rbp), %r10
	addq %r10, %r13
	movq %r14, %r10
	addq %r13, %r10
	movq -16(%rbp), %r13
	addq %r10, %r13
	movq -24(%rbp), %r10
	addq %r13, %r10
	movq -32(%rbp), %r13
	addq %r10, %r13
	movq -40(%rbp), %r10
	addq %r13, %r10
	movq -48(%rbp), %r13
	addq %r10, %r13
	movq -56(%rbp), %r10
	addq %r13, %r10
	movq -64(%rbp), %r13
	addq %r10, %r13
	movq -72(%rbp), %r10
	addq %r13, %r10
	movq -80(%rbp), %r13
	addq %r10, %r13
	movq -88(%rbp), %r10
	addq %r13, %r10
	movq -96(%rbp), %r13
	addq %r10, %r13
	movq -104(%rbp), %r10
	addq %r13, %r10
	movq -112(%rbp), %r13
	addq %r10, %r13
	movq -120(%rbp), %r10
	addq %r13, %r10
	movq -128(%rbp), %r13
	addq %r10, %r13
	movq -136(%rbp), %r10
	addq %r13, %r10
	movq -144(%rbp), %r13
	addq %r10, %r13
	movq %r11, %r10
	addq %r13, %r10
	movq -152(%rbp), %r11
	addq %r10, %r11
	addq %r11, %rcx
	addq %rcx, %rdx
	movq %rbx, %rcx
	addq %rdx, %rcx
	movq %rsi, %rdx
	addq %rcx, %rdx
	movq %rdi, %rcx
	addq %rdx, %rcx
	movq %r8, %rdx
	addq %rcx, %rdx
	movq %r9, %rcx
	addq %rdx, %rcx
	movq %r12, %rax
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

