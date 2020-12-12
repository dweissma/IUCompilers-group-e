.globl tailrecur
.align 16
block157115:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $1, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rdx, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	jmp *%rax
block157117:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157115
block157116:
	movq $0, %rdx
	jmp block157115
block157114:
	leaq tailrecur(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157116
	jmp block157117
block157113:
	movq $0, %rax
	jmp tailrecurconclusion
tailrecurstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $0, %r12
	 je block157113
	jmp block157114
tailrecur:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tailrecurstart
tailrecurconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl main
.align 16
block157119:
	movq $777, %rax
	jmp mainconclusion
block157118:
	movq $42, %rax
	jmp mainconclusion
block157120:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $99, %rsi
	callq *%rcx
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block157118
	jmp block157119
block157122:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157120
block157121:
	movq $0, %rdx
	jmp block157120
mainstart:
	leaq tailrecur(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157121
	jmp block157122
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

