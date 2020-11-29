.globl tail__qzxsum
.align 16
block12287:
	movq %rbx, %rax
	jmp tail__qzxsumconclusion
block12281:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq $1, %rcx
	negq %rcx
	movq %r12, %rdx
	addq %rcx, %rdx
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rsi, %rdi
	movq %rdx, %rsi
	movq %rcx, %rdx
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block12283:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12281
block12282:
	movq $0, %rcx
	jmp block12281
block12284:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq tail__qzxsum(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12282
	jmp block12283
block12286:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12284
block12285:
	movq $0, %rcx
	jmp block12284
block12288:
	leaq tail__qzxsum(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12285
	jmp block12286
tail__qzxsumstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq %rdx, %rbx
	cmpq $0, %r12
	 je block12287
	jmp block12288
tail__qzxsum:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tail__qzxsumstart
tail__qzxsumconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 
.globl main
.align 16
block12289:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $5, %rsi
	movq $0, %rdx
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %rax
	addq $27, %rax
	jmp mainconclusion
block12291:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12289
block12290:
	movq $0, %rcx
	jmp block12289
block12292:
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
	leaq tail__qzxsum(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block12290
	jmp block12291
block12294:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12292
block12293:
	movq $0, %rcx
	jmp block12292
mainstart:
	leaq tail__qzxsum(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12293
	jmp block12294
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

