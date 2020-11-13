.globl main
.align 16
block82758:
	movq $42, %rax
	jmp mainconclusion
block82757:
	movq $777, %rax
	jmp mainconclusion
block82759:
	callq read_int
	movq %rax, %rcx
	cmpq $42, %rcx
	 je block82757
	jmp block82758
block82760:
	movq $42, %rax
	jmp mainconclusion
mainstart:
	movq $0, %rcx
	cmpq $1, %rcx
	 je block82759
	jmp block82760
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

