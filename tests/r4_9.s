.globl add
.align 16
addstart:
	movq %rcx, %rax
	addq %rdx, %rax
	jmp addconclusion
add:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp addstart
addconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
mainstart:
	leaq add(%rip), %rsi
	movq $20, %rcx
	movq $22, %rdx
	movq %rsi, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

