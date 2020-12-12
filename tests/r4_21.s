.globl tail__qzxsum
.align 16
block156664:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	negq %rdx
	movq %r13, %rsi
	addq %rdx, %rsi
	movq %r13, %rdx
	addq %r12, %rdx
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block156666:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156664
block156665:
	movq $0, %rcx
	jmp block156664
block156663:
	leaq tail__qzxsum(%rip), %rdx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block156665
	jmp block156666
block156662:
	movq %r12, %rax
	jmp tail__qzxsumconclusion
tail__qzxsumstart:
	movq %rsi, %r13
	movq %rdx, %r12
	cmpq $0, %r13
	 je block156662
	jmp block156663
tail__qzxsum:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tail__qzxsumstart
tail__qzxsumconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block156667:
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
	movq $5, %rsi
	movq $0, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rax
	addq $27, %rax
	jmp mainconclusion
block156669:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156667
block156668:
	movq $0, %rdx
	jmp block156667
mainstart:
	leaq tail__qzxsum(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156668
	jmp block156669
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

