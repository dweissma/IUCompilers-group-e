.globl main
.align 16
block8465:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %r11
	movq 8(%r11), %rdx
	movq %r12, %r11
	movq 8(%r11), %rsi
	movq %rbx, %r11
	movq 8(%r11), %rdi
	movq 152(%r15), %r11
	movq 8(%r11), %r8
	movq 144(%r15), %r11
	movq 8(%r11), %r9
	movq 136(%r15), %r11
	movq 8(%r11), %r10
	movq 128(%r15), %r11
	movq 8(%r11), %rbx
	movq 120(%r15), %r11
	movq 8(%r11), %r12
	movq 112(%r15), %r11
	movq 8(%r11), %r13
	movq 104(%r15), %r11
	movq 8(%r11), %r14
	movq 96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	movq 88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq 80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq 72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq 64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq 56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq 48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq 40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -40(%rbp)
	movq 32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -32(%rbp)
	movq 24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -24(%rbp), %r11
	addq %rcx, %r11
	movq -32(%rbp), %rcx
	addq %r11, %rcx
	movq -40(%rbp), %r11
	addq %rcx, %r11
	movq -48(%rbp), %rcx
	addq %r11, %rcx
	movq -56(%rbp), %r11
	addq %rcx, %r11
	movq -64(%rbp), %rcx
	addq %r11, %rcx
	movq -72(%rbp), %r11
	addq %rcx, %r11
	movq -80(%rbp), %rcx
	addq %r11, %rcx
	movq -88(%rbp), %r11
	addq %rcx, %r11
	movq -16(%rbp), %rcx
	addq %r11, %rcx
	movq %r14, %r11
	addq %rcx, %r11
	movq %r13, %rcx
	addq %r11, %rcx
	movq %r12, %r11
	addq %rcx, %r11
	movq %rbx, %rcx
	addq %r11, %rcx
	addq %rcx, %r10
	movq %r9, %rcx
	addq %r10, %rcx
	addq %rcx, %r8
	movq %rdi, %rcx
	addq %r8, %rcx
	addq %rcx, %rsi
	movq %rdx, %rax
	addq %rsi, %rax
	jmp mainconclusion
block8467:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8465
block8466:
	movq $0, %rcx
	jmp block8465
block8468:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8466
	jmp block8467
block8470:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8468
block8469:
	movq $0, %rcx
	jmp block8468
block8471:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8469
	jmp block8470
block8473:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8471
block8472:
	movq $0, %rcx
	jmp block8471
block8474:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8472
	jmp block8473
block8476:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8474
block8475:
	movq $0, %rcx
	jmp block8474
block8477:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 48(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8475
	jmp block8476
block8479:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8477
block8478:
	movq $0, %rcx
	jmp block8477
block8480:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 56(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8478
	jmp block8479
block8482:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8480
block8481:
	movq $0, %rcx
	jmp block8480
block8483:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 64(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8481
	jmp block8482
block8485:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8483
block8484:
	movq $0, %rcx
	jmp block8483
block8486:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 72(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8484
	jmp block8485
block8488:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8486
block8487:
	movq $0, %rcx
	jmp block8486
block8489:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 80(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8487
	jmp block8488
block8491:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8489
block8490:
	movq $0, %rcx
	jmp block8489
block8492:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 88(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8490
	jmp block8491
block8494:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8492
block8493:
	movq $0, %rcx
	jmp block8492
block8495:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 96(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8493
	jmp block8494
block8497:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8495
block8496:
	movq $0, %rcx
	jmp block8495
block8498:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 104(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8496
	jmp block8497
block8500:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8498
block8499:
	movq $0, %rcx
	jmp block8498
block8501:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 112(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8499
	jmp block8500
block8503:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8501
block8502:
	movq $0, %rcx
	jmp block8501
block8504:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 120(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8502
	jmp block8503
block8506:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8504
block8505:
	movq $0, %rcx
	jmp block8504
block8507:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 128(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8505
	jmp block8506
block8509:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8507
block8508:
	movq $0, %rcx
	jmp block8507
block8510:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 136(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8508
	jmp block8509
block8512:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8510
block8511:
	movq $0, %rcx
	jmp block8510
block8513:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 144(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8511
	jmp block8512
block8515:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8513
block8514:
	movq $0, %rcx
	jmp block8513
block8516:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 152(%r15)
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8514
	jmp block8515
block8518:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8516
block8517:
	movq $0, %rcx
	jmp block8516
block8519:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8517
	jmp block8518
block8521:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8519
block8520:
	movq $0, %rcx
	jmp block8519
block8522:
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
	 jl block8520
	jmp block8521
block8524:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8522
block8523:
	movq $0, %rcx
	jmp block8522
block8525:
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
	 jl block8523
	jmp block8524
block8527:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8525
block8526:
	movq $0, %rcx
	jmp block8525
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8526
	jmp block8527
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $96, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $96, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

