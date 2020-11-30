.globl f
.align 16
block85284:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $135, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp fconclusion
block85286:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block85284
block85285:
	movq $0, %rcx
	jmp block85284
fstart:
	movq %rdi, %rdx
	movq $4, %rdx
	leaq lambda85250(%rip), %rdi
	movq %rdi, %r13
	movq %rsi, %rbx
	movq %rdx, %r12
	movq free_ptr(%rip), %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rsi
	cmpq %rsi, %rdx
	 jl block85285
	jmp block85286
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
.globl lambda85250
.align 16
lambda85250start:
	movq %rsi, %rdx
	movq %rdi, %r11
	movq 16(%r11), %rcx
	movq %rdi, %r11
	movq 24(%r11), %rsi
	addq %rdx, %rsi
	movq %rcx, %rax
	addq %rsi, %rax
	jmp lambda85250conclusion
lambda85250:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85250start
lambda85250conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block85287:
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
	movq %rbx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $11, %rsi
	callq *%rcx
	movq %rax, %rbx
	movq %r12, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $15, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rbx, %rax
	addq %rcx, %rax
	jmp mainconclusion
block85289:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85287
block85288:
	movq $0, %rcx
	jmp block85287
block85290:
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
	movq %rax, %rbx
	leaq f(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85288
	jmp block85289
block85292:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85290
block85291:
	movq $0, %rcx
	jmp block85290
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85291
	jmp block85292
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
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
	popq %r12
	popq %rbp
	retq 

