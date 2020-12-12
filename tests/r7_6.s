.globl hello
.align 16
hellostart:
	movq %rdi, %rcx
	movq $24, %rax
	salq $3, %rax
	orq $1, %rax
	jmp helloconclusion
hello:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hellostart
helloconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl world
.align 16
worldstart:
	movq %rdi, %rcx
	movq $24, %rax
	salq $3, %rax
	orq $1, %rax
	jmp worldconclusion
world:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp worldstart
worldconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block811400:
	movq $-1, %rdi
	callq exit
block811403:
	movq $-1, %rdi
	callq exit
block811406:
	movq $-1, %rdi
	callq exit
block811409:
	movq $-1, %rdi
	callq exit
block811412:
	movq $-1, %rdi
	callq exit
block811415:
	movq $-1, %rdi
	callq exit
block811418:
	movq $-1, %rdi
	callq exit
block811421:
	movq $-1, %rdi
	callq exit
block811424:
	movq $-1, %rdi
	callq exit
block811436:
	movq $-1, %rdi
	callq exit
block811433:
	movq $-1, %rdi
	callq exit
block811427:
	movq $-1, %rdi
	callq exit
block811430:
	movq $-1, %rdi
	callq exit
block811442:
	movq $-1, %rdi
	callq exit
block811454:
	movq $-1, %rdi
	callq exit
block811451:
	movq $-1, %rdi
	callq exit
block811445:
	movq $-1, %rdi
	callq exit
block811448:
	movq $-1, %rdi
	callq exit
block811460:
	movq $-1, %rdi
	callq exit
block811463:
	movq $-1, %rdi
	callq exit
block811394:
	movq $-1, %rdi
	callq exit
block811393:
	movq %rcx, %rax
	sarq $3, %rax
	jmp mainconclusion
block811395:
	movq %rsi, %rdx
	addq %rcx, %rdx
	movq %rdx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block811393
	jmp block811394
block811397:
	movq $-1, %rdi
	callq exit
block811396:
	sarq $3, %rcx
	jmp block811395
block811398:
	addq %rdx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block811396
	jmp block811397
block811399:
	sarq $3, %rdx
	jmp block811398
block811401:
	movq %rdx, %rdi
	andq $7, %rdi
	cmpq $1, %rdi
	 je block811399
	jmp block811400
block811402:
	movq %rdx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rdi, %r11
	movq 0(%r11), %rdx
	jmp block811401
block811404:
	movq %rdi, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %r8
	cmpq %r8, %rdx
	 jl block811402
	jmp block811403
block811405:
	movq %r8, %rdx
	sarq $3, %rdx
	jmp block811404
block811407:
	movq $1, %r8
	salq $3, %r8
	orq $1, %r8
	movq %r8, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block811405
	jmp block811406
block811408:
	movq $-8, %rdi
	andq %rdx, %rdi
	jmp block811407
block811410:
	movq %r14, %rdx
	movq %rdx, %rdi
	andq $7, %rdi
	cmpq $2, %rdi
	 je block811408
	jmp block811409
block811411:
	movq %rdx, %rcx
	sarq $3, %rcx
	jmp block811410
block811413:
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811411
	jmp block811412
block811414:
	movq %rcx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rdx, %r11
	movq 0(%r11), %rcx
	jmp block811413
block811416:
	movq %rdx, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rdi
	cmpq %rdi, %rcx
	 jl block811414
	jmp block811415
block811417:
	movq %rdi, %rcx
	sarq $3, %rcx
	jmp block811416
block811419:
	movq %rcx, %rdx
	movq $0, %rdi
	salq $3, %rdi
	orq $1, %rdi
	movq %rdi, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811417
	jmp block811418
block811420:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811419
block811422:
	movq %r14, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811420
	jmp block811421
block811423:
	movq %rdx, %rsi
	sarq $3, %rsi
	jmp block811422
block811425:
	negq %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811423
	jmp block811424
block811426:
	movq %rdx, %rcx
	sarq $3, %rcx
	jmp block811425
block811428:
	salq $3, %rcx
	orq $5, %rcx
	movq $6, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811426
	jmp block811427
block811431:
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %rcx
	movq %r12, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %r13, %r11
	movq %rcx, 0(%r11)
	movq $0, %rcx
	jmp block811428
block811434:
	jmp block811431
block811435:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811434
block811432:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $0, %rdx
	 je block811435
	jmp block811436
block811437:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	orq $3, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $3, %rdx
	 je block811432
	jmp block811433
block811439:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811437
block811438:
	movq $0, %rcx
	jmp block811437
block811429:
	leaq world(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811438
	jmp block811439
block811440:
	movq %r13, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rcx
	cmpq %rcx, %r12
	 jl block811429
	jmp block811430
block811441:
	movq %rdx, %r12
	sarq $3, %r12
	jmp block811440
block811443:
	movq %rcx, %r13
	movq $1, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811441
	jmp block811442
block811444:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811443
block811446:
	salq $3, %rcx
	orq $5, %rcx
	movq %r14, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811444
	jmp block811445
block811449:
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %rcx
	movq %r12, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %r13, %r11
	movq %rcx, 0(%r11)
	movq $0, %rcx
	jmp block811446
block811452:
	jmp block811449
block811453:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811452
block811450:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $0, %rdx
	 je block811453
	jmp block811454
block811455:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	orq $3, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $3, %rdx
	 je block811450
	jmp block811451
block811456:
	movq $0, %rcx
	jmp block811455
block811457:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811455
block811447:
	leaq hello(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811456
	jmp block811457
block811458:
	movq %r13, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rcx
	cmpq %rcx, %r12
	 jl block811447
	jmp block811448
block811459:
	movq %rdx, %r12
	sarq $3, %r12
	jmp block811458
block811461:
	movq %rcx, %r13
	movq $0, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811459
	jmp block811460
block811462:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811461
block811464:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r14
	orq $2, %r14
	movq %r14, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811462
	jmp block811463
block811466:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block811464
block811465:
	movq $0, %rcx
	jmp block811464
mainstart:
	movq $0, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq $0, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811465
	jmp block811466
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

