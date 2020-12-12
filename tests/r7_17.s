.globl main
.align 16
block810965:
	movq $-1, %rdi
	callq exit
block810964:
	movq %rdx, %rax
	sarq $3, %rax
	jmp mainconclusion
block810966:
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block810964
	jmp block810965
block810968:
	movq $42, %rdx
	salq $3, %rdx
	orq $1, %rdx
	jmp block810966
block810967:
	movq $777, %rdx
	salq $3, %rdx
	orq $1, %rdx
	jmp block810966
block810969:
	xorq $1, %rcx
	movq %rcx, %rdx
	salq $3, %rdx
	orq $4, %rdx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 je block810967
	jmp block810968
block810971:
	movq $-1, %rdi
	callq exit
block810970:
	movq %rdx, %rcx
	sarq $3, %rcx
	jmp block810969
block810972:
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $4, %rcx
	 je block810970
	jmp block810971
block810974:
	movq $0, %rcx
	salq $3, %rcx
	orq $1, %rcx
	jmp block810972
block810973:
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	jmp block810972
mainstart:
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	cmpq %rdx, %rcx
	 sete %al
	movzbq %al, %rcx
	salq $3, %rcx
	orq $4, %rcx
	movq $0, %rdx
	salq $3, %rdx
	orq $4, %rdx
	cmpq %rcx, %rdx
	 je block810973
	jmp block810974
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

