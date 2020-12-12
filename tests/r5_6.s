.globl app
.align 16
appstart:
	movq %rdi, %rcx
	movq %rdx, %rcx
	movq %rsi, %r11
	movq 8(%r11), %rdx
	movq %rsi, %rdi
	movq %rcx, %rsi
	movq %rdx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
app:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp appstart
appconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block159724:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	movq $42, %rdx
	movq %r13, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block159726:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159724
block159725:
	movq $0, %rcx
	jmp block159724
block159727:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	leaq lambda159707(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159725
	jmp block159726
block159729:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159727
block159728:
	movq $0, %rcx
	jmp block159727
mainstart:
	leaq app(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159728
	jmp block159729
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
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
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl lambda159707
.align 16
lambda159707start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda159707conclusion
lambda159707:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159707start
lambda159707conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

