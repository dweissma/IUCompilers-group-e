.globl main
.align 16
block74352:
	movq $44, %rax
	jmp mainconclusion
block74351:
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %r11
	movq 24(%r11), %rdx
	movq %rdx, %r11
	movq 8(%r11), %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp mainconclusion
block74353:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $519, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rcx
	cmpq $1, %rcx
	 je block74351
	jmp block74352
block74355:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block74353
block74354:
	movq $0, %rcx
	jmp block74353
block74356:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block74354
	jmp block74355
block74358:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block74356
block74357:
	movq $0, %rcx
	jmp block74356
mainstart:
	movq $40, %r14
	movq $1, %r13
	movq $2, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block74357
	jmp block74358
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
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
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

