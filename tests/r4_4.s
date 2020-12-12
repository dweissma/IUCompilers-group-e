.globl sum
.align 16
block157081:
	movq $1, %rax
	jmp sumconclusion
block157083:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $1, %rsi
	negq %rsi
	movq %rbx, %rdx
	addq %rsi, %rdx
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rbx, %rax
	addq %rcx, %rax
	jmp sumconclusion
block157085:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157083
block157084:
	movq $0, %rdx
	jmp block157083
block157082:
	leaq sum(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157084
	jmp block157085
sumstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $1, %rbx
	 je block157081
	jmp block157082
sum:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp sumstart
sumconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block157087:
	movq $777, %rax
	jmp mainconclusion
block157086:
	movq $42, %rax
	jmp mainconclusion
block157088:
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
	movq $3, %rsi
	callq *%rcx
	movq %rax, %rcx
	cmpq $6, %rcx
	 je block157086
	jmp block157087
block157090:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157088
block157089:
	movq $0, %rdx
	jmp block157088
mainstart:
	leaq sum(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block157089
	jmp block157090
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

