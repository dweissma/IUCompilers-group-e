.globl fun
.align 16
funstart:
	movq %r8, %rdi
	movq %r9, %r11
	movq 8(%r11), %r10
	movq 16(%r11), %r9
	movq 24(%r11), %r8
	movq 32(%r11), %r11
	addq %r11, %r8
	addq %r8, %r9
	movq %r10, %r8
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rcx
	addq %rcx, %rdx
	movq %rsi, %rax
	addq %rdx, %rax
	jmp funconclusion
fun:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp funstart
funconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block157051:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $9, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r9
	movq 24(%r15), %rdi
	movq $5, %rsi
	movq $5, %rdx
	movq $5, %rcx
	movq $5, %r8
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block157053:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block157051
block157052:
	movq $0, %rcx
	jmp block157051
block157054:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq 24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	movq $5, %r14
	movq $5, %r13
	movq $5, %r12
	movq $7, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157052
	jmp block157053
block157056:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157054
block157055:
	movq $0, %rcx
	jmp block157054
mainstart:
	leaq fun(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157055
	jmp block157056
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
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
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

