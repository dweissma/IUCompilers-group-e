.globl tailrecur
.align 16
block12931:
	movq $0, %rax
	jmp tailrecurconclusion
block12925:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq $1, %rsi
	negq %rsi
	movq %r13, %rdx
	addq %rsi, %rdx
	movq %rcx, %rdi
	movq %rdx, %rsi
	movq %r12, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block12927:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12925
block12926:
	movq $0, %rcx
	jmp block12925
block12928:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	leaq tailrecur(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12926
	jmp block12927
block12930:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12928
block12929:
	movq $0, %rcx
	jmp block12928
block12932:
	leaq tailrecur(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12929
	jmp block12930
tailrecurstart:
	movq %rdi, %rcx
	movq %rsi, %r13
	cmpq $0, %r13
	 je block12931
	jmp block12932
tailrecur:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tailrecurstart
tailrecurconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block12934:
	movq $777, %rax
	jmp mainconclusion
block12933:
	movq $42, %rax
	jmp mainconclusion
block12935:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $99, %rsi
	callq *%rbx
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block12933
	jmp block12934
block12937:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12935
block12936:
	movq $0, %rcx
	jmp block12935
block12938:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	leaq tailrecur(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12936
	jmp block12937
block12940:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12938
block12939:
	movq $0, %rcx
	jmp block12938
mainstart:
	leaq tailrecur(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12939
	jmp block12940
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

