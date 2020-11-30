.globl main
.align 16
block74298:
	movq $777, %rax
	jmp mainconclusion
block74297:
	movq $42, %rax
	jmp mainconclusion
block74299:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	cmpq %rcx, %rcx
	 je block74297
	jmp block74298
block74300:
	movq $0, %rdx
	jmp block74299
block74301:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block74299
mainstart:
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74300
	jmp block74301
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

