.globl main
.align 16
block8804:
	movq 32(%r15), %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block8806:
	movq %rbx, %r11
	movq $42, 8(%r11)
	movq $0, %rcx
	jmp block8804
block8805:
	movq 32(%r15), %r11
	movq $42, 8(%r11)
	movq $0, %rcx
	jmp block8804
block8807:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	 je block8805
	jmp block8806
block8808:
	movq $0, %rcx
	jmp block8807
block8809:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block8807
block8810:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $1, -24(%rbp)
	movq $2, %r14
	movq $3, %r13
	movq $4, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8808
	jmp block8809
block8812:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block8810
block8811:
	movq $0, %rcx
	jmp block8810
mainstart:
	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block8811
	jmp block8812
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

