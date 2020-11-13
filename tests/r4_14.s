.globl minus
.align 16
minusstart:
	movq %rdi, %rcx
	movq %rsi, %rdx
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
block88295:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %rax
	jmp zeroconclusion
block88298:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rdi
	movq $1, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %rdi
	movq %r14, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block88300:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88298
block88299:
	movq $0, %rdx
	jmp block88298
block88297:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block88295
block88296:
	movq $0, %rdx
	jmp block88295
block88302:
	leaq zero(%rip), %r14
	leaq minus(%rip), %r13
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block88299
	jmp block88300
block88301:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $0, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88296
	jmp block88297
zerostart:
	movq %rdi, %rcx
	cmpq $0, %rcx
	 je block88301
	jmp block88302
zero:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp zerostart
zeroconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl one
.align 16
block88303:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp oneconclusion
block88306:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rdi
	movq $1, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %rdi
	movq %r14, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block88308:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88306
block88307:
	movq $0, %rcx
	jmp block88306
block88310:
	leaq one(%rip), %r14
	leaq minus(%rip), %r13
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88307
	jmp block88308
block88305:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block88303
block88304:
	movq $0, %rcx
	jmp block88303
block88309:
	leaq zero(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, %r13
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88304
	jmp block88305
onestart:
	movq %rdi, %rcx
	cmpq $0, %rcx
	 je block88309
	jmp block88310
one:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp onestart
oneconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl two
.align 16
block88311:
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
	movq %r14, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp twoconclusion
block88313:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block88311
block88312:
	movq $0, %rcx
	jmp block88311
block88317:
	leaq zero(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, %r13
	movq $42, %r12
	leaq one(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88312
	jmp block88313
block88314:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rdi
	movq $1, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %rdi
	movq %r14, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block88316:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88314
block88315:
	movq $0, %rcx
	jmp block88314
block88318:
	leaq two(%rip), %r14
	leaq minus(%rip), %r13
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88315
	jmp block88316
twostart:
	movq %rdi, %rcx
	cmpq $0, %rcx
	 je block88317
	jmp block88318
two:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp twostart
twoconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl three
.align 16
block88319:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1673, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp threeconclusion
block88322:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rdi
	movq $1, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %rdi
	movq %r14, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block88324:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88322
block88323:
	movq $0, %rcx
	jmp block88322
block88321:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block88319
block88320:
	movq $0, %rcx
	jmp block88319
block88326:
	leaq three(%rip), %r14
	leaq minus(%rip), %r13
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88323
	jmp block88324
block88325:
	leaq zero(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, %r14
	movq $42, %r13
	leaq one(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, %r12
	leaq two(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88320
	jmp block88321
threestart:
	movq %rdi, %rcx
	cmpq $0, %rcx
	 je block88325
	jmp block88326
three:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp threestart
threeconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block88327:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3723, 0(%r11)
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 32(%r11)
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
block88329:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block88327
block88328:
	movq $0, %rcx
	jmp block88327
mainstart:
	leaq zero(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, 24(%r15)
	movq $42, %r12
	leaq one(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, 16(%r15)
	leaq two(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, %r14
	leaq three(%rip), %rcx
	movq $20, %rdi
	callq *%rcx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88328
	jmp block88329
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %r14
	popq %rbp
	retq 

