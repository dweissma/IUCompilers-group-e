.globl tailrecur
.align 16
block38646:
	movq $0, %rax
	jmp tailrecurconclusion
block38640:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq $1, %rdx
	negq %rdx
	movq %rbx, %rcx
	addq %rdx, %rcx
	movq %rsi, %rdi
	movq %rcx, %rsi
	movq %r14, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block38642:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38640
block38641:
	movq $0, %rcx
	jmp block38640
block38643:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq tailrecur(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38641
	jmp block38642
block38645:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38643
block38644:
	movq $0, %rcx
	jmp block38643
block38647:
	leaq tailrecur(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38644
	jmp block38645
tailrecurstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $0, %rbx
	 je block38646
	jmp block38647
tailrecur:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tailrecurstart
tailrecurconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block38649:
	movq $777, %rax
	jmp mainconclusion
block38648:
	movq $42, %rax
	jmp mainconclusion
block38650:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $99, %rsi
	callq *%rbx
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block38648
	jmp block38649
block38652:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38650
block38651:
	movq $0, %rcx
	jmp block38650
block38653:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	leaq tailrecur(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38651
	jmp block38652
block38655:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38653
block38654:
	movq $0, %rcx
	jmp block38653
mainstart:
	leaq tailrecur(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38654
	jmp block38655
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
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
	popq %rbp
	retq 

