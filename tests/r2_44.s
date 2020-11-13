.globl main
.align 16
block82828:
	movq $42, %rax
	jmp mainconclusion
block82827:
	movq $0, %rax
	jmp mainconclusion
block82830:
	movq $42, %rax
	jmp mainconclusion
block82829:
	callq read_int
	movq %rax, %rcx
	cmpq $1, %rcx
	 je block82827
	jmp block82828
mainstart:
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block82829
	jmp block82830
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

