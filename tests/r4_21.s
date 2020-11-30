.globl tail__qzxsum
.align 16
block79897:
	movq %rbx, %rax
	jmp tail__qzxsumconclusion
block79899:
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
	movq $1, %rdx
	negq %rdx
	movq %r12, %rsi
	addq %rdx, %rsi
	movq %r12, %rdx
	addq %rbx, %rdx
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block79900:
	movq $0, %rdx
	jmp block79899
block79901:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79899
block79898:
	leaq tail__qzxsum(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rsi
	cmpq %rsi, %rcx
	 jl block79900
	jmp block79901
tail__qzxsumstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq %rdx, %rbx
	cmpq $0, %r12
	 je block79897
	jmp block79898
tail__qzxsum:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tail__qzxsumstart
tail__qzxsumconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block79902:
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
	movq $5, %rsi
	movq $0, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rax
	addq $27, %rax
	jmp mainconclusion
block79904:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79902
block79903:
	movq $0, %rdx
	jmp block79902
mainstart:
	leaq tail__qzxsum(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79903
	jmp block79904
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

