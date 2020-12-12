.globl app1
.align 16
app1start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $42, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
app1:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp app1start
app1conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
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
block159506:
	movq %r12, %rdi
	movq %rcx, %rsi
	movq %r13, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block159508:
	jmp block159506
block159507:
	movq %r14, %rcx
	jmp block159506
block159509:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	cmpq $1, -16(%rbp)
	 je block159507
	jmp block159508
block159511:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159509
block159510:
	movq $0, %rcx
	jmp block159509
block159512:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq lambda159479(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159510
	jmp block159511
block159514:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159512
block159513:
	movq $0, %rcx
	jmp block159512
block159515:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 sete %al
	movzbq %al, %rax
	movq %rax, -16(%rbp)
	leaq add1(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159513
	jmp block159514
block159517:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159515
block159516:
	movq $0, %rcx
	jmp block159515
mainstart:
	leaq app1(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159516
	jmp block159517
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $16, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl lambda159479
.align 16
lambda159479start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda159479conclusion
lambda159479:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159479start
lambda159479conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

