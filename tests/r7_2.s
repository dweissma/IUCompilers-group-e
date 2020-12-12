.globl main
.align 16
block811001:
	movq $-1, %rdi
	callq exit
block810995:
	movq $-1, %rdi
	callq exit
block810994:
	movq %rcx, %rax
	sarq $3, %rax
	jmp mainconclusion
block810996:
	movq %rsi, %r11
	movq 8(%r11), %rcx
	movq $42, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rsi, %rdi
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block810994
	jmp block810995
block810999:
	jmp block810996
block811000:
	movq $-8, %rsi
	andq %rcx, %rsi
	jmp block810999
block810998:
	movq $-1, %rdi
	callq exit
block810997:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $1, %rdx
	 je block811000
	jmp block811001
block811002:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $144115188075855875, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	orq $3, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $3, %rdx
	 je block810997
	jmp block810998
block811004:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811002
block811003:
	movq $0, %rdx
	jmp block811002
mainstart:
	leaq lambda810979(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811003
	jmp block811004
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
.globl lambda810979
.align 16
lambda810979start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda810979conclusion
lambda810979:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda810979start
lambda810979conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

