.globl g
.align 16
block140418:
	leaq g(%rip), %rdx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	negq %rcx
	movq %r12, %rsi
	addq %rcx, %rsi
	movq %rsi, %rcx
	movq %rdx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	jmp *%rax
block140417:
	movq $0, %rax
	jmp gconclusion
block140419:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	cmpq $0, %r12
	 je block140417
	jmp block140418
block140421:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140419
block140420:
	movq $0, %rdx
	jmp block140419
gstart:
	movq %rcx, %r12
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140420
	jmp block140421
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl main
.align 16
block140422:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	leaq g(%rip), %rdx
	movq $1000, %rcx
	callq *%rdx
	movq %rax, %rdx
	movq $32, %rcx
	addq %rdx, %rcx
	movq 64(%r15), %r11
	movq 8(%r11), %rdx
	movq 48(%r15), %r11
	movq 8(%r11), %rsi
	movq 40(%r15), %r11
	movq 8(%r11), %rdi
	movq 32(%r15), %r11
	movq 8(%r11), %r8
	movq 24(%r15), %r11
	movq 8(%r11), %r9
	movq 16(%r15), %r11
	movq 8(%r11), %r10
	movq %r14, %r11
	movq 8(%r11), %r14
	movq %r13, %r11
	movq 8(%r11), %r13
	movq %r12, %r11
	movq 8(%r11), %r12
	movq %rbx, %r11
	movq 8(%r11), %r11
	movq %r12, %rbx
	addq %r11, %rbx
	movq %r13, %r11
	addq %rbx, %r11
	movq %r14, %rbx
	addq %r11, %rbx
	addq %rbx, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp mainconclusion
block140423:
	movq $0, %rcx
	jmp block140422
block140424:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140422
block140425:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140423
	jmp block140424
block140427:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140425
block140426:
	movq $0, %rcx
	jmp block140425
block140428:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140426
	jmp block140427
block140430:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140428
block140429:
	movq $0, %rcx
	jmp block140428
block140431:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140429
	jmp block140430
block140433:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140431
block140432:
	movq $0, %rcx
	jmp block140431
block140434:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140432
	jmp block140433
block140435:
	movq $0, %rcx
	jmp block140434
block140436:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140434
block140437:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140435
	jmp block140436
block140439:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140437
block140438:
	movq $0, %rcx
	jmp block140437
block140440:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140438
	jmp block140439
block140442:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140440
block140441:
	movq $0, %rcx
	jmp block140440
block140443:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block140441
	jmp block140442
block140445:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140443
block140444:
	movq $0, %rcx
	jmp block140443
block140446:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 48(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140444
	jmp block140445
block140447:
	movq $0, %rcx
	jmp block140446
block140448:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140446
block140449:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140447
	jmp block140448
block140451:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block140449
block140450:
	movq $0, %rcx
	jmp block140449
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block140450
	jmp block140451
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

