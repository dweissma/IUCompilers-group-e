.globl map
.align 16
block78056:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $5, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp mapconclusion
block78058:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block78056
block78057:
	movq $0, %rcx
	jmp block78056
mapstart:
	movq %rdi, %rcx
	movq %rsi, %r14
	movq %rdx, %rbx
	movq %r14, %rsi
	movq %rsi, %r11
	movq 8(%r11), %rcx
	movq %rbx, %r11
	movq 8(%r11), %rdx
	movq %rsi, %rdi
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %r12
	movq %r14, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rbx, %r11
	movq 16(%r11), %rsi
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78057
	jmp block78058
map:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mapstart
mapconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 
.globl add1
.align 16
add1start:
	movq %rdi, %rcx
	movq %rsi, %rcx
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
block78059:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $5, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 24(%r15), %rdi
	movq %r14, %rsi
	movq %rcx, %rdx
	callq *-16(%rbp)
	movq %rax, %rcx
	movq %rcx, %r11
	movq 16(%r11), %rax
	jmp mainconclusion
block78060:
	movq $0, %rcx
	jmp block78059
block78061:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block78059
block78062:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $0, %r13
	movq $41, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78060
	jmp block78061
block78064:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78062
block78063:
	movq $0, %rcx
	jmp block78062
block78065:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 24(%r15)
	movq 24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq add1(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78063
	jmp block78064
block78067:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78065
block78066:
	movq $0, %rcx
	jmp block78065
mainstart:
	leaq map(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78066
	jmp block78067
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

