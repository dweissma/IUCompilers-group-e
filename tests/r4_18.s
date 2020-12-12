.globl o
.align 16
block156469:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp oconclusion
block156472:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $1, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rdx, %rsi
	movq %r13, %rdx
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block156474:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156472
block156473:
	movq $0, %rcx
	jmp block156472
block156475:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
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
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156473
	jmp block156474
block156477:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block156475
block156476:
	movq $0, %rcx
	jmp block156475
block156478:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156476
	jmp block156477
block156480:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156478
block156479:
	movq $0, %rcx
	jmp block156478
block156481:
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
	 jl block156479
	jmp block156480
block156483:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156481
block156482:
	movq $0, %rcx
	jmp block156481
block156484:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156482
	jmp block156483
block156486:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156484
block156485:
	movq $0, %rcx
	jmp block156484
block156487:
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
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block156485
	jmp block156486
block156489:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156487
block156488:
	movq $0, %rcx
	jmp block156487
block156490:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156488
	jmp block156489
block156492:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156490
block156491:
	movq $0, %rcx
	jmp block156490
block156471:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156469
block156470:
	movq $0, %rcx
	jmp block156469
block156468:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156491
	jmp block156492
block156467:
	movq %r13, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156470
	jmp block156471
ostart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq %rdx, %r13
	cmpq $0, %r12
	 je block156467
	jmp block156468
o:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp ostart
oconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl t
.align 16
block156493:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp tconclusion
block156495:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156493
block156494:
	movq $0, %rcx
	jmp block156493
tstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block156494
	jmp block156495
t:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tstart
tconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 
.globl h
.align 16
block156496:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp hconclusion
block156498:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156496
block156497:
	movq $0, %rdx
	jmp block156496
hstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block156497
	jmp block156498
h:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hstart
hconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 
.globl f
.align 16
block156499:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp fconclusion
block156500:
	movq $0, %rdx
	jmp block156499
block156501:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156499
fstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156500
	jmp block156501
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 
.globl e
.align 16
block156502:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp econclusion
block156504:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156502
block156503:
	movq $0, %rdx
	jmp block156502
estart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156503
	jmp block156504
e:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp estart
econclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	retq 
.globl main
.align 16
block156505:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block156507:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156505
block156506:
	movq $0, %rcx
	jmp block156505
block156508:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 24(%r15), %rdi
	movq $1, %rsi
	movq %rcx, %rdx
	callq *-16(%rbp)
	movq %rax, %rcx
	movq 40(%r15), %rdi
	movq %rcx, %rsi
	callq *-32(%rbp)
	movq %rax, %rcx
	movq 56(%r15), %rdi
	movq %rcx, %rsi
	callq *-48(%rbp)
	movq %rax, %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156506
	jmp block156507
block156510:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156508
block156509:
	movq $0, %rcx
	jmp block156508
block156511:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 24(%r15)
	movq 24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156509
	jmp block156510
block156513:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156511
block156512:
	movq $0, %rcx
	jmp block156511
block156514:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 40(%r15)
	movq 40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -32(%rbp)
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156512
	jmp block156513
block156515:
	movq $0, %rcx
	jmp block156514
block156516:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156514
block156517:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 56(%r15)
	movq 56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156515
	jmp block156516
block156519:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156517
block156518:
	movq $0, %rcx
	jmp block156517
block156520:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block156518
	jmp block156519
block156522:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156520
block156521:
	movq $0, %rcx
	jmp block156520
mainstart:
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156521
	jmp block156522
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $56, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $56, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 

