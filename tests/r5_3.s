.globl main
.align 16
block159557:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $42, %rsi
	callq *%rcx
	movq %rax, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $444, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %rbp
	jmp *%rax
block159559:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159557
block159558:
	movq $0, %rdx
	jmp block159557
mainstart:
	leaq lambda159538(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159558
	jmp block159559
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %rbp
	retq 
.globl lambda159538
.align 16
block159560:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $133, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp lambda159538conclusion
block159562:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block159560
block159561:
	movq $0, %rdx
	jmp block159560
lambda159538start:
	movq %rdi, %rdx
	movq %rsi, %rdx
	leaq lambda159540(%rip), %rsi
	movq %rsi, %rbx
	movq %rdx, %r12
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block159561
	jmp block159562
lambda159538:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159538start
lambda159538conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl lambda159540
.align 16
lambda159540start:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rax
	jmp lambda159540conclusion
lambda159540:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159540start
lambda159540conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

