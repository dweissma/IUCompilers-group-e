.globl f
.align 16
block78670:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r13, %rdi
	movq %r12, %rsi
	movq %rcx, %rdx
	movq %r14, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block78672:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78670
block78671:
	movq $0, %rcx
	jmp block78670
block78673:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	addq $1, %r12
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78671
	jmp block78672
block78675:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78673
block78674:
	movq $0, %rcx
	jmp block78673
block78676:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78674
	jmp block78675
block78678:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78676
block78677:
	movq $0, %rcx
	jmp block78676
block78680:
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78677
	jmp block78678
block78679:
	movq %rbx, %r11
	movq 8(%r11), %rax
	jmp fconclusion
fstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq %rdx, %rbx
	cmpq $100, %r12
	 je block78679
	jmp block78680
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
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
block78681:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r12, %rdi
	movq $0, %rsi
	movq %rcx, %rdx
	movq %r13, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block78683:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78681
block78682:
	movq $0, %rcx
	jmp block78681
block78684:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78682
	jmp block78683
block78686:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78684
block78685:
	movq $0, %rcx
	jmp block78684
block78687:
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
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78685
	jmp block78686
block78689:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78687
block78688:
	movq $0, %rcx
	jmp block78687
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78688
	jmp block78689
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

