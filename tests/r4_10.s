.globl map
.align 16
block88089:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp mapconclusion
block88091:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block88089
block88090:
	movq $0, %rdx
	jmp block88089
mapstart:
	movq %rdi, %rbx
	movq %rsi, %r14
	movq %r14, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rdi
	callq *%rbx
	movq %rax, %r13
	movq %r14, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88090
	jmp block88091
map:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mapstart
mapconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl add1
.align 16
add1start:
	movq %rdi, %rcx
	movq %rcx, %rax
	addq $1, %rax
	jmp add1conclusion
add1:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp add1start
add1conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block88092:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %r14, %rdi
	movq %rcx, %rsi
	callq *-16(%rbp)
	movq %rax, %rcx
	movq %rcx, %r11
	movq 16(%r11), %rax
	jmp mainconclusion
block88094:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block88092
block88093:
	movq $0, %rdx
	jmp block88092
mainstart:
	leaq map(%rip), %rax
	movq %rax, -16(%rbp)
	leaq add1(%rip), %r14
	movq $0, %r13
	movq $41, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88093
	jmp block88094
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

