.globl make__qzxwrapper
.align 16
block85390:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $903, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp make__qzxwrapperconclusion
block85392:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block85390
block85391:
	movq $0, %rcx
	jmp block85390
make__qzxwrapperstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rdx, %rsi
	leaq lambda85305(%rip), %rdi
	movq %rdi, %rbx
	movq %rsi, %r12
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block85391
	jmp block85392
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
.globl lambda85305
.align 16
block85393:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1929, 0(%r11)
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
	jmp lambda85305conclusion
block85395:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block85393
block85394:
	movq $0, %rcx
	jmp block85393
lambda85305start:
	movq %rdi, %r8
	movq %rsi, %rdx
	movq %r8, %r11
	movq 16(%r11), %rdi
	movq %r8, %r11
	movq 24(%r11), %rsi
	leaq lambda85307(%rip), %r8
	movq %r8, %r14
	movq %rdi, %r13
	movq %rdx, %r12
	movq %rsi, %rbx
	movq free_ptr(%rip), %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rsi
	cmpq %rsi, %rdx
	 jl block85394
	jmp block85395
lambda85305:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85305start
lambda85305conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl lambda85307
.align 16
lambda85307start:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq %rcx, %r11
	movq 16(%r11), %rdi
	movq %rcx, %r11
	movq 24(%r11), %rsi
	movq %rcx, %r11
	movq 32(%r11), %rcx
	movq %rdi, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	movq %rsi, %r12
	movq %r12, %r11
	movq 8(%r11), %rbx
	movq %rcx, %rsi
	movq %rsi, %r11
	movq 8(%r11), %rcx
	movq %rsi, %rdi
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	callq *%rbx
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
lambda85307:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85307start
lambda85307conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
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
	movq %rsi, %rcx
	movq $1, %rdx
	negq %rdx
	movq %rcx, %rax
	addq %rdx, %rax
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
block85396:
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
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block85398:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85396
block85397:
	movq $0, %rcx
	jmp block85396
block85399:
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
	 jl block85397
	jmp block85398
block85401:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85399
block85400:
	movq $0, %rcx
	jmp block85399
block85402:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	callq *%r14
	movq %rax, %rcx
	movq %rbx, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	leaq double(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85400
	jmp block85401
block85404:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85402
block85403:
	movq $0, %rcx
	jmp block85402
block85405:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq %r13, %rsi
	movq %rcx, %rdx
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r14
	leaq constfun(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85403
	jmp block85404
block85407:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85405
block85406:
	movq $0, %rcx
	jmp block85405
block85408:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	leaq sub1(%rip), %rcx
	movq %rcx, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85406
	jmp block85407
block85410:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85408
block85409:
	movq $0, %rcx
	jmp block85408
block85411:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq %r14, %r11
	movq 8(%r11), %rbx
	leaq add1(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85409
	jmp block85410
block85413:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85411
block85412:
	movq $0, %rcx
	jmp block85411
mainstart:
	leaq make__qzxwrapper(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85412
	jmp block85413
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 

