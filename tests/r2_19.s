.globl main
.align 16
block38604:
	movq $42, %rax
	jmp mainconclusion
block38603:
	movq $777, %rax
	jmp mainconclusion
block38606:
	movq $42, %rax
	jmp mainconclusion
block38605:
	callq read_int
	movq %rax, %rcx
	cmpq $42, %rcx
	 je block38603
	jmp block38604
mainstart:
	movq $0, %rcx
	cmpq $1, %rcx
	 je block38605
	jmp block38606
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

