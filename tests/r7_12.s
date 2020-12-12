.globl main
.align 16
block810863:
	movq $-1, %rdi
	callq exit
block810866:
	movq $-1, %rdi
	callq exit
block810869:
	movq $-1, %rdi
	callq exit
block810857:
	movq $-1, %rdi
	callq exit
block810856:
	movq %rcx, %rax
	sarq $3, %rax
	jmp mainconclusion
block810858:
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block810856
	jmp block810857
block810861:
	movq %rsi, %rdx
	addq %rcx, %rdx
	movq %rdx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	jmp block810858
block810862:
	movq %rdx, %rcx
	sarq $3, %rcx
	jmp block810861
block810864:
	negq %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block810862
	jmp block810863
block810865:
	movq %rdx, %rcx
	sarq $3, %rcx
	jmp block810864
block810867:
	movq $3, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block810865
	jmp block810866
block810868:
	movq %rdx, %rsi
	sarq $3, %rsi
	jmp block810867
block810860:
	movq $45, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block810868
	jmp block810869
block810859:
	movq $777, %rcx
	salq $3, %rcx
	orq $1, %rcx
	jmp block810858
block810870:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $144115188075855875, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	orq $3, %rcx
	cmpq %rcx, %rcx
	 sete %al
	movzbq %al, %rcx
	movq %rcx, %rdx
	salq $3, %rdx
	orq $4, %rdx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 je block810859
	jmp block810860
block810872:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block810870
block810871:
	movq $0, %rdx
	jmp block810870
mainstart:
	leaq lambda810832(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block810871
	jmp block810872
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
.globl lambda810832
.align 16
lambda810832start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda810832conclusion
lambda810832:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda810832start
lambda810832conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

