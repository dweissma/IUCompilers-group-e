.globl id
.align 16
idstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp idconclusion
id:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp idstart
idconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block811030:
	movq $-1, %rdi
	callq exit
block811024:
	movq $-1, %rdi
	callq exit
block811023:
	movq %rcx, %rax
	sarq $3, %rax
	jmp mainconclusion
block811025:
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
	 je block811023
	jmp block811024
block811028:
	jmp block811025
block811029:
	movq $-8, %rsi
	andq %rcx, %rsi
	jmp block811028
block811027:
	movq $-1, %rdi
	callq exit
block811026:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $1, %rdx
	 je block811029
	jmp block811030
block811031:
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
	 je block811026
	jmp block811027
block811033:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811031
block811032:
	movq $0, %rdx
	jmp block811031
mainstart:
	leaq id(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811032
	jmp block811033
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

