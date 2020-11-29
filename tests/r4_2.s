.globl add
.align 16
addstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp addconclusion
add:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp addstart
addconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block12151:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $40, %rsi
	movq $2, %rdx
	movq %r13, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block12153:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12151
block12152:
	movq $0, %rcx
	jmp block12151
block12154:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq add(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12152
	jmp block12153
block12156:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12154
block12155:
	movq $0, %rcx
	jmp block12154
mainstart:
	leaq add(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block12155
	jmp block12156
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

