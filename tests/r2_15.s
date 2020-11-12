.globl main
.align 16
block38591:
	movq $42, %rax
	jmp mainconclusion
block38592:
	movq $777, %rax
	jmp mainconclusion
block38593:
	cmpq $42, %rcx
	 je block38591
	jmp block38592
block38595:
	movq $20, %rcx
	jmp block38593
block38594:
	jmp block38593
mainstart:
	movq $42, %rcx
	cmpq $42, %rcx
	 je block38594
	jmp block38595
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

