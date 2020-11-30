.globl main
.align 16
block28401:
	movq $777, %rax
	jmp mainconclusion
block28400:
	movq $42, %rax
	jmp mainconclusion
block28402:
	cmpq $1, %rcx
	 je block28400
	jmp block28401
block28404:
	movq $0, %rcx
	jmp block28402
block28403:
	movq $1, %rcx
	jmp block28402
block28406:
	movq $0, %rcx
	jmp block28402
block28405:
	cmpq $1, %rcx
	 je block28403
	jmp block28404
mainstart:
	movq $1, %rcx
	cmpq $1, %rcx
	 je block28405
	jmp block28406
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

