.globl main
.align 16
block84895:
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
	movq $20, %rsi
	callq *%rcx
	movq %rax, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $22, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %rbp
	jmp *%rax
block84897:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84895
block84896:
	movq $0, %rdx
	jmp block84895
mainstart:
	leaq lambda84874(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block84896
	jmp block84897
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
.globl lambda84874
.align 16
block84898:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $133, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp lambda84874conclusion
block84899:
	movq $0, %rdx
	jmp block84898
block84900:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block84898
lambda84874start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	leaq lambda84876(%rip), %rsi
	movq %rsi, %rbx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block84899
	jmp block84900
lambda84874:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda84874start
lambda84874conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl lambda84876
.align 16
lambda84876start:
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rdx, %r11
	movq 16(%r11), %rdx
	movq %rdx, %rax
	addq %rcx, %rax
	jmp lambda84876conclusion
lambda84876:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda84876start
lambda84876conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

