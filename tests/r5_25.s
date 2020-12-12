.globl make__qzxwrapper
.align 16
block159367:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $903, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp make__qzxwrapperconclusion
block159368:
	movq $0, %rdx
	jmp block159367
block159369:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block159367
make__qzxwrapperstart:
	movq %rdi, %rcx
	movq %rsi, %rdi
	movq %rdx, %rcx
	leaq lambda159282(%rip), %rdx
	movq %rdx, %rbx
	movq %rdi, %r12
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159368
	jmp block159369
make__qzxwrapper:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp make__qzxwrapperstart
make__qzxwrapperconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl lambda159282
.align 16
block159370:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1929, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp lambda159282conclusion
block159372:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block159370
block159371:
	movq $0, %rdx
	jmp block159370
lambda159282start:
	movq %rdi, %rdx
	movq %rdx, %r11
	movq 16(%r11), %rdi
	movq %rdx, %r11
	movq 24(%r11), %rdx
	leaq lambda159284(%rip), %r8
	movq %r8, %rbx
	movq %rdi, %r14
	movq %rsi, %r13
	movq %rdx, %r12
	movq free_ptr(%rip), %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rsi
	cmpq %rsi, %rdx
	 jl block159371
	jmp block159372
lambda159282:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159282start
lambda159282conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl lambda159284
.align 16
lambda159284start:
	movq %rsi, %rcx
	movq %rdi, %r11
	movq 16(%r11), %rdx
	movq %rdi, %r11
	movq 24(%r11), %rsi
	movq %rdi, %r11
	movq 32(%r11), %rdi
	movq %rdi, 16(%r15)
	movq 16(%r15), %r11
	movq 8(%r11), %r13
	movq %rsi, %r12
	movq %r12, %r11
	movq 8(%r11), %rbx
	movq %rdx, %rsi
	movq %rsi, %r11
	movq 8(%r11), %rdx
	movq %rsi, %rdi
	movq %rcx, %rsi
	callq *%rdx
	movq %rax, %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	callq *%rbx
	movq %rax, %rcx
	movq 16(%r15), %rdi
	movq %rcx, %rsi
	movq %r13, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
lambda159284:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159284start
lambda159284conclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl add1
.align 16
add1start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	addq $1, %rax
	jmp add1conclusion
add1:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp add1start
add1conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl sub1
.align 16
sub1start:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq $1, %rcx
	negq %rcx
	movq %rdx, %rax
	addq %rcx, %rax
	jmp sub1conclusion
sub1:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp sub1start
sub1conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl constfun
.align 16
constfunstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq $42, %rax
	jmp constfunconclusion
constfun:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp constfunstart
constfunconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl double
.align 16
doublestart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	addq %rcx, %rax
	jmp doubleconclusion
double:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp doublestart
doubleconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block159373:
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
	movq $777, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block159375:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159373
block159374:
	movq $0, %rcx
	jmp block159373
block159376:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	callq *%rbx
	movq %rax, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $11, %rsi
	callq *%rcx
	movq %rax, %rcx
	leaq constfun(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159374
	jmp block159375
block159378:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159376
block159377:
	movq $0, %rcx
	jmp block159376
block159379:
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
	movq %r14, %r11
	movq 8(%r11), %rbx
	leaq double(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159377
	jmp block159378
block159381:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159379
block159380:
	movq $0, %rcx
	jmp block159379
block159382:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 16(%r15), %rdi
	movq %r13, %rsi
	movq %rcx, %rdx
	callq *%r14
	movq %rax, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	leaq constfun(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159380
	jmp block159381
block159383:
	movq $0, %rcx
	jmp block159382
block159384:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159382
block159385:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	leaq sub1(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159383
	jmp block159384
block159387:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159385
block159386:
	movq $0, %rcx
	jmp block159385
block159388:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq 16(%r15), %r11
	movq 8(%r11), %r14
	leaq add1(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159386
	jmp block159387
block159390:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159388
block159389:
	movq $0, %rcx
	jmp block159388
mainstart:
	leaq make__qzxwrapper(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159389
	jmp block159390
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
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
	popq %r14
	popq %r13
	popq %rbp
	retq 

