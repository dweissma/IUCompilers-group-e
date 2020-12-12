.globl f
.align 16
block159261:
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
block159262:
	movq $0, %rdx
	jmp block159261
block159263:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block159261
fstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq $4, %rsi
	leaq lambda159227(%rip), %rdi
	movq %rdi, %r13
	movq %rsi, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block159262
	jmp block159263
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
.globl lambda159227
.align 16
lambda159227start:
	movq %rdi, %rcx
	movq %rcx, %r11
	movq 16(%r11), %rdx
	movq %rcx, %r11
	movq 24(%r11), %rcx
	addq %rsi, %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp lambda159227conclusion
lambda159227:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159227start
lambda159227conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block159264:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $3, %rsi
	callq *%rcx
	movq %rax, %r12
	movq %r13, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $11, %rsi
	callq *%rcx
	movq %rax, %r13
	movq %r12, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $15, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rax
	addq %rcx, %rax
	jmp mainconclusion
block159266:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159264
block159265:
	movq $0, %rcx
	jmp block159264
block159267:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $5, %rsi
	callq *%rcx
	movq %rax, %r13
	leaq f(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159265
	jmp block159266
block159269:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159267
block159268:
	movq $0, %rcx
	jmp block159267
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159268
	jmp block159269
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

