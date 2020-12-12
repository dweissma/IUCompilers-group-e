.globl idkcomb
.align 16
block159662:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $444, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block159664:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block159662
block159663:
	movq $0, %rcx
	jmp block159662
block159665:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq %r13, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq lambda159634(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159663
	jmp block159664
block159667:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159665
block159666:
	movq $0, %rcx
	jmp block159665
idkcombstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	leaq lambda159631(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159666
	jmp block159667
idkcomb:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp idkcombstart
idkcombconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl lambda159631
.align 16
lambda159631start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda159631conclusion
lambda159631:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159631start
lambda159631conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl lambda159634
.align 16
lambda159634start:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rax
	jmp lambda159634conclusion
lambda159634:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159634start
lambda159634conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block159668:
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
	movq $42, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	jmp *%rax
block159670:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159668
block159669:
	movq $0, %rdx
	jmp block159668
mainstart:
	leaq idkcomb(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159669
	jmp block159670
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

