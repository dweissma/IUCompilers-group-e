.globl tailrecur
.align 16
block80348:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	negq %rdx
	movq %r12, %rsi
	addq %rdx, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	jmp *%rax
block80350:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80348
block80349:
	movq $0, %rdx
	jmp block80348
block80347:
	leaq tailrecur(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80349
	jmp block80350
block80346:
	movq $0, %rax
	jmp tailrecurconclusion
tailrecurstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $0, %r12
	 je block80346
	jmp block80347
tailrecur:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tailrecurstart
tailrecurconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl main
.align 16
block80352:
	movq $777, %rax
	jmp mainconclusion
block80351:
	movq $42, %rax
	jmp mainconclusion
block80353:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $99, %rsi
	callq *%rcx
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block80351
	jmp block80352
block80355:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80353
block80354:
	movq $0, %rdx
	jmp block80353
mainstart:
	leaq tailrecur(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80354
	jmp block80355
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %rbp
	retq 

