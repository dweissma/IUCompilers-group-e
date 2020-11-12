.globl main
.align 16
block41055:
	movq %rbx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block41057:
	movq %r13, %r11
	movq $42, 8(%r11)
	movq $0, %rcx
	jmp block41055
block41056:
	movq %rbx, %r11
	movq $42, 8(%r11)
	movq $0, %rcx
	jmp block41055
block41058:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block41056
	jmp block41057
block41060:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block41058
block41059:
	movq $0, %rcx
	jmp block41058
block41061:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $1, -32(%rbp)
	movq $2, -24(%rbp)
	movq $3, -16(%rbp)
	movq $4, %r14
	movq $5, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block41059
	jmp block41060
block41062:
	movq $0, %rcx
	jmp block41061
block41063:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block41061
mainstart:
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block41062
	jmp block41063
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $40, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $40, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 

