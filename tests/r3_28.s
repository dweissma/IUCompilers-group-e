.globl main
.align 16
block9401:
	movq free_ptr(%rip), %rcx
	addq $112, free_ptr(%rip)
	movq %rcx, %r11
	movq $786331, 0(%r11)
	movq %rcx, %r11
	movq 80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 64(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 56(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 88(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 96(%r11), %rax
	jmp mainconclusion
block9403:
	movq %r15, %rdi
	movq $104, %rsi
	callq collect
	jmp block9401
block9402:
	movq $0, %rdx
	jmp block9401
block9404:
	movq free_ptr(%rip), %rcx
	addq $104, free_ptr(%rip)
	movq %rcx, %r11
	movq $393113, 0(%r11)
	movq %rcx, %r11
	movq 72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 64(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 96(%r11)
	movq $0, %rdx
	movq %rcx, 80(%r15)
	movq %r14, 88(%r15)
	movq $42, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $104, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9402
	jmp block9403
block9406:
	movq %r15, %rdi
	movq $96, %rsi
	callq collect
	jmp block9404
block9405:
	movq $0, %rdx
	jmp block9404
block9407:
	movq free_ptr(%rip), %rcx
	addq $96, free_ptr(%rip)
	movq %rcx, %r11
	movq $196503, 0(%r11)
	movq %rcx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 88(%r11)
	movq $0, %rdx
	movq %rcx, 72(%r15)
	movq $42, -80(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $96, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9405
	jmp block9406
block9409:
	movq %r15, %rdi
	movq $88, %rsi
	callq collect
	jmp block9407
block9408:
	movq $0, %rdx
	jmp block9407
block9410:
	movq free_ptr(%rip), %rcx
	addq $88, free_ptr(%rip)
	movq %rcx, %r11
	movq $98197, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 80(%r11)
	movq $0, %rdx
	movq %rcx, 64(%r15)
	movq $42, -72(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $88, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9408
	jmp block9409
block9412:
	movq %r15, %rdi
	movq $80, %rsi
	callq collect
	jmp block9410
block9411:
	movq $0, %rdx
	jmp block9410
block9413:
	movq free_ptr(%rip), %rcx
	addq $80, free_ptr(%rip)
	movq %rcx, %r11
	movq $49043, 0(%r11)
	movq %rcx, %r11
	movq 56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 72(%r11)
	movq $0, %rdx
	movq %rcx, %rbx
	movq $42, -64(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $80, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9411
	jmp block9412
block9415:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	jmp block9413
block9414:
	movq $0, %rdx
	jmp block9413
block9416:
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $24465, 0(%r11)
	movq %rcx, %r11
	movq 48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 64(%r11)
	movq $0, %rdx
	movq %rcx, 56(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $72, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9414
	jmp block9415
block9418:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block9416
block9417:
	movq $0, %rdx
	jmp block9416
block9419:
	movq free_ptr(%rip), %rcx
	addq $64, free_ptr(%rip)
	movq %rcx, %r11
	movq $12175, 0(%r11)
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 56(%r11)
	movq $0, %rdx
	movq %rcx, 48(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9417
	jmp block9418
block9421:
	movq %r15, %rdi
	movq $56, %rsi
	callq collect
	jmp block9419
block9420:
	movq $0, %rdx
	jmp block9419
block9422:
	movq free_ptr(%rip), %rcx
	addq $56, free_ptr(%rip)
	movq %rcx, %r11
	movq $6029, 0(%r11)
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 48(%r11)
	movq $0, %rdx
	movq %rcx, 40(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $56, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9420
	jmp block9421
block9424:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	jmp block9422
block9423:
	movq $0, %rdx
	jmp block9422
block9425:
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $2955, 0(%r11)
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 40(%r11)
	movq $0, %rdx
	movq %rcx, 32(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $48, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9423
	jmp block9424
block9426:
	movq $0, %rdx
	jmp block9425
block9427:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block9425
block9428:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1417, 0(%r11)
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rcx, 24(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9426
	jmp block9427
block9430:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block9428
block9429:
	movq $0, %rdx
	jmp block9428
block9431:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $647, 0(%r11)
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rcx, 16(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9429
	jmp block9430
block9433:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block9431
block9432:
	movq $0, %rdx
	jmp block9431
block9434:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r14
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9432
	jmp block9433
block9436:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block9434
block9435:
	movq $0, %rdx
	jmp block9434
block9437:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %r13
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9435
	jmp block9436
block9439:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block9437
block9438:
	movq $0, %rdx
	jmp block9437
mainstart:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $0, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9438
	jmp block9439
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
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
	popq %r14
	popq %r13
	popq %rbp
	retq 

