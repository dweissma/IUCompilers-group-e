.globl main
.align 16
block8199:
	movq $777, %rax
	jmp mainconclusion
block8196:
	movq $2, %rax
	addq %rcx, %rax
	jmp mainconclusion
block8198:
	movq $444, %rcx
	jmp block8196
block8197:
	movq $40, %rcx
	jmp block8196
block8200:
	movq $1, %rcx
	addq $1, %rcx
	cmpq $2, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block8197
	jmp block8198
mainstart:
	movq $0, %rax
	cmpq $1, %rax
	 je block8199
	jmp block8200
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

