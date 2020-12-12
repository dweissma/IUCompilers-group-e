.globl cell
.align 16
block159455:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp cellconclusion
block159457:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block159455
block159456:
	movq $0, %rcx
	jmp block159455
block159458:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq lambda159406(%rip), %rdx
	movq %rdx, %rbx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159456
	jmp block159457
block159459:
	movq $0, %rcx
	jmp block159458
block159460:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159458
cellstart:
	movq %rdi, %rcx
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159459
	jmp block159460
cell:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp cellstart
cellconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl lambda159406
.align 16
block159463:
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
	movq %rdx, %rax
	jmp lambda159406conclusion
block159466:
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
	movq %rdx, %rax
	jmp lambda159406conclusion
block159468:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block159466
block159467:
	movq $0, %rcx
	jmp block159466
block159465:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block159463
block159464:
	movq $0, %rcx
	jmp block159463
block159462:
	leaq lambda159410(%rip), %rsi
	movq %rsi, %r12
	movq %rdx, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block159467
	jmp block159468
block159461:
	leaq lambda159408(%rip), %rsi
	movq %rsi, %r12
	movq %rdx, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block159464
	jmp block159465
lambda159406start:
	movq %rdi, %rdx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	cmpq $0, %rsi
	 je block159461
	jmp block159462
lambda159406:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159406start
lambda159406conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl lambda159408
.align 16
lambda159408start:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp lambda159408conclusion
lambda159408:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159408start
lambda159408conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl lambda159410
.align 16
lambda159410start:
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	movq %rdx, %r11
	movq %rcx, 8(%r11)
	movq $0, %rcx
	movq $42, %rax
	jmp lambda159410conclusion
lambda159410:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159410start
lambda159410conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block159469:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	callq *%rcx
	movq %rax, %r12
	movq %r12, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $0, %rsi
	callq *%rcx
	movq %rax, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $42, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r12, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $1, %rsi
	callq *%rcx
	movq %rax, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $0, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %rbp
	jmp *%rax
block159471:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159469
block159470:
	movq $0, %rdx
	jmp block159469
mainstart:
	leaq cell(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159470
	jmp block159471
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %r12
	popq %rbp
	retq 

