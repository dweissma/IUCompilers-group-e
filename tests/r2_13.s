.globl main
.align 16
block82737:
	movq $777, %rax
	jmp mainconclusion
block82736:
	movq $42, %rax
	jmp mainconclusion
block82738:
	cmpq $1, %rcx
	 je block82736
	jmp block82737
block82740:
	movq $0, %rcx
	jmp block82738
block82739:
	movq $1, %rcx
	jmp block82738
block82742:
	movq $0, %rcx
	jmp block82738
block82741:
	cmpq $1, %rcx
	 je block82739
	jmp block82740
mainstart:
	movq $1, %rcx
	cmpq $1, %rcx
	 je block82741
	jmp block82742
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

