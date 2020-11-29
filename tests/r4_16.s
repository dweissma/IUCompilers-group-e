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
block80224:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp zconclusion
block80226:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80224
block80225:
	movq $0, %rcx
	jmp block80224
block80263:
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80225
	jmp block80226
block80227:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	movq 16(%r15), %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block80229:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80227
block80228:
	movq $0, %rcx
	jmp block80227
block80230:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq minus(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80228
	jmp block80229
block80232:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80230
block80231:
	movq $0, %rcx
	jmp block80230
block80233:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq minus(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80231
	jmp block80232
block80235:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80233
block80234:
	movq $0, %rcx
	jmp block80233
block80236:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, 16(%r15)
	leaq z(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block80234
	jmp block80235
block80238:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80236
block80237:
	movq $0, %rcx
	jmp block80236
block80239:
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
	movq 56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq z(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80237
	jmp block80238
block80240:
	movq $0, %rcx
	jmp block80239
block80241:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block80239
block80242:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
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
	movq -16(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r12, 48(%r15)
	movq %rcx, 40(%r15)
	movq %r12, 56(%r15)
	movq %rcx, 32(%r15)
	movq %r12, 16(%r15)
	movq %rcx, %r14
	movq %r12, %r13
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80240
	jmp block80241
block80244:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block80242
block80243:
	movq $0, %rcx
	jmp block80242
block80245:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 32(%r15), %rax
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
	movq %rdx, %r12
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq $-1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80243
	jmp block80244
block80247:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block80245
block80246:
	movq $0, %rcx
	jmp block80245
block80248:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq free_ptr(%rip), %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block80246
	jmp block80247
block80250:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80248
block80249:
	movq $0, %rcx
	jmp block80248
block80251:
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
	 jl block80249
	jmp block80250
block80252:
	movq $0, %rcx
	jmp block80251
block80253:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80251
block80254:
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
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block80252
	jmp block80253
block80256:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80254
block80255:
	movq $0, %rcx
	jmp block80254
block80257:
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
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80255
	jmp block80256
block80259:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80257
block80258:
	movq $0, %rcx
	jmp block80257
block80260:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80258
	jmp block80259
block80262:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80260
block80261:
	movq $0, %rcx
	jmp block80260
block80264:
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80261
	jmp block80262
zstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $0, %rbx
	 je block80263
	jmp block80264
z:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp zstart
zconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl o
.align 16
block80265:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp oconclusion
block80268:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq -72(%rbp), %rsi
	movq $1, %rdx
	callq *%r12
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq 64(%r15), %rdx
	movq %r14, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block80270:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80268
block80269:
	movq $0, %rcx
	jmp block80268
block80271:
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
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80269
	jmp block80270
block80273:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80271
block80272:
	movq $0, %rcx
	jmp block80271
block80274:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80272
	jmp block80273
block80276:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80274
block80275:
	movq $0, %rcx
	jmp block80274
block80277:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80275
	jmp block80276
block80279:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80277
block80278:
	movq $0, %rcx
	jmp block80277
block80280:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80278
	jmp block80279
block80282:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block80280
block80281:
	movq $0, %rcx
	jmp block80280
block80283:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 48(%r15), %rax
	movq %rax, 40(%r15)
	movq %rcx, %r13
	movq 48(%r15), %rax
	movq %rax, 32(%r15)
	movq %rcx, %r12
	movq 48(%r15), %rax
	movq %rax, 24(%r15)
	movq %rcx, %rbx
	movq 48(%r15), %rax
	movq %rax, 16(%r15)
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80281
	jmp block80282
block80285:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block80283
block80284:
	movq $0, %rcx
	jmp block80283
block80286:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
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
	movq %rdx, 48(%r15)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, %r14
	movq $-1, %r13
	movq $-1, %r12
	movq $-1, %rbx
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80284
	jmp block80285
block80288:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block80286
block80287:
	movq $0, %rcx
	jmp block80286
block80289:
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
	 jl block80287
	jmp block80288
block80291:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80289
block80290:
	movq $0, %rcx
	jmp block80289
block80292:
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
	 jl block80290
	jmp block80291
block80294:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80292
block80293:
	movq $0, %rcx
	jmp block80292
block80295:
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
	 jl block80293
	jmp block80294
block80297:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80295
block80296:
	movq $0, %rcx
	jmp block80295
block80298:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80296
	jmp block80297
block80300:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80298
block80299:
	movq $0, %rcx
	jmp block80298
block80301:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80299
	jmp block80300
block80303:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80301
block80302:
	movq $0, %rcx
	jmp block80301
block80267:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80265
block80266:
	movq $0, %rcx
	jmp block80265
block80305:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80302
	jmp block80303
block80304:
	movq 64(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80266
	jmp block80267
ostart:
	movq %rdi, %rcx
	movq %rsi, -72(%rbp)
	movq %rdx, 64(%r15)
	cmpq $0, -72(%rbp)
	 je block80304
	jmp block80305
o:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp ostart
oconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl t
.align 16
block80306:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp tconclusion
block80307:
	movq $0, %rcx
	jmp block80306
block80309:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq -24(%rbp), %rsi
	movq $1, %rdx
	callq *%r12
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq 16(%r15), %rdx
	movq %r14, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block80311:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80309
block80310:
	movq $0, %rcx
	jmp block80309
block80312:
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
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80310
	jmp block80311
block80314:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80312
block80313:
	movq $0, %rcx
	jmp block80312
block80315:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80313
	jmp block80314
block80317:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80315
block80316:
	movq $0, %rcx
	jmp block80315
block80318:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80316
	jmp block80317
block80320:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80318
block80319:
	movq $0, %rcx
	jmp block80318
block80321:
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
	movq %r14, 40(%r11)
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
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80319
	jmp block80320
block80323:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block80321
block80322:
	movq $0, %rcx
	jmp block80321
block80324:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
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
	movq %r14, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
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
	movq %rbx, %r14
	movq %rcx, %r13
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80322
	jmp block80323
block80326:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block80324
block80325:
	movq $0, %rcx
	jmp block80324
block80327:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
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
	movq %rdx, %rbx
	movq $-1, -144(%rbp)
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
	movq $-1, %r14
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, %r13
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80325
	jmp block80326
block80329:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block80327
block80328:
	movq $0, %rcx
	jmp block80327
block80330:
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
	 jl block80328
	jmp block80329
block80332:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80330
block80331:
	movq $0, %rcx
	jmp block80330
block80333:
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
	 jl block80331
	jmp block80332
block80335:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80333
block80334:
	movq $0, %rcx
	jmp block80333
block80336:
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
	 jl block80334
	jmp block80335
block80338:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80336
block80337:
	movq $0, %rcx
	jmp block80336
block80339:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80337
	jmp block80338
block80341:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80339
block80340:
	movq $0, %rcx
	jmp block80339
block80342:
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
	 jl block80340
	jmp block80341
block80344:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80342
block80343:
	movq $0, %rcx
	jmp block80342
block80346:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80343
	jmp block80344
block80308:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80306
block80345:
	movq 16(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80307
	jmp block80308
tstart:
	movq %rdi, %rcx
	movq %rsi, -24(%rbp)
	movq %rdx, 16(%r15)
	cmpq $0, -24(%rbp)
	 je block80345
	jmp block80346
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
block80347:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp hconclusion
block80348:
	movq $0, %rcx
	jmp block80347
block80349:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80347
block80386:
	movq %r14, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80348
	jmp block80349
block80350:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq -16(%rbp), %rsi
	movq $1, %rdx
	callq *%r12
	movq %rax, %rcx
	movq 24(%r15), %rdi
	movq %rcx, %rsi
	movq %r14, %rdx
	movq 32(%r15), %rax
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block80352:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80350
block80351:
	movq $0, %rcx
	jmp block80350
block80353:
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
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80351
	jmp block80352
block80355:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80353
block80354:
	movq $0, %rcx
	jmp block80353
block80356:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80354
	jmp block80355
block80358:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80356
block80357:
	movq $0, %rcx
	jmp block80356
block80359:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, 32(%r15)
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80357
	jmp block80358
block80361:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80359
block80360:
	movq $0, %rcx
	jmp block80359
block80362:
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
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80360
	jmp block80361
block80364:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block80362
block80363:
	movq $0, %rcx
	jmp block80362
block80365:
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
	 jl block80363
	jmp block80364
block80366:
	movq $0, %rcx
	jmp block80365
block80367:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block80365
block80368:
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
	 jl block80366
	jmp block80367
block80370:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block80368
block80369:
	movq $0, %rcx
	jmp block80368
block80371:
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
	 jl block80369
	jmp block80370
block80373:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80371
block80372:
	movq $0, %rcx
	jmp block80371
block80374:
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
	 jl block80372
	jmp block80373
block80376:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80374
block80375:
	movq $0, %rcx
	jmp block80374
block80377:
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
	 jl block80375
	jmp block80376
block80378:
	movq $0, %rcx
	jmp block80377
block80379:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80377
block80380:
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
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80378
	jmp block80379
block80382:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80380
block80381:
	movq $0, %rcx
	jmp block80380
block80383:
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
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80381
	jmp block80382
block80385:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80383
block80384:
	movq $0, %rcx
	jmp block80383
block80387:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80384
	jmp block80385
hstart:
	movq %rdi, %rcx
	movq %rsi, -16(%rbp)
	movq %rdx, %r14
	cmpq $0, -16(%rbp)
	 je block80386
	jmp block80387
h:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $152, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hstart
hconclusion:
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 
.globl f
.align 16
block80388:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp fconclusion
block80391:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq -32(%rbp), %rsi
	movq $1, %rdx
	callq *%r12
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq 24(%r15), %rdx
	movq %r14, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block80393:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80391
block80392:
	movq $0, %rcx
	jmp block80391
block80394:
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
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80392
	jmp block80393
block80396:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80394
block80395:
	movq $0, %rcx
	jmp block80394
block80397:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80395
	jmp block80396
block80399:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80397
block80398:
	movq $0, %rcx
	jmp block80397
block80400:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80398
	jmp block80399
block80402:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80400
block80401:
	movq $0, %rcx
	jmp block80400
block80403:
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
	movq %r14, 40(%r11)
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
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80401
	jmp block80402
block80405:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block80403
block80404:
	movq $0, %rcx
	jmp block80403
block80406:
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
	movq %r14, 120(%r11)
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
	movq %rbx, %r14
	movq %rcx, %r13
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80404
	jmp block80405
block80408:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block80406
block80407:
	movq $0, %rcx
	jmp block80406
block80409:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
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
	movq $-1, %r14
	movq $-1, %r13
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80407
	jmp block80408
block80411:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block80409
block80410:
	movq $0, %rcx
	jmp block80409
block80412:
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
	 jl block80410
	jmp block80411
block80414:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80412
block80413:
	movq $0, %rcx
	jmp block80412
block80415:
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
	 jl block80413
	jmp block80414
block80417:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80415
block80416:
	movq $0, %rcx
	jmp block80415
block80418:
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
	 jl block80416
	jmp block80417
block80420:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80418
block80419:
	movq $0, %rcx
	jmp block80418
block80421:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80419
	jmp block80420
block80423:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80421
block80422:
	movq $0, %rcx
	jmp block80421
block80424:
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
	 jl block80422
	jmp block80423
block80426:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80424
block80425:
	movq $0, %rcx
	jmp block80424
block80390:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80388
block80389:
	movq $0, %rcx
	jmp block80388
block80428:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80425
	jmp block80426
block80427:
	movq 24(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80389
	jmp block80390
fstart:
	movq %rdi, %rcx
	movq %rsi, -32(%rbp)
	movq %rdx, 24(%r15)
	cmpq $0, -32(%rbp)
	 je block80427
	jmp block80428
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
block80429:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp econclusion
block80432:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq -40(%rbp), %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	movq 32(%r15), %rdx
	movq 16(%r15), %rax
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block80434:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80432
block80433:
	movq $0, %rcx
	jmp block80432
block80435:
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
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80433
	jmp block80434
block80437:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80435
block80436:
	movq $0, %rcx
	jmp block80435
block80438:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80436
	jmp block80437
block80440:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80438
block80439:
	movq $0, %rcx
	jmp block80438
block80441:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, 16(%r15)
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80439
	jmp block80440
block80443:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80441
block80442:
	movq $0, %rcx
	jmp block80441
block80444:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80442
	jmp block80443
block80446:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block80444
block80445:
	movq $0, %rcx
	jmp block80444
block80447:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
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
	movq %r13, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 128(%r15), %rax
	movq %rax, 64(%r15)
	movq %rcx, %r14
	movq 128(%r15), %rax
	movq %rax, 56(%r15)
	movq %rcx, %r13
	movq 128(%r15), %rax
	movq %rax, 48(%r15)
	movq %rcx, %rbx
	movq 128(%r15), %rax
	movq %rax, 24(%r15)
	movq %rcx, 16(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80445
	jmp block80446
block80449:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block80447
block80448:
	movq $0, %rcx
	jmp block80447
block80450:
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
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 40(%r11)
	movq $0, %rcx
	movq %rdx, 128(%r15)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, %rbx
	movq $-1, -80(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq $-1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80448
	jmp block80449
block80452:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block80450
block80451:
	movq $0, %rcx
	jmp block80450
block80453:
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
	 jl block80451
	jmp block80452
block80455:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80453
block80454:
	movq $0, %rcx
	jmp block80453
block80456:
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
	 jl block80454
	jmp block80455
block80458:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80456
block80457:
	movq $0, %rcx
	jmp block80456
block80459:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $4, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80457
	jmp block80458
block80461:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80459
block80460:
	movq $0, %rcx
	jmp block80459
block80462:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block80460
	jmp block80461
block80464:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80462
block80463:
	movq $0, %rcx
	jmp block80462
block80465:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80463
	jmp block80464
block80467:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80465
block80466:
	movq $0, %rcx
	jmp block80465
block80431:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80429
block80430:
	movq $0, %rcx
	jmp block80429
block80469:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80466
	jmp block80467
block80468:
	movq 32(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80430
	jmp block80431
estart:
	movq %rdi, %rcx
	movq %rsi, -40(%rbp)
	movq %rdx, 32(%r15)
	cmpq $0, -40(%rbp)
	 je block80468
	jmp block80469
e:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $152, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp estart
econclusion:
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block80470:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $20, %rsi
	callq *64(%r15)
	movq %rax, %rcx
	movq 72(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *80(%r15)
	movq %rax, %rcx
	movq %r12, %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *%r13
	movq %rax, %rcx
	movq %r14, %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *16(%r15)
	movq %rax, %rcx
	movq 24(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *32(%r15)
	movq %rax, %rcx
	movq 40(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *56(%r15)
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
block80472:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80470
block80471:
	movq $0, %rcx
	jmp block80470
block80473:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, 64(%r15)
	leaq z(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80471
	jmp block80472
block80475:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80473
block80474:
	movq $0, %rcx
	jmp block80473
block80476:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 72(%r15)
	leaq z(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80474
	jmp block80475
block80478:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80476
block80477:
	movq $0, %rcx
	jmp block80476
block80479:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, 80(%r15)
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block80477
	jmp block80478
block80481:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80479
block80480:
	movq $0, %rcx
	jmp block80479
block80482:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block80480
	jmp block80481
block80484:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80482
block80483:
	movq $0, %rcx
	jmp block80482
block80485:
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
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block80483
	jmp block80484
block80486:
	movq $0, %rcx
	jmp block80485
block80487:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80485
block80488:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80486
	jmp block80487
block80490:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80488
block80489:
	movq $0, %rcx
	jmp block80488
block80491:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, 16(%r15)
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block80489
	jmp block80490
block80493:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80491
block80492:
	movq $0, %rcx
	jmp block80491
block80494:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80492
	jmp block80493
block80496:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80494
block80495:
	movq $0, %rcx
	jmp block80494
block80497:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, 32(%r15)
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80495
	jmp block80496
block80498:
	movq $0, %rcx
	jmp block80497
block80499:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80497
block80500:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80498
	jmp block80499
block80502:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80500
block80501:
	movq $0, %rcx
	jmp block80500
block80503:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, 56(%r15)
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80501
	jmp block80502
block80505:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80503
block80504:
	movq $0, %rcx
	jmp block80503
mainstart:
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80504
	jmp block80505
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

