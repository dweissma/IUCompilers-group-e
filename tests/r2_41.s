.globl main
.align 16
block38652:
	movq $2, %rax
	addq %rcx, %rax
	jmp mainconclusion
block38654:
	movq $444, %rcx
	jmp block38652
block38653:
	movq $40, %rcx
	jmp block38652
block38656:
	movq $1, %rcx
	addq $1, %rcx
	cmpq $2, %rcx
	 sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	 je block38653
	jmp block38654
block38655:
	movq $777, %rax
	jmp mainconclusion
mainstart:
	movq $0, %rax
	cmpq $1, %rax
	 je block38655
	jmp block38656
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

