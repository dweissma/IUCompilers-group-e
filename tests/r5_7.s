.globl f
.align 16
block159771:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $135, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp fconclusion
block159773:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block159771
block159772:
	movq $0, %rdx
	jmp block159771
fstart:
	movq %rdi, %rdx
	movq $4, %rdx
	leaq lambda159737(%rip), %rdi
	movq %rdi, %r13
	movq %rsi, %r12
	movq %rdx, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block159772
	jmp block159773
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl lambda159737
.align 16
lambda159737start:
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rsi
	movq %rdx, %r11
	movq 24(%r11), %rdx
	addq %rcx, %rdx
	movq %rsi, %rax
	addq %rdx, %rax
	jmp lambda159737conclusion
lambda159737:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159737start
lambda159737conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block159774:
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
	movq $3, %rsi
	callq *%rcx
	movq %rax, %rbx
	movq %r13, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $11, %rsi
	callq *%rcx
	movq %rax, %r13
	movq %rbx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $15, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rax
	addq %rcx, %rax
	jmp mainconclusion
block159776:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159774
block159775:
	movq $0, %rcx
	jmp block159774
block159777:
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
	movq $5, %rsi
	callq *%rcx
	movq %rax, %r13
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159775
	jmp block159776
block159779:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159777
block159778:
	movq $0, %rcx
	jmp block159777
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159778
	jmp block159779
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

