.globl main
.align 16
mainstart:
	movq $1, %rcx
	movq $1, %rdx
	movq %rdx, %rdi
	movq $1, %rdx
	movq %rdx, %r8
	movq $1, %rdx
	movq %rdx, %r9
	movq $1, %rdx
	movq %rdx, %r10
	movq $1, %rdx
	movq %rdx, %r11
	movq $1, %rdx
	movq %rdx, %rbx
	movq $1, %rdx
	movq %rdx, %r12
	movq $1, %rdx
	movq %rdx, %r13
	movq $1, %rdx
	movq %rdx, %r14
	movq $1, %rdx
	movq %rdx, -16(%rbp)
	movq $1, %rdx
	movq %rdx, -24(%rbp)
	movq $1, %rdx
	movq %rdx, -32(%rbp)
	movq $1, %rdx
	movq %rdx, -40(%rbp)
	movq $1, %rdx
	movq %rdx, -48(%rbp)
	movq $1, %rdx
	movq %rdx, -56(%rbp)
	movq $1, %rdx
	movq %rdx, -64(%rbp)
	movq $1, %rdx
	movq %rdx, -72(%rbp)
	movq $1, %rdx
	movq %rdx, -80(%rbp)
	movq $1, %rdx
	movq %rdx, -88(%rbp)
	movq $1, %rdx
	movq %rdx, -96(%rbp)
	movq $1, %rdx
	movq %rdx, -104(%rbp)
	movq $1, %rdx
	movq %rdx, -112(%rbp)
	movq $1, %rdx
	movq %rdx, -120(%rbp)
	movq $1, %rdx
	movq %rdx, -128(%rbp)
	movq $1, %rdx
	movq %rdx, -136(%rbp)
	movq $1, %rdx
	movq %rdx, -144(%rbp)
	movq $1, %rdx
	movq $1, %rsi
	movq %rsi, -160(%rbp)
	movq $1, %rsi
	movq %rsi, -168(%rbp)
	movq $1, %rsi
	movq %rsi, -176(%rbp)
	movq $1, %rsi
	movq %rsi, -184(%rbp)
	movq $1, %rsi
	movq %rsi, -192(%rbp)
	movq $1, %rsi
	movq %rsi, -200(%rbp)
	movq $1, %rsi
	movq %rsi, -208(%rbp)
	movq $1, %rsi
	movq %rsi, -216(%rbp)
	movq $1, %rsi
	movq %rsi, -224(%rbp)
	movq $1, %rsi
	movq %rsi, -232(%rbp)
	movq $1, %rsi
	movq %rsi, -240(%rbp)
	movq $1, %rsi
	movq %rsi, -152(%rbp)
	movq $1, %rsi
	addq $1, %rsi
	addq %rsi, -152(%rbp)
	movq -240(%rbp), %rsi
	addq -152(%rbp), %rsi
	movq -232(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %rsi, -152(%rbp)
	movq -224(%rbp), %rsi
	addq -152(%rbp), %rsi
	movq -216(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %rsi, -152(%rbp)
	movq -208(%rbp), %rsi
	addq -152(%rbp), %rsi
	movq -200(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %rsi, -152(%rbp)
	movq -192(%rbp), %rsi
	addq -152(%rbp), %rsi
	movq -184(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %rsi, -152(%rbp)
	movq -176(%rbp), %rsi
	addq -152(%rbp), %rsi
	movq -168(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %rsi, -152(%rbp)
	movq -160(%rbp), %rsi
	addq -152(%rbp), %rsi
	addq %rsi, %rdx
	movq -144(%rbp), %rsi
	addq %rdx, %rsi
	movq -136(%rbp), %rdx
	addq %rsi, %rdx
	movq -128(%rbp), %rsi
	addq %rdx, %rsi
	movq -120(%rbp), %rdx
	addq %rsi, %rdx
	movq -112(%rbp), %rsi
	addq %rdx, %rsi
	movq -104(%rbp), %rdx
	addq %rsi, %rdx
	movq -96(%rbp), %rsi
	addq %rdx, %rsi
	movq -88(%rbp), %rdx
	addq %rsi, %rdx
	movq -80(%rbp), %rsi
	addq %rdx, %rsi
	movq -72(%rbp), %rdx
	addq %rsi, %rdx
	movq -64(%rbp), %rsi
	addq %rdx, %rsi
	movq -56(%rbp), %rdx
	addq %rsi, %rdx
	movq -48(%rbp), %rsi
	addq %rdx, %rsi
	movq -40(%rbp), %rdx
	addq %rsi, %rdx
	movq -32(%rbp), %rsi
	addq %rdx, %rsi
	movq -24(%rbp), %rdx
	addq %rsi, %rdx
	movq -16(%rbp), %rsi
	addq %rdx, %rsi
	movq %r14, %rdx
	addq %rsi, %rdx
	movq %r13, %rsi
	addq %rdx, %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rbx, %rsi
	addq %rdx, %rsi
	movq %r11, %rdx
	addq %rsi, %rdx
	movq %r10, %rsi
	addq %rdx, %rsi
	movq %r9, %rdx
	addq %rsi, %rdx
	movq %r8, %rsi
	addq %rdx, %rsi
	movq %rdi, %rdx
	addq %rsi, %rdx
	movq %rcx, %rax
	addq %rdx, %rax
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

