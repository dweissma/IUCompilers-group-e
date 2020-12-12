.globl main
.align 16
block810900:
	movq $-1, %rdi
	callq exit
block810903:
	movq $-1, %rdi
	callq exit
block810894:
	movq $-1, %rdi
	callq exit
block810893:
	movq %rdx, %rax
	sarq $3, %rax
	jmp mainconclusion
block810895:
	addq %rcx, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block810893
	jmp block810894
block810897:
	movq $-1, %rdi
	callq exit
block810896:
	movq %rsi, %rcx
	sarq $3, %rcx
	jmp block810895
block810898:
	negq %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rsi
	movq %rsi, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block810896
	jmp block810897
block810899:
	movq %rsi, %rcx
	sarq $3, %rcx
	jmp block810898
block810901:
	movq $8, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rsi
	movq %rsi, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block810899
	jmp block810900
block810902:
	sarq $3, %rdx
	jmp block810901
block810904:
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block810902
	jmp block810903
block810906:
	movq $50, %rcx
	salq $3, %rcx
	orq $1, %rcx
	jmp block810904
block810905:
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	jmp block810904
mainstart:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 je block810905
	jmp block810906
main:
	pushq %rbp
	movq %rsp, %rbp
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
	popq %rbp
	retq 

