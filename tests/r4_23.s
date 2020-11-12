.globl f
.align 16
block140281:
	leaq f(%rip), %rdx
	movq $1, %rsi
	negq %rsi
	movq %rbx, %rcx
	addq %rsi, %rcx
	callq *%rdx
	movq %rax, %r13
	leaq f(%rip), %rdx
	movq $2, %rcx
	negq %rcx
	movq %rbx, %rsi
	addq %rcx, %rsi
	movq %rsi, %rcx
	callq *%rdx
	movq %rax, %rcx
	movq %r13, %rax
	addq %rcx, %rax
	jmp fconclusion
block140280:
	movq $1, %rax
	jmp fconclusion
block140283:
	cmpq $1, %rbx
	 je block140280
	jmp block140281
block140282:
	movq $0, %rax
	jmp fconclusion
fstart:
	movq %rcx, %rbx
	cmpq $0, %rbx
	 je block140282
	jmp block140283
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r13
	subq $0, %rsp
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r13
	popq %rbp
	retq 
.globl g
.align 16
block140286:
	movq %rdx, %rax
	jmp gconclusion
block140284:
	movq %rdi, %rax
	jmp gconclusion
block140285:
	leaq g(%rip), %rsi
	movq $1, %r8
	negq %r8
	addq %r8, %rcx
	movq %rdx, %r8
	addq %rdi, %r8
	movq %rdi, %rdx
	movq %r8, %rdi
	movq %rsi, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
block140287:
	cmpq $1, %rcx
	 je block140284
	jmp block140285
gstart:
	cmpq $0, %rcx
	 je block140286
	jmp block140287
g:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
mainstart:
	leaq f(%rip), %rdx
	movq $8, %rcx
	callq *%rdx
	movq %rax, %r12
	leaq g(%rip), %rsi
	movq $8, %rcx
	movq $0, %rdx
	movq $1, %rdi
	callq *%rsi
	movq %rax, %rcx
	movq %r12, %rax
	addq %rcx, %rax
	jmp mainconclusion
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %r12
	popq %rbp
	retq 

