.globl main
.align 16
block151518:
	movq free_ptr(%rip), %rdx
	addq $112, free_ptr(%rip)
	movq %rdx, %r11
	movq $786331, 0(%r11)
	movq %rdx, %r11
	movq 80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 88(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 104(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 96(%r11), %rax
	jmp mainconclusion
block151520:
	movq %r15, %rdi
	movq $104, %rsi
	callq collect
	jmp block151518
block151519:
	movq $0, %rcx
	jmp block151518
block151521:
	movq free_ptr(%rip), %rdx
	addq $104, free_ptr(%rip)
	movq %rdx, %r11
	movq $393113, 0(%r11)
	movq %rdx, %r11
	movq 72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 96(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 80(%r15)
	movq 24(%r15), %rax
	movq %rax, 88(%r15)
	movq $42, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $104, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151519
	jmp block151520
block151523:
	movq %r15, %rdi
	movq $96, %rsi
	callq collect
	jmp block151521
block151522:
	movq $0, %rcx
	jmp block151521
block151524:
	movq free_ptr(%rip), %rdx
	addq $96, free_ptr(%rip)
	movq %rdx, %r11
	movq $196503, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 88(%r11)
	movq $0, %rcx
	movq %rdx, 72(%r15)
	movq $42, -80(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $96, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151522
	jmp block151523
block151526:
	movq %r15, %rdi
	movq $88, %rsi
	callq collect
	jmp block151524
block151525:
	movq $0, %rcx
	jmp block151524
block151527:
	movq free_ptr(%rip), %rdx
	addq $88, free_ptr(%rip)
	movq %rdx, %r11
	movq $98197, 0(%r11)
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 80(%r11)
	movq $0, %rcx
	movq %rdx, 64(%r15)
	movq $42, -72(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $88, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151525
	jmp block151526
block151529:
	movq %r15, %rdi
	movq $80, %rsi
	callq collect
	jmp block151527
block151528:
	movq $0, %rcx
	jmp block151527
block151530:
	movq free_ptr(%rip), %rdx
	addq $80, free_ptr(%rip)
	movq %rdx, %r11
	movq $49043, 0(%r11)
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 72(%r11)
	movq $0, %rcx
	movq %rdx, 56(%r15)
	movq $42, -64(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $80, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151528
	jmp block151529
block151532:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	jmp block151530
block151531:
	movq $0, %rcx
	jmp block151530
block151533:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $24465, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 64(%r11)
	movq $0, %rcx
	movq %rdx, 48(%r15)
	movq $42, -56(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $72, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151531
	jmp block151532
block151535:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block151533
block151534:
	movq $0, %rcx
	jmp block151533
block151536:
	movq free_ptr(%rip), %rdx
	addq $64, free_ptr(%rip)
	movq %rdx, %r11
	movq $12175, 0(%r11)
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 56(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $42, -48(%rbp)
	movq free_ptr(%rip), %rcx
	addq $64, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block151534
	jmp block151535
block151538:
	movq %r15, %rdi
	movq $56, %rsi
	callq collect
	jmp block151536
block151537:
	movq $0, %rcx
	jmp block151536
block151539:
	movq free_ptr(%rip), %rdx
	addq $56, free_ptr(%rip)
	movq %rdx, %r11
	movq $6029, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 48(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $42, -40(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $56, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151537
	jmp block151538
block151541:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	jmp block151539
block151540:
	movq $0, %rcx
	jmp block151539
block151542:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $2955, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $42, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $48, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151540
	jmp block151541
block151544:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block151542
block151543:
	movq $0, %rcx
	jmp block151542
block151545:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1417, 0(%r11)
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq 24(%r15), %rax
	movq %rax, 16(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151543
	jmp block151544
block151547:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block151545
block151546:
	movq $0, %rcx
	jmp block151545
block151548:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $647, 0(%r11)
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq 24(%r15), %rax
	movq %rax, 16(%r15)
	movq $42, %rbx
	movq %r13, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151546
	jmp block151547
block151550:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block151548
block151549:
	movq $0, %rcx
	jmp block151548
block151551:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $261, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq 24(%r15), %rax
	movq %rax, 16(%r15)
	movq $42, %rbx
	movq %r13, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151549
	jmp block151550
block151553:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block151551
block151552:
	movq $0, %rcx
	jmp block151551
block151554:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %r13
	movq $42, %rbx
	movq %r13, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151552
	jmp block151553
block151556:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block151554
block151555:
	movq $0, %rcx
	jmp block151554
mainstart:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $0, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block151555
	jmp block151556
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $88, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $88, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 

