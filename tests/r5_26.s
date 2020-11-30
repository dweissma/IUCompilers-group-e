.globl cell
.align 16
block85472:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp cellconclusion
block85474:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block85472
block85473:
	movq $0, %rcx
	jmp block85472
block85475:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq lambda85422(%rip), %rdx
	movq %rdx, %r13
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85473
	jmp block85474
block85477:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85475
block85476:
	movq $0, %rcx
	jmp block85475
cellstart:
	movq %rdi, %rcx
	movq $0, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85476
	jmp block85477
cell:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp cellstart
cellconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl lambda85422
.align 16
block85480:
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
	jmp lambda85422conclusion
block85483:
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
	jmp lambda85422conclusion
block85485:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block85483
block85484:
	movq $0, %rcx
	jmp block85483
block85482:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block85480
block85481:
	movq $0, %rcx
	jmp block85480
block85479:
	leaq lambda85426(%rip), %rsi
	movq %rsi, %r12
	movq %rdx, %rbx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block85484
	jmp block85485
block85478:
	leaq lambda85424(%rip), %rsi
	movq %rsi, %r12
	movq %rdx, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rsi
	cmpq %rsi, %rdx
	 jl block85481
	jmp block85482
lambda85422start:
	movq %rdi, %rdx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	cmpq $0, %rsi
	 je block85478
	jmp block85479
lambda85422:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85422start
lambda85422conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl lambda85424
.align 16
lambda85424start:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp lambda85424conclusion
lambda85424:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85424start
lambda85424conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl lambda85426
.align 16
lambda85426start:
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	movq %rdx, %r11
	movq %rcx, 8(%r11)
	movq $0, %rcx
	movq $42, %rax
	jmp lambda85426conclusion
lambda85426:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85426start
lambda85426conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block85486:
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
block85488:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85486
block85487:
	movq $0, %rcx
	jmp block85486
mainstart:
	leaq cell(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85487
	jmp block85488
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

