.globl f
.align 16
block85042:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp fconclusion
block85044:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block85042
block85043:
	movq $0, %rcx
	jmp block85042
block85045:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq lambda85001(%rip), %rdx
	movq %rdx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85043
	jmp block85044
block85046:
	movq $0, %rcx
	jmp block85045
block85047:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85045
fstart:
	movq %rdi, %rcx
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85046
	jmp block85047
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl lambda85001
.align 16
lambda85001start:
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	movq %rdx, %r11
	movq %rcx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp lambda85001conclusion
lambda85001:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85001start
lambda85001conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block85048:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %rbx
	movq %r13, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $1, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rbx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $2, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $20, %rsi
	callq *%rcx
	movq %rax, %r13
	movq %rbx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $22, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %r11
	movq 8(%r11), %rdx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rax
	addq %rcx, %rax
	jmp mainconclusion
block85050:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85048
block85049:
	movq $0, %rcx
	jmp block85048
block85051:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %r13
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85049
	jmp block85050
block85053:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85051
block85052:
	movq $0, %rcx
	jmp block85051
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85052
	jmp block85053
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
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
	popq %rbx
	popq %r13
	popq %rbp
	retq 

