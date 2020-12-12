.globl main
.align 16
block159531:
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
	movq $41, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	jmp *%rax
block159533:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159531
block159532:
	movq $0, %rdx
	jmp block159531
mainstart:
	leaq lambda159521(%rip), %rdx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block159532
	jmp block159533
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
.globl lambda159521
.align 16
lambda159521start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	addq $1, %rax
	jmp lambda159521conclusion
lambda159521:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159521start
lambda159521conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

