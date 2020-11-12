.globl minus
.align 16
minusstart:
	negq %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp minusconclusion
minus:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp minusstart
minusconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl map__qzxvector
.align 16
block139280:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp map__qzxvectorconclusion
block139282:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block139280
block139281:
	movq $0, %rcx
	jmp block139280
map__qzxvectorstart:
	movq %rcx, %rsi
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	callq *%rsi
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block139281
	jmp block139282
map__qzxvector:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
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
block139283:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %r12, %rcx
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block139285:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block139283
block139284:
	movq $0, %rcx
	jmp block139283
mainstart:
	leaq map__qzxvector(%rip), %r13
	leaq minus(%rip), %r12
	movq $43, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block139284
	jmp block139285
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
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
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 

