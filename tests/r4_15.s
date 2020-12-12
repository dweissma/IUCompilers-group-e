.globl minus
.align 16
minusstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	negq %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp minusconclusion
minus:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp minusstart
minusconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl map__qzxvector
.align 16
block155373:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp map__qzxvectorconclusion
block155375:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155373
block155374:
	movq $0, %rcx
	jmp block155373
map__qzxvectorstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rsi
	movq %rsi, %r11
	movq 8(%r11), %rcx
	movq %rdx, %r11
	movq 8(%r11), %rdx
	movq %rsi, %rdi
	movq %rdx, %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155374
	jmp block155375
map__qzxvector:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp map__qzxvectorstart
map__qzxvectorconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %rbp
	retq 
.globl main
.align 16
block155376:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq %r12, %rsi
	movq %rcx, %rdx
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block155378:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155376
block155377:
	movq $0, %rcx
	jmp block155376
block155379:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $43, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155377
	jmp block155378
block155381:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155379
block155380:
	movq $0, %rcx
	jmp block155379
block155382:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155380
	jmp block155381
block155384:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155382
block155383:
	movq $0, %rcx
	jmp block155382
mainstart:
	leaq map__qzxvector(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155383
	jmp block155384
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

