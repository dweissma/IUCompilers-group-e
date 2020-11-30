.globl app
.align 16
appstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rsi
	movq %rsi, %r11
	movq 8(%r11), %rcx
	movq %rsi, %rdi
	movq %rdx, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
app:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp appstart
appconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block85741:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq $42, %rdx
	movq %r12, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block85743:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85741
block85742:
	movq $0, %rcx
	jmp block85741
block85744:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq %r13, %r11
	movq 8(%r11), %r12
	leaq lambda85724(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85742
	jmp block85743
block85746:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85744
block85745:
	movq $0, %rcx
	jmp block85744
mainstart:
	leaq app(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85745
	jmp block85746
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
.globl lambda85724
.align 16
lambda85724start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda85724conclusion
lambda85724:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85724start
lambda85724conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

