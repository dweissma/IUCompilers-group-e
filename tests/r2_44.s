.globl main
.align 16
block8218:
	movq $42, %rax
	jmp mainconclusion
block8217:
	movq $0, %rax
	jmp mainconclusion
block8220:
	movq $42, %rax
	jmp mainconclusion
block8219:
	callq read_int
	movq %rax, %rcx
	cmpq $1, %rcx
	 je block8217
	jmp block8218
mainstart:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block8219
	jmp block8220
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

