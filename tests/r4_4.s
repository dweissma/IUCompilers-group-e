.globl sum
.align 16
block80316:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $1, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r12, %rax
	addq %rcx, %rax
	jmp sumconclusion
block80318:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80316
block80317:
	movq $0, %rcx
	jmp block80316
block80315:
	leaq sum(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80317
	jmp block80318
block80314:
	movq $1, %rax
	jmp sumconclusion
sumstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $1, %r12
	 je block80314
	jmp block80315
sum:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp sumstart
sumconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl main
.align 16
block80320:
	movq $777, %rax
	jmp mainconclusion
block80319:
	movq $42, %rax
	jmp mainconclusion
block80321:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $3, %rsi
	callq *%rcx
	movq %rax, %rcx
	cmpq $6, %rcx
	 je block80319
	jmp block80320
block80323:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80321
block80322:
	movq $0, %rdx
	jmp block80321
mainstart:
	leaq sum(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80322
	jmp block80323
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

