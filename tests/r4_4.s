.globl sum
.align 16
block38588:
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
	callq *%r14
	movq %rax, %rcx
	movq %rbx, %rax
	addq %rcx, %rax
	jmp sumconclusion
block38590:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38588
block38589:
	movq $0, %rcx
	jmp block38588
block38591:
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
	leaq sum(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38589
	jmp block38590
block38593:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38591
block38592:
	movq $0, %rcx
	jmp block38591
block38595:
	leaq sum(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38592
	jmp block38593
block38594:
	movq $1, %rax
	jmp sumconclusion
sumstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $1, %rbx
	 je block38594
	jmp block38595
sum:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp sumstart
sumconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block38597:
	movq $777, %rax
	jmp mainconclusion
block38596:
	movq $42, %rax
	jmp mainconclusion
block38598:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $3, %rsi
	callq *%r12
	movq %rax, %rcx
	cmpq $6, %rcx
	 je block38596
	jmp block38597
block38600:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38598
block38599:
	movq $0, %rcx
	jmp block38598
block38601:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	leaq sum(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38599
	jmp block38600
block38603:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38601
block38602:
	movq $0, %rcx
	jmp block38601
mainstart:
	leaq sum(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38602
	jmp block38603
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

