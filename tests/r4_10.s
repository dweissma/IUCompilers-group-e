.globl map
.align 16
block78606:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp mapconclusion
block78607:
	movq $0, %rdx
	jmp block78606
block78608:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block78606
mapstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	movq %rdx, %r12
	movq %rbx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %r12, %r11
	movq 8(%r11), %rdx
	movq %rbx, %rdi
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %r13
	movq %rbx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %r12, %r11
	movq 16(%r11), %rdx
	movq %rbx, %rdi
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78607
	jmp block78608
map:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mapstart
mapconclusion:
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
.globl main
.align 16
block78609:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $5, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 16(%r15), %rdi
	movq %r14, %rsi
	movq %rcx, %rdx
	callq *24(%r15)
	movq %rax, %rcx
	movq %rcx, %r11
	movq 16(%r11), %rax
	jmp mainconclusion
block78611:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block78609
block78610:
	movq $0, %rcx
	jmp block78609
block78612:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $0, %r13
	movq $41, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78610
	jmp block78611
block78614:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78612
block78613:
	movq $0, %rcx
	jmp block78612
block78615:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	leaq add1(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78613
	jmp block78614
block78617:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78615
block78616:
	movq $0, %rcx
	jmp block78615
block78618:
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
	movq %rax, 24(%r15)
	leaq map(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78616
	jmp block78617
block78620:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78618
block78619:
	movq $0, %rcx
	jmp block78618
mainstart:
	leaq map(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78619
	jmp block78620
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

