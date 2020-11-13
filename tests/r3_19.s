.globl main
.align 16
block85280:
	movq $777, %rax
	jmp mainconclusion
block85279:
	movq $42, %rax
	jmp mainconclusion
block85281:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	cmpq %rcx, %rcx
	 je block85279
	jmp block85280
block85283:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85281
block85282:
	movq $0, %rdx
	jmp block85281
mainstart:
	movq $0, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block85282
	jmp block85283
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 

