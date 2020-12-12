.globl add1
.align 16
add1start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	addq $1, %rax
	jmp add1conclusion
add1:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp add1start
add1conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block159618:
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $41, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r13
	popq %rbp
	jmp *%rax
block159621:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	jmp block159618
block159623:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159621
block159622:
	movq $0, %rcx
	jmp block159621
block159619:
	leaq add1(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159622
	jmp block159623
block159624:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	jmp block159618
block159626:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block159624
block159625:
	movq $0, %rcx
	jmp block159624
block159620:
	leaq lambda159599(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159625
	jmp block159626
mainstart:
	callq read_int
	movq %rax, %rbx
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block159619
	jmp block159620
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
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
	popq %r13
	popq %rbp
	retq 
.globl lambda159599
.align 16
lambda159599start:
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	negq %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp lambda159599conclusion
lambda159599:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159599start
lambda159599conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

