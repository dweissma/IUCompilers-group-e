.globl zero
.align 16
block139118:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %rax
	jmp zeroconclusion
block139121:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	negq %rdx
	addq %rdx, %rcx
	movq %rbx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	jmp *%rax
block139123:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block139121
block139122:
	movq $0, %rcx
	jmp block139121
block139120:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block139118
block139119:
	movq $0, %rcx
	jmp block139118
block139125:
	leaq zero(%rip), %rbx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block139122
	jmp block139123
block139124:
	movq free_ptr(%rip), %rcx
	addq $0, %rcx
	movq fromspace_end(%rip), %rsi
	cmpq %rsi, %rcx
	 jl block139119
	jmp block139120
zerostart:
	cmpq $0, %rcx
	 je block139124
	jmp block139125
zero:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	addq $0, %r15
	jmp zerostart
zeroconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl main
.align 16
block139126:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $391, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 24(%r11), %rax
	jmp mainconclusion
block139128:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block139126
block139127:
	movq $0, %rcx
	jmp block139126
mainstart:
	leaq zero(%rip), %rdx
	movq $1, %rcx
	callq *%rdx
	movq %rax, %rcx
	movq %rcx, %r12
	leaq zero(%rip), %rdx
	movq $2, %rcx
	callq *%rdx
	movq %rax, %r13
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block139127
	jmp block139128
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

