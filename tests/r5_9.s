.globl g
.align 16
block85952:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r9
	movq %rbx, %rdi
	movq %r13, %rsi
	movq %r13, %rdx
	movq %r13, %rcx
	movq %r13, %r8
	movq %r12, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block85954:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block85952
block85953:
	movq $0, %rdx
	jmp block85952
gstart:
	movq %rdx, %r13
	movq %rsi, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq %r13, %r14
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block85953
	jmp block85954
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block85955:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	movq $42, %rdx
	movq %r14, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block85957:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85955
block85956:
	movq $0, %rcx
	jmp block85955
block85958:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r14
	leaq lambda85927(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block85956
	jmp block85957
block85960:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85958
block85959:
	movq $0, %rcx
	jmp block85958
mainstart:
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85959
	jmp block85960
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
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
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl lambda85927
.align 16
lambda85927start:
	movq %r8, %rcx
	movq %r9, %rcx
	movq %rsi, %rax
	jmp lambda85927conclusion
lambda85927:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85927start
lambda85927conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

