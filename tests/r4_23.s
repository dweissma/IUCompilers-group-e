.globl f
.align 16
block12454:
	movq $1, %rax
	jmp fconclusion
block12456:
	movq $0, %rax
	jmp fconclusion
block12442:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq $2, %rdx
	negq %rdx
	movq %r12, %rcx
	addq %rdx, %rcx
	movq %rsi, %rdi
	movq %rcx, %rsi
	callq *%r14
	movq %rax, %rcx
	movq -16(%rbp), %rax
	addq %rcx, %rax
	jmp fconclusion
block12444:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12442
block12443:
	movq $0, %rcx
	jmp block12442
block12445:
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
	 jl block12443
	jmp block12444
block12447:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12445
block12446:
	movq $0, %rcx
	jmp block12445
block12448:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq $1, %rdx
	negq %rdx
	movq %r12, %rcx
	addq %rdx, %rcx
	movq %rsi, %rdi
	movq %rcx, %rsi
	callq *%r13
	movq %rax, -16(%rbp)
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12446
	jmp block12447
block12450:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12448
block12449:
	movq $0, %rcx
	jmp block12448
block12451:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq f(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12449
	jmp block12450
block12453:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12451
block12452:
	movq $0, %rcx
	jmp block12451
block12455:
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12452
	jmp block12453
block12457:
	cmpq $1, %r12
	 je block12454
	jmp block12455
fstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $0, %r12
	 je block12456
	jmp block12457
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl g
.align 16
block12464:
	movq %r13, %rax
	jmp gconclusion
block12466:
	movq %r14, %rax
	jmp gconclusion
block12458:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq $1, %rcx
	negq %rcx
	movq -16(%rbp), %rsi
	addq %rcx, %rsi
	movq %r14, %rcx
	addq %r13, %rcx
	movq %rdx, %rdi
	movq %r13, %rdx
	movq %r12, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block12460:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12458
block12459:
	movq $0, %rcx
	jmp block12458
block12461:
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
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block12459
	jmp block12460
block12462:
	movq $0, %rcx
	jmp block12461
block12463:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12461
block12465:
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12462
	jmp block12463
block12467:
	cmpq $1, -16(%rbp)
	 je block12464
	jmp block12465
gstart:
	movq %rsi, -16(%rbp)
	movq %rdx, %r14
	movq %rcx, %r13
	cmpq $0, -16(%rbp)
	 je block12466
	jmp block12467
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block12468:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $8, %rsi
	movq $0, %rdx
	movq $1, %rcx
	callq *%r12
	movq %rax, %rcx
	movq %r13, %rax
	addq %rcx, %rax
	jmp mainconclusion
block12470:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12468
block12469:
	movq $0, %rcx
	jmp block12468
block12471:
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
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12469
	jmp block12470
block12473:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12471
block12472:
	movq $0, %rcx
	jmp block12471
block12474:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $8, %rsi
	callq *%r12
	movq %rax, %r13
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12472
	jmp block12473
block12476:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12474
block12475:
	movq $0, %rcx
	jmp block12474
block12477:
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
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12475
	jmp block12476
block12479:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12477
block12478:
	movq $0, %rcx
	jmp block12477
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12478
	jmp block12479
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

