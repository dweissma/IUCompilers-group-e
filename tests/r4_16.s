.globl minus
.align 16
minusstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	negq %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp minusconclusion
minus:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp minusstart
minusconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl z
.align 16
block79280:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp zconclusion
block79282:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79280
block79281:
	movq $0, %rcx
	jmp block79280
block79278:
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79281
	jmp block79282
block79283:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq -16(%rbp), %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq %r12, %rax
	subq $0, %r15
	addq $136, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block79285:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79283
block79284:
	movq $0, %rcx
	jmp block79283
block79286:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq %r13, %r11
	movq 8(%r11), %r12
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79284
	jmp block79285
block79288:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79286
block79287:
	movq $0, %rcx
	jmp block79286
block79289:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 16(%r11)
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
	movq 56(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq z(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79287
	jmp block79288
block79291:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block79289
block79290:
	movq $0, %rcx
	jmp block79289
block79292:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rbx, 32(%r15)
	movq %rcx, 24(%r15)
	movq %rbx, 56(%r15)
	movq %rcx, %r13
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79290
	jmp block79291
block79294:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block79292
block79293:
	movq $0, %rcx
	jmp block79292
block79295:
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
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, %r13
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79293
	jmp block79294
block79297:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block79295
block79296:
	movq $0, %rcx
	jmp block79295
block79298:
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
	 jl block79296
	jmp block79297
block79300:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79298
block79299:
	movq $0, %rcx
	jmp block79298
block79301:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79299
	jmp block79300
block79303:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79301
block79302:
	movq $0, %rcx
	jmp block79301
block79304:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79302
	jmp block79303
block79305:
	movq $0, %rcx
	jmp block79304
block79306:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79304
block79307:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79305
	jmp block79306
block79309:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79307
block79308:
	movq $0, %rcx
	jmp block79307
block79310:
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
	 jl block79308
	jmp block79309
block79312:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79310
block79311:
	movq $0, %rcx
	jmp block79310
block79279:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79311
	jmp block79312
zstart:
	movq %rdi, %rcx
	movq %rsi, -16(%rbp)
	cmpq $0, -16(%rbp)
	 je block79278
	jmp block79279
z:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $136, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp zstart
zconclusion:
	subq $0, %r15
	addq $136, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl o
.align 16
block79315:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp oconclusion
block79318:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq -64(%rbp), %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	movq 56(%r15), %rdx
	movq %r13, %rax
	subq $0, %r15
	addq $152, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block79320:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79318
block79319:
	movq $0, %rcx
	jmp block79318
block79321:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	leaq minus(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79319
	jmp block79320
block79323:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79321
block79322:
	movq $0, %rcx
	jmp block79321
block79324:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 24(%r11)
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
	movq 16(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq o(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79322
	jmp block79323
block79326:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block79324
block79325:
	movq $0, %rcx
	jmp block79324
block79327:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r13, 48(%r15)
	movq %rcx, %r12
	movq %r13, 40(%r15)
	movq %rcx, 32(%r15)
	movq %r13, 24(%r15)
	movq %rcx, 16(%r15)
	movq %r13, %r14
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79325
	jmp block79326
block79329:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block79327
block79328:
	movq $0, %rcx
	jmp block79327
block79330:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79328
	jmp block79329
block79332:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block79330
block79331:
	movq $0, %rcx
	jmp block79330
block79333:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79331
	jmp block79332
block79335:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79333
block79334:
	movq $0, %rcx
	jmp block79333
block79336:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $5, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79334
	jmp block79335
block79338:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79336
block79337:
	movq $0, %rcx
	jmp block79336
block79339:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $4, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79337
	jmp block79338
block79341:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79339
block79340:
	movq $0, %rcx
	jmp block79339
block79342:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block79340
	jmp block79341
block79344:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79342
block79343:
	movq $0, %rcx
	jmp block79342
block79345:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79343
	jmp block79344
block79347:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79345
block79346:
	movq $0, %rcx
	jmp block79345
block79317:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79315
block79316:
	movq $0, %rcx
	jmp block79315
block79314:
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79346
	jmp block79347
block79313:
	movq 56(%r15), %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79316
	jmp block79317
ostart:
	movq %rdi, %rcx
	movq %rsi, -64(%rbp)
	movq %rdx, 56(%r15)
	cmpq $0, -64(%rbp)
	 je block79313
	jmp block79314
o:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $152, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp ostart
oconclusion:
	subq $0, %r15
	addq $152, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl t
.align 16
block79350:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp tconclusion
block79352:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79350
block79351:
	movq $0, %rcx
	jmp block79350
block79348:
	movq %r13, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79351
	jmp block79352
block79353:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq %r14, %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	movq %r13, %rdx
	movq %rbx, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block79355:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79353
block79354:
	movq $0, %rcx
	jmp block79353
block79356:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq %r12, %r11
	movq 8(%r11), %rbx
	leaq minus(%rip), %rcx
	movq %rcx, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79354
	jmp block79355
block79358:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79356
block79357:
	movq $0, %rcx
	jmp block79356
block79359:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
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
	movq 32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79357
	jmp block79358
block79361:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block79359
block79360:
	movq $0, %rcx
	jmp block79359
block79362:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 64(%r15)
	movq %rcx, 56(%r15)
	movq %rbx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rbx, 32(%r15)
	movq %rcx, 24(%r15)
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $64, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block79360
	jmp block79361
block79364:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block79362
block79363:
	movq $0, %rcx
	jmp block79362
block79365:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79363
	jmp block79364
block79367:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block79365
block79366:
	movq $0, %rcx
	jmp block79365
block79368:
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
	 jl block79366
	jmp block79367
block79370:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79368
block79369:
	movq $0, %rcx
	jmp block79368
block79371:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79369
	jmp block79370
block79373:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79371
block79372:
	movq $0, %rcx
	jmp block79371
block79374:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79372
	jmp block79373
block79376:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79374
block79375:
	movq $0, %rcx
	jmp block79374
block79377:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79375
	jmp block79376
block79378:
	movq $0, %rcx
	jmp block79377
block79379:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79377
block79380:
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
	 jl block79378
	jmp block79379
block79382:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79380
block79381:
	movq $0, %rcx
	jmp block79380
block79349:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79381
	jmp block79382
tstart:
	movq %rdi, %rcx
	movq %rsi, %r14
	movq %rdx, %r13
	cmpq $0, %r14
	 je block79348
	jmp block79349
t:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tstart
tconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl h
.align 16
block79388:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq %r12, %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq 16(%r15), %rdi
	movq %rcx, %rsi
	movq %rbx, %rdx
	movq %r14, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block79390:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79388
block79389:
	movq $0, %rcx
	jmp block79388
block79391:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq 16(%r15), %r11
	movq 8(%r11), %r14
	leaq minus(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79389
	jmp block79390
block79393:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79391
block79392:
	movq $0, %rcx
	jmp block79391
block79394:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
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
	movq 32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq h(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79392
	jmp block79393
block79396:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block79394
block79395:
	movq $0, %rcx
	jmp block79394
block79397:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r13, 64(%r15)
	movq %rcx, 56(%r15)
	movq %r13, 48(%r15)
	movq %rcx, 40(%r15)
	movq %r13, 32(%r15)
	movq %rcx, 16(%r15)
	movq %r13, %r14
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79395
	jmp block79396
block79399:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block79397
block79398:
	movq $0, %rcx
	jmp block79397
block79400:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
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
	movq %r14, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79398
	jmp block79399
block79402:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block79400
block79401:
	movq $0, %rcx
	jmp block79400
block79403:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79401
	jmp block79402
block79405:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79403
block79404:
	movq $0, %rcx
	jmp block79403
block79406:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $5, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79404
	jmp block79405
block79408:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79406
block79407:
	movq $0, %rcx
	jmp block79406
block79409:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $4, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79407
	jmp block79408
block79411:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79409
block79410:
	movq $0, %rcx
	jmp block79409
block79412:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $3, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79410
	jmp block79411
block79414:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79412
block79413:
	movq $0, %rcx
	jmp block79412
block79415:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $2, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79413
	jmp block79414
block79417:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79415
block79416:
	movq $0, %rcx
	jmp block79415
block79384:
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79416
	jmp block79417
block79385:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp hconclusion
block79387:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79385
block79386:
	movq $0, %rcx
	jmp block79385
block79383:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79386
	jmp block79387
hstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq %rdx, %rbx
	cmpq $0, %r12
	 je block79383
	jmp block79384
h:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hstart
hconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl f
.align 16
block79420:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp fconclusion
block79423:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq %r14, %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq 24(%r15), %rdi
	movq %rcx, %rsi
	movq %r13, %rdx
	movq %r12, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block79425:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79423
block79424:
	movq $0, %rcx
	jmp block79423
block79426:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq 24(%r15), %r11
	movq 8(%r11), %r12
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79424
	jmp block79425
block79428:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79426
block79427:
	movq $0, %rcx
	jmp block79426
block79429:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79427
	jmp block79428
block79431:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block79429
block79430:
	movq $0, %rcx
	jmp block79429
block79432:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 64(%r15)
	movq %rcx, 32(%r15)
	movq %rbx, 56(%r15)
	movq %rcx, 24(%r15)
	movq %rbx, 48(%r15)
	movq %rcx, %r12
	movq %rbx, 40(%r15)
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79430
	jmp block79431
block79434:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block79432
block79433:
	movq $0, %rcx
	jmp block79432
block79435:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79433
	jmp block79434
block79437:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block79435
block79436:
	movq $0, %rcx
	jmp block79435
block79438:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79436
	jmp block79437
block79440:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79438
block79439:
	movq $0, %rcx
	jmp block79438
block79441:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $5, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79439
	jmp block79440
block79443:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79441
block79442:
	movq $0, %rcx
	jmp block79441
block79444:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $4, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79442
	jmp block79443
block79446:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79444
block79445:
	movq $0, %rcx
	jmp block79444
block79447:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $3, -24(%rbp)
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block79445
	jmp block79446
block79449:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79447
block79448:
	movq $0, %rcx
	jmp block79447
block79450:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block79448
	jmp block79449
block79452:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79450
block79451:
	movq $0, %rcx
	jmp block79450
block79422:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79420
block79421:
	movq $0, %rcx
	jmp block79420
block79419:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79451
	jmp block79452
block79418:
	movq %r13, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79421
	jmp block79422
fstart:
	movq %rdi, %rcx
	movq %rsi, %r14
	movq %rdx, %r13
	cmpq $0, %r14
	 je block79418
	jmp block79419
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl e
.align 16
block79455:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp econclusion
block79457:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79455
block79456:
	movq $0, %rcx
	jmp block79455
block79453:
	movq 16(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79456
	jmp block79457
block79458:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq -24(%rbp), %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq 16(%r15), %rdx
	movq %r12, %rax
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block79460:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79458
block79459:
	movq $0, %rcx
	jmp block79458
block79461:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq %r13, %r11
	movq 8(%r11), %r12
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79459
	jmp block79460
block79463:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79461
block79462:
	movq $0, %rcx
	jmp block79461
block79464:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
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
	movq 32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79462
	jmp block79463
block79466:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block79464
block79465:
	movq $0, %rcx
	jmp block79464
block79467:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 64(%r15)
	movq %rcx, 56(%r15)
	movq %rbx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rbx, 32(%r15)
	movq %rcx, %r13
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79465
	jmp block79466
block79469:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block79467
block79468:
	movq $0, %rcx
	jmp block79467
block79470:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, %r13
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79468
	jmp block79469
block79472:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block79470
block79471:
	movq $0, %rcx
	jmp block79470
block79473:
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
	 jl block79471
	jmp block79472
block79475:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79473
block79474:
	movq $0, %rcx
	jmp block79473
block79476:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79474
	jmp block79475
block79477:
	movq $0, %rcx
	jmp block79476
block79478:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79476
block79479:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79477
	jmp block79478
block79481:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79479
block79480:
	movq $0, %rcx
	jmp block79479
block79482:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79480
	jmp block79481
block79484:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79482
block79483:
	movq $0, %rcx
	jmp block79482
block79485:
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
	 jl block79483
	jmp block79484
block79487:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79485
block79486:
	movq $0, %rcx
	jmp block79485
block79454:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79486
	jmp block79487
estart:
	movq %rdi, %rcx
	movq %rsi, -24(%rbp)
	movq %rdx, 16(%r15)
	cmpq $0, -24(%rbp)
	 je block79453
	jmp block79454
e:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $152, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp estart
econclusion:
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block79488:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $20, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *%r12
	movq %rax, %rcx
	movq 24(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-16(%rbp)
	movq %rax, %rcx
	movq 40(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-32(%rbp)
	movq %rax, %rcx
	movq 56(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-48(%rbp)
	movq %rax, %rcx
	movq 72(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-64(%rbp)
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
block79489:
	movq $0, %rcx
	jmp block79488
block79490:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79488
block79491:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r13
	movq %r13, %r11
	movq 8(%r11), %r12
	leaq z(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79489
	jmp block79490
block79493:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79491
block79492:
	movq $0, %rcx
	jmp block79491
block79494:
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
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79492
	jmp block79493
block79496:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79494
block79495:
	movq $0, %rcx
	jmp block79494
block79497:
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
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79495
	jmp block79496
block79499:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79497
block79498:
	movq $0, %rcx
	jmp block79497
block79500:
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
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79498
	jmp block79499
block79501:
	movq $0, %rcx
	jmp block79500
block79502:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79500
block79503:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 72(%r15)
	movq 72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79501
	jmp block79502
block79505:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block79503
block79504:
	movq $0, %rcx
	jmp block79503
mainstart:
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block79504
	jmp block79505
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $72, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $72, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 

