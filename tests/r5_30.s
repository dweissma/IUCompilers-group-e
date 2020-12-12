.globl main
.align 16
block159588:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $42, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	jmp *%rax
block159590:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block159588
block159589:
	movq $0, %rcx
	jmp block159588
block159591:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq lambda159569(%rip), %rdx
	movq %rdx, %rbx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159589
	jmp block159590
block159593:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159591
block159592:
	movq $0, %rcx
	jmp block159591
mainstart:
	leaq lambda159567(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159592
	jmp block159593
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
.globl lambda159567
.align 16
lambda159567start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda159567conclusion
lambda159567:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159567start
lambda159567conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl lambda159569
.align 16
lambda159569start:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rsi
	movq %rsi, %r11
	movq 8(%r11), %rcx
	movq %rsi, %rdi
	movq %rdx, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
lambda159569:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159569start
lambda159569conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

