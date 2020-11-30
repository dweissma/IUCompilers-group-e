.globl idkcomb
.align 16
block85679:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $444, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block85681:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block85679
block85680:
	movq $0, %rcx
	jmp block85679
block85682:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq lambda85651(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85680
	jmp block85681
block85684:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85682
block85683:
	movq $0, %rcx
	jmp block85682
idkcombstart:
	movq %rdi, %rcx
	movq %rsi, %r13
	leaq lambda85648(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block85683
	jmp block85684
idkcomb:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp idkcombstart
idkcombconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl lambda85648
.align 16
lambda85648start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda85648conclusion
lambda85648:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85648start
lambda85648conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl lambda85651
.align 16
lambda85651start:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rax
	jmp lambda85651conclusion
lambda85651:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85651start
lambda85651conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block85685:
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
	movq $42, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %rbp
	jmp *%rax
block85686:
	movq $0, %rcx
	jmp block85685
block85687:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85685
mainstart:
	leaq idkcomb(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85686
	jmp block85687
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
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
	popq %rbp
	retq 

