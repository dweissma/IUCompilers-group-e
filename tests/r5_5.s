.globl main
.align 16
block159695:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	movq $42, %rdx
	movq %rbx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block159697:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159695
block159696:
	movq $0, %rcx
	jmp block159695
block159698:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq %r12, %r11
	movq 8(%r11), %rbx
	leaq lambda159678(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block159696
	jmp block159697
block159700:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159698
block159699:
	movq $0, %rcx
	jmp block159698
mainstart:
	leaq lambda159675(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159699
	jmp block159700
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %r14
	popq %rbp
	retq 
.globl lambda159675
.align 16
lambda159675start:
	movq %rdi, %rcx
	movq %rsi, %rcx
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
lambda159675:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159675start
lambda159675conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl lambda159678
.align 16
lambda159678start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda159678conclusion
lambda159678:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159678start
lambda159678conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

