.globl f
.align 16
block89360:
	leaq f(%rip), %rcx
	movq $1, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %r13
	leaq f(%rip), %rcx
	movq $2, %rdx
	negq %rdx
	movq %r12, %rsi
	addq %rdx, %rsi
	movq %rsi, %rdi
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rax
	addq %rcx, %rax
	jmp fconclusion
block89359:
	movq $1, %rax
	jmp fconclusion
block89362:
	cmpq $1, %r12
	 je block89359
	jmp block89360
block89361:
	movq $0, %rax
	jmp fconclusion
fstart:
	movq %rdi, %r12
	cmpq $0, %r12
	 je block89361
	jmp block89362
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl g
.align 16
block89365:
	movq %rsi, %rax
	jmp gconclusion
block89363:
	movq %rdx, %rax
	jmp gconclusion
block89364:
	leaq g(%rip), %rcx
	movq $1, %r8
	negq %r8
	addq %r8, %rdi
	movq %rsi, %r8
	addq %rdx, %r8
	movq %rdx, %rsi
	movq %r8, %rdx
	movq %rcx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
block89366:
	cmpq $1, %rdi
	 je block89363
	jmp block89364
gstart:
	cmpq $0, %rdi
	 je block89365
	jmp block89366
g:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
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
	leaq f(%rip), %rcx
	movq $8, %rdi
	callq *%rcx
	movq %rax, %r12
	leaq g(%rip), %rcx
	movq $8, %rdi
	movq $0, %rsi
	movq $1, %rdx
	callq *%rcx
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

