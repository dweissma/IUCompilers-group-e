.globl main
.align 16
block71752:
	movq $777, %rax
	jmp mainconclusion
block71751:
	movq $42, %rax
	jmp mainconclusion
block71753:
	cmpq $1, %rcx
	 je block71751
	jmp block71752
block71756:
	movq $1, %rcx
	jmp block71753
block71757:
	movq $0, %rcx
	jmp block71753
block71754:
	cmpq $1, %rcx
	 je block71756
	jmp block71757
block71755:
	movq $0, %rcx
	jmp block71753
mainstart:
	movq $1, %rcx
	cmpq $1, %rcx
	 je block71754
	jmp block71755
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

