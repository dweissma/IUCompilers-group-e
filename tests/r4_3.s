.globl fun
.align 16
funstart:
	movq %r8, %rdi
	movq %r9, %r11
	movq 8(%r11), %r10
	movq 16(%r11), %r9
	movq 24(%r11), %r8
	movq 32(%r11), %r11
	addq %r11, %r8
	addq %r8, %r9
	movq %r10, %r8
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rcx
	addq %rcx, %rdx
	movq %rsi, %rax
	addq %rdx, %rax
	jmp funconclusion
fun:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp funstart
funconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block12824:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $9, 0(%r11)
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
	movq %rdx, %r9
	movq 16(%r15), %rdi
	movq $5, %rsi
	movq $5, %rdx
	movq $5, %rcx
	movq $5, %r8
	movq -24(%rbp), %rax
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block12826:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block12824
block12825:
	movq $0, %rcx
	jmp block12824
block12827:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $5, %r14
	movq $5, %r13
	movq $5, %r12
	movq $7, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12825
	jmp block12826
block12829:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12827
block12828:
	movq $0, %rcx
	jmp block12827
block12830:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -24(%rbp)
	leaq fun(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block12828
	jmp block12829
block12832:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12830
block12831:
	movq $0, %rcx
	jmp block12830
mainstart:
	leaq fun(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12831
	jmp block12832
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $32, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

