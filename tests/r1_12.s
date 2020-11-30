.globl main
.align 16
mainstart:
	movq $1, %rcx
	movq $1, %rdx
	movq %rdx, %r8
	movq $1, %rdx
	movq $1, %rsi
	movq %rsi, %r9
	movq $1, %rsi
	movq %rsi, %r10
	movq $1, %rsi
	movq $1, %rdi
	movq %rdi, %rbx
	movq $1, %rdi
	movq %rdi, %r12
	movq $1, %rdi
	movq %rdi, %r13
	movq $1, %rdi
	movq %rdi, %r14
	movq $1, %rdi
	movq %rdi, -16(%rbp)
	movq $1, %rdi
	movq %rdi, -24(%rbp)
	movq $1, %rdi
	movq %rdi, -32(%rbp)
	movq $1, %rdi
	movq %rdi, -40(%rbp)
	movq $1, %rdi
	movq %rdi, -48(%rbp)
	movq $1, %rdi
	movq %rdi, -56(%rbp)
	movq $1, %rdi
	movq %rdi, -64(%rbp)
	movq $1, %rdi
	movq %rdi, -72(%rbp)
	movq $1, %rdi
	movq %rdi, -80(%rbp)
	movq $1, %rdi
	movq %rdi, -88(%rbp)
	movq $1, %rdi
	movq %rdi, -96(%rbp)
	movq $1, %rdi
	movq %rdi, -104(%rbp)
	movq $1, %rdi
	movq %rdi, -112(%rbp)
	movq $1, %rdi
	movq %rdi, -120(%rbp)
	movq $1, %rdi
	movq %rdi, -128(%rbp)
	movq $1, %rdi
	movq %rdi, -136(%rbp)
	movq $1, %rdi
	movq %rdi, -144(%rbp)
	movq $1, %rdi
	movq %rdi, -152(%rbp)
	movq $1, %rdi
	movq %rdi, -160(%rbp)
	movq $1, %rdi
	movq %rdi, -168(%rbp)
	movq $1, %rdi
	movq %rdi, -176(%rbp)
	movq $1, %rdi
	movq %rdi, -184(%rbp)
	movq $1, %rdi
	movq %rdi, -192(%rbp)
	movq $1, %rdi
	movq %rdi, -200(%rbp)
	movq $1, %rdi
	movq %rdi, -208(%rbp)
	movq $1, %rdi
	movq %rdi, -216(%rbp)
	movq $1, %rdi
	movq %rdi, -224(%rbp)
	movq $1, %rdi
	movq %rdi, -232(%rbp)
	movq $1, %rdi
	movq %rdi, -240(%rbp)
	movq $1, %rdi
	movq %rdi, %r11
	movq $1, %rdi
	addq $1, %rdi
	addq %rdi, %r11
	movq -240(%rbp), %rdi
	addq %r11, %rdi
	movq -232(%rbp), %r11
	addq %rdi, %r11
	movq -224(%rbp), %rdi
	addq %r11, %rdi
	movq -216(%rbp), %r11
	addq %rdi, %r11
	movq -208(%rbp), %rdi
	addq %r11, %rdi
	movq -200(%rbp), %r11
	addq %rdi, %r11
	movq -192(%rbp), %rdi
	addq %r11, %rdi
	movq -184(%rbp), %r11
	addq %rdi, %r11
	movq -176(%rbp), %rdi
	addq %r11, %rdi
	movq -168(%rbp), %r11
	addq %rdi, %r11
	movq -160(%rbp), %rdi
	addq %r11, %rdi
	movq -152(%rbp), %r11
	addq %rdi, %r11
	movq -144(%rbp), %rdi
	addq %r11, %rdi
	movq -136(%rbp), %r11
	addq %rdi, %r11
	movq -128(%rbp), %rdi
	addq %r11, %rdi
	movq -120(%rbp), %r11
	addq %rdi, %r11
	movq -112(%rbp), %rdi
	addq %r11, %rdi
	movq -104(%rbp), %r11
	addq %rdi, %r11
	movq -96(%rbp), %rdi
	addq %r11, %rdi
	movq -88(%rbp), %r11
	addq %rdi, %r11
	movq -80(%rbp), %rdi
	addq %r11, %rdi
	movq -72(%rbp), %r11
	addq %rdi, %r11
	movq -64(%rbp), %rdi
	addq %r11, %rdi
	movq -56(%rbp), %r11
	addq %rdi, %r11
	movq -48(%rbp), %rdi
	addq %r11, %rdi
	movq -40(%rbp), %r11
	addq %rdi, %r11
	movq -32(%rbp), %rdi
	addq %r11, %rdi
	movq -24(%rbp), %r11
	addq %rdi, %r11
	movq -16(%rbp), %rdi
	addq %r11, %rdi
	movq %r14, %r11
	addq %rdi, %r11
	movq %r13, %rdi
	addq %r11, %rdi
	movq %r12, %r11
	addq %rdi, %r11
	movq %rbx, %rdi
	addq %r11, %rdi
	addq %rdi, %rsi
	movq %r10, %rdi
	addq %rsi, %rdi
	movq %r9, %rsi
	addq %rdi, %rsi
	addq %rsi, %rdx
	movq %r8, %rsi
	addq %rdx, %rsi
	movq %rcx, %rax
	addq %rsi, %rax
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

