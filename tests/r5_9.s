.globl g
.align 16
block159937:
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
	movq %rcx, %r9
	movq %rbx, %rdi
	movq %r12, %rsi
	movq %r12, %rdx
	movq %r12, %rcx
	movq %r12, %r8
	movq %r14, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block159939:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block159937
block159938:
	movq $0, %rdx
	jmp block159937
gstart:
	movq %rdx, %r12
	movq %rsi, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r14
	movq %r12, %r13
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block159938
	jmp block159939
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
block159940:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	movq $42, %rdx
	movq %rbx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block159941:
	movq $0, %rcx
	jmp block159940
block159942:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159940
block159943:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq %r12, %r11
	movq 8(%r11), %rbx
	leaq lambda159912(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159941
	jmp block159942
block159945:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159943
block159944:
	movq $0, %rcx
	jmp block159943
mainstart:
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159944
	jmp block159945
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %r14
	popq %rbp
	retq 
.globl lambda159912
.align 16
lambda159912start:
	movq %r8, %rcx
	movq %r9, %rcx
	movq %rsi, %rax
	jmp lambda159912conclusion
lambda159912:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159912start
lambda159912conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

