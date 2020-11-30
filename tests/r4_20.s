.globl foo
.align 16
block37951:
	movq %rbx, %r11
	movq 40(%r11), %rax
	jmp fooconclusion
block37942:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
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
	movq %rdx, %r9
	movq 32(%r15), %rdi
	movq -24(%rbp), %rsi
	movq -48(%rbp), %rdx
	movq -72(%rbp), %rcx
	movq -64(%rbp), %r8
	movq -40(%rbp), %rax
	subq $0, %r15
	addq $80, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block37944:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block37942
block37943:
	movq $0, %rcx
	jmp block37942
block37945:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $1, %rcx
	negq %rcx
	movq %r12, -24(%rbp)
	addq %rcx, -24(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, -16(%rbp)
	movq %rbx, %r11
	movq 16(%r11), %r14
	movq %rbx, %r11
	movq 24(%r11), %r13
	movq %rbx, %r11
	movq 32(%r11), %r12
	movq %rbx, %r11
	movq 40(%r11), %rdx
	movq $1, %rcx
	negq %rcx
	movq %rdx, %rbx
	addq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block37943
	jmp block37944
block37947:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block37945
block37946:
	movq $0, %rcx
	jmp block37945
block37948:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -40(%rbp)
	leaq foo(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block37946
	jmp block37947
block37950:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block37948
block37949:
	movq $0, %rcx
	jmp block37948
block37952:
	leaq foo(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block37949
	jmp block37950
foostart:
	movq %rsi, %r12
	movq %rdx, -48(%rbp)
	movq %rcx, -72(%rbp)
	movq %r8, -64(%rbp)
	movq %r9, %rbx
	cmpq $0, %r12
	 je block37951
	jmp block37952
foo:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $80, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp foostart
fooconclusion:
	subq $0, %r15
	addq $80, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block37953:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
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
	movq %rdx, %r9
	movq 24(%r15), %rdi
	movq $100, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $4, %r8
	movq -32(%rbp), %rax
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block37955:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block37953
block37954:
	movq $0, %rcx
	jmp block37953
block37956:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $5, -16(%rbp)
	movq $6, %r14
	movq $7, %r13
	movq $8, %r12
	movq $142, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block37954
	jmp block37955
block37958:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block37956
block37957:
	movq $0, %rcx
	jmp block37956
block37959:
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
	movq %rax, -32(%rbp)
	leaq foo(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block37957
	jmp block37958
block37960:
	movq $0, %rcx
	jmp block37959
block37961:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block37959
mainstart:
	leaq foo(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block37960
	jmp block37961
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

