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
.globl zero
.align 16
block155246:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %rax
	jmp zeroconclusion
block155248:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block155246
block155247:
	movq $0, %rcx
	jmp block155246
block155244:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $0, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155247
	jmp block155248
block155249:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rcx
	movq 24(%r15), %rdi
	movq %rcx, %rsi
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block155251:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155249
block155250:
	movq $0, %rcx
	jmp block155249
block155252:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155250
	jmp block155251
block155254:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155252
block155253:
	movq $0, %rcx
	jmp block155252
block155255:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq 24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq minus(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155253
	jmp block155254
block155256:
	movq $0, %rcx
	jmp block155255
block155257:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155255
block155245:
	leaq zero(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155256
	jmp block155257
zerostart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $0, %rbx
	 je block155244
	jmp block155245
zero:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp zerostart
zeroconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl one
.align 16
block155260:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp oneconclusion
block155262:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block155260
block155261:
	movq $0, %rcx
	jmp block155260
block155263:
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
	movq $20, %rsi
	callq *%rcx
	movq %rax, %rbx
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155261
	jmp block155262
block155266:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq 24(%r15), %rdi
	movq %rcx, %rsi
	movq $1, %rdx
	callq *%r12
	movq %rax, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	movq %r13, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block155268:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155266
block155267:
	movq $0, %rcx
	jmp block155266
block155269:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 24(%r15)
	movq 24(%r15), %r11
	movq 8(%r11), %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155267
	jmp block155268
block155271:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155269
block155270:
	movq $0, %rcx
	jmp block155269
block155272:
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
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block155270
	jmp block155271
block155274:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155272
block155273:
	movq $0, %rcx
	jmp block155272
block155265:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155263
block155259:
	leaq one(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155273
	jmp block155274
block155264:
	movq $0, %rcx
	jmp block155263
block155258:
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155264
	jmp block155265
onestart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $0, %rbx
	 je block155258
	jmp block155259
one:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp onestart
oneconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl two
.align 16
block155277:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $647, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp twoconclusion
block155279:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block155277
block155278:
	movq $0, %rcx
	jmp block155277
block155280:
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
	movq $20, %rsi
	callq *%rcx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block155278
	jmp block155279
block155282:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155280
block155281:
	movq $0, %rcx
	jmp block155280
block155283:
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
	movq $20, %rsi
	callq *%rcx
	movq %rax, %r13
	movq $42, %r12
	leaq one(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155281
	jmp block155282
block155286:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	movq $1, %rdx
	callq *-24(%rbp)
	movq %rax, %rcx
	movq 16(%r15), %rdi
	movq %rcx, %rsi
	movq %r13, %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block155288:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155286
block155287:
	movq $0, %rcx
	jmp block155286
block155289:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r12
	movq %r12, %r11
	movq 8(%r11), %rax
	movq %rax, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155287
	jmp block155288
block155291:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155289
block155290:
	movq $0, %rcx
	jmp block155289
block155292:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq 16(%r15), %r11
	movq 8(%r11), %r13
	leaq minus(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155290
	jmp block155291
block155294:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155292
block155293:
	movq $0, %rcx
	jmp block155292
block155276:
	leaq two(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155293
	jmp block155294
block155285:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155283
block155284:
	movq $0, %rcx
	jmp block155283
block155275:
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155284
	jmp block155285
twostart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $0, %rbx
	 je block155275
	jmp block155276
two:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp twostart
twoconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl three
.align 16
block155297:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1673, 0(%r11)
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp threeconclusion
block155299:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block155297
block155298:
	movq $0, %rcx
	jmp block155297
block155300:
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
	movq $20, %rsi
	callq *%rcx
	movq %rax, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155298
	jmp block155299
block155302:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155300
block155301:
	movq $0, %rcx
	jmp block155300
block155303:
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
	movq $20, %rsi
	callq *%rcx
	movq %rax, %r13
	leaq two(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155301
	jmp block155302
block155305:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155303
block155304:
	movq $0, %rcx
	jmp block155303
block155306:
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
	movq $20, %rsi
	callq *%rcx
	movq %rax, 16(%r15)
	movq $42, %r14
	leaq one(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155304
	jmp block155305
block155308:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155306
block155307:
	movq $0, %rcx
	jmp block155306
block155295:
	leaq zero(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155307
	jmp block155308
block155309:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	movq $1, %rdx
	callq *%r12
	movq %rax, %rcx
	movq 24(%r15), %rdi
	movq %rcx, %rsi
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block155311:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155309
block155310:
	movq $0, %rcx
	jmp block155309
block155312:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r14
	movq %r14, %r11
	movq 8(%r11), %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155310
	jmp block155311
block155313:
	movq $0, %rcx
	jmp block155312
block155314:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155312
block155315:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq 24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq minus(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155313
	jmp block155314
block155317:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155315
block155316:
	movq $0, %rcx
	jmp block155315
block155296:
	leaq three(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155316
	jmp block155317
threestart:
	movq %rdi, %rcx
	movq %rsi, %r13
	cmpq $0, %r13
	 je block155295
	jmp block155296
three:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp threestart
threeconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block155318:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3723, 0(%r11)
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
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
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 40(%r11), %rcx
	movq %rcx, %r11
	movq 32(%r11), %rcx
	movq %rcx, %r11
	movq 24(%r11), %rcx
	movq %rcx, %r11
	movq 16(%r11), %rax
	jmp mainconclusion
block155320:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block155318
block155319:
	movq $0, %rcx
	jmp block155318
block155321:
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
	movq $20, %rsi
	callq *%rcx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155319
	jmp block155320
block155323:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155321
block155322:
	movq $0, %rcx
	jmp block155321
block155324:
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
	movq $20, %rsi
	callq *%rcx
	movq %rax, %r12
	leaq three(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155322
	jmp block155323
block155326:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155324
block155325:
	movq $0, %rcx
	jmp block155324
block155327:
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
	movq $20, %rsi
	callq *%rcx
	movq %rax, %r13
	leaq two(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block155325
	jmp block155326
block155329:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155327
block155328:
	movq $0, %rcx
	jmp block155327
block155330:
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
	movq %rcx, 16(%r15)
	movq $42, %r14
	leaq one(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block155328
	jmp block155329
block155332:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block155330
block155331:
	movq $0, %rcx
	jmp block155330
mainstart:
	leaq zero(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block155331
	jmp block155332
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

