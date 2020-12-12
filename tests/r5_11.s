.globl f
.align 16
block158840:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $133, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp fconclusion
block158842:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block158840
block158841:
	movq $0, %rdx
	jmp block158840
fstart:
	movq %rdi, %rdx
	movq %rsi, %rdx
	leaq lambda158817(%rip), %rsi
	movq %rsi, %rbx
	movq %rdx, %r12
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block158841
	jmp block158842
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
.globl lambda158817
.align 16
lambda158817start:
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	negq %rcx
	movq %rdx, %rax
	addq %rcx, %rax
	jmp lambda158817conclusion
lambda158817:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda158817start
lambda158817conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block158843:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r13
	callq read_int
	movq %rax, %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	callq *%r13
	movq %rax, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r13
	callq read_int
	movq %rax, %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	movq %r13, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r13
	popq %rbp
	jmp *%rax
block158844:
	movq $0, %rcx
	jmp block158843
block158845:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block158843
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block158844
	jmp block158845
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

