.globl main
.align 16
block85639:
	movq free_ptr(%rip), %rdx
	addq $136, free_ptr(%rip)
	movq %rdx, %r11
	movq $8388513, 0(%r11)
	movq %rdx, %r11
	movq 96(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 80(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 72(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 112(%r15), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 40(%r11), %rcx
	movq %rcx, %r11
	movq 32(%r11), %rcx
	movq %rcx, %r11
	movq 24(%r11), %rcx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block85641:
	movq %r15, %rdi
	movq $128, %rsi
	callq collect
	jmp block85639
block85640:
	movq $0, %rcx
	jmp block85639
block85642:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 96(%r15)
	movq %rcx, 88(%r15)
	movq %rcx, 80(%r15)
	movq %rcx, 72(%r15)
	movq %rcx, 64(%r15)
	movq %rcx, 56(%r15)
	movq %rcx, 40(%r15)
	movq %rcx, 32(%r15)
	movq %rcx, 24(%r15)
	movq %rcx, 16(%r15)
	movq %rcx, %r14
	movq %rcx, %r13
	movq %rcx, 112(%r15)
	movq %rcx, %r12
	movq %rcx, %rbx
	movq %rcx, 48(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $128, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85640
	jmp block85641
block85644:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block85642
block85643:
	movq $0, %rcx
	jmp block85642
block85645:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1929, 0(%r11)
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
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 40(%r15)
	movq %rcx, 32(%r15)
	movq %rcx, 24(%r15)
	movq %rcx, 16(%r15)
	movq %rcx, %r14
	movq %rcx, %r13
	movq %rcx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85643
	jmp block85644
block85647:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block85645
block85646:
	movq $0, %rcx
	jmp block85645
block85648:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r14
	movq %rcx, %r13
	movq %rcx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block85646
	jmp block85647
block85650:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block85648
block85649:
	movq $0, %rcx
	jmp block85648
block85651:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85649
	jmp block85650
block85652:
	movq $0, %rcx
	jmp block85651
block85653:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85651
mainstart:
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85652
	jmp block85653
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

