.globl main
.align 16
block810936:
	movq $-1, %rdi
	callq exit
block810935:
	movq %rcx, %rax
	sarq $3, %rax
	jmp mainconclusion
block810937:
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block810935
	jmp block810936
block810939:
	movq $-1, %rdi
	callq exit
block810938:
	movq %rcx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rdx, %r11
	movq 0(%r11), %rcx
	jmp block810937
block810940:
	movq %rdx, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rsi
	cmpq %rsi, %rcx
	 jl block810938
	jmp block810939
block810942:
	movq $-1, %rdi
	callq exit
block810941:
	movq %rsi, %rcx
	sarq $3, %rcx
	jmp block810940
block810943:
	movq $0, %rsi
	salq $3, %rsi
	orq $1, %rsi
	movq %rsi, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block810941
	jmp block810942
block810945:
	movq $-1, %rdi
	callq exit
block810944:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block810943
block810946:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	orq $2, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $2, %rdx
	 je block810944
	jmp block810945
block810948:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block810946
block810947:
	movq $0, %rdx
	jmp block810946
mainstart:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block810947
	jmp block810948
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

