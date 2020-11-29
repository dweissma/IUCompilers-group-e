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
block10709:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp map__qzxvectorconclusion
block10711:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10709
block10710:
	movq $0, %rcx
	jmp block10709
map__qzxvectorstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %r11
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
	 jl block10710
	jmp block10711
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
block10712:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq %r13, %rsi
	movq %rcx, %rdx
	callq *-16(%rbp)
	movq %rax, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block10714:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10712
block10713:
	movq $0, %rcx
	jmp block10712
block10715:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $43, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10713
	jmp block10714
block10717:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10715
block10716:
	movq $0, %rcx
	jmp block10715
block10718:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq minus(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10716
	jmp block10717
block10720:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10718
block10719:
	movq $0, %rcx
	jmp block10718
block10721:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq map__qzxvector(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10719
	jmp block10720
block10723:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block10721
block10722:
	movq $0, %rcx
	jmp block10721
mainstart:
	leaq map__qzxvector(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block10722
	jmp block10723
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

