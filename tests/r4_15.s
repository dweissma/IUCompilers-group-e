.globl minus
.align 16
minusstart:
	movq %rdi, %rcx
	movq %rsi, %rdx
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
block88350:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp map__qzxvectorconclusion
block88352:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88350
block88351:
	movq $0, %rdx
	jmp block88350
map__qzxvectorstart:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rdx
	movq %rdx, %rdi
	movq $1, %rsi
	callq *%rcx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88351
	jmp block88352
map__qzxvector:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp map__qzxvectorstart
map__qzxvectorconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 
.globl main
.align 16
block88353:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %r13, %rdi
	movq %rcx, %rsi
	callq *%r14
	movq %rax, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block88354:
	movq $0, %rdx
	jmp block88353
block88355:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88353
mainstart:
	leaq map__qzxvector(%rip), %r14
	leaq minus(%rip), %r13
	movq $43, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88354
	jmp block88355
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

