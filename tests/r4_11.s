.globl f
.align 16
block9953:
	movq %rbx, %r11
	movq 8(%r11), %rax
	jmp fconclusion
block9944:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r13, %rdi
	movq %r12, %rsi
	movq %rcx, %rdx
	movq %r14, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block9946:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block9944
block9945:
	movq $0, %rcx
	jmp block9944
block9947:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	addq $1, %r12
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9945
	jmp block9946
block9949:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block9947
block9948:
	movq $0, %rcx
	jmp block9947
block9950:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9948
	jmp block9949
block9952:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block9950
block9951:
	movq $0, %rcx
	jmp block9950
block9954:
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9951
	jmp block9952
fstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq %rdx, %rbx
	cmpq $100, %r12
	 je block9953
	jmp block9954
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
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
block9955:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r12, %rdi
	movq $0, %rsi
	movq %rcx, %rdx
	movq %r13, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block9956:
	movq $0, %rcx
	jmp block9955
block9957:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block9955
block9958:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9956
	jmp block9957
block9960:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block9958
block9959:
	movq $0, %rcx
	jmp block9958
block9961:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9959
	jmp block9960
block9963:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block9961
block9962:
	movq $0, %rcx
	jmp block9961
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9962
	jmp block9963
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

