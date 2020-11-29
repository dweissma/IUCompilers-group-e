.globl main
.align 16
block9226:
	movq free_ptr(%rip), %rdx
	addq $136, free_ptr(%rip)
	movq %rdx, %r11
	movq $8388513, 0(%r11)
	movq %rdx, %r11
	movq 104(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 96(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 88(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 80(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 72(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 40(%r11), %rcx
	movq %rcx, %r11
	movq 32(%r11), %rcx
	movq %rcx, %r11
	movq 24(%r11), %rcx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block9228:
	movq %r15, %rdi
	movq $128, %rsi
	callq collect
	jmp block9226
block9227:
	movq $0, %rcx
	jmp block9226
block9229:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 104(%r15)
	movq %rcx, 96(%r15)
	movq %rcx, 88(%r15)
	movq %rcx, 80(%r15)
	movq %rcx, 72(%r15)
	movq %rcx, 64(%r15)
	movq %rcx, 56(%r15)
	movq %rcx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rcx, 24(%r15)
	movq %rcx, 16(%r15)
	movq %rcx, %r14
	movq %rcx, %r13
	movq %rcx, %r12
	movq %rcx, %rbx
	movq %rcx, 32(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $128, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9227
	jmp block9228
block9231:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block9229
block9230:
	movq $0, %rcx
	jmp block9229
block9232:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1929, 0(%r11)
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
	movq %rdx, %rcx
	movq %rcx, 40(%r15)
	movq %rcx, 32(%r15)
	movq %rcx, 24(%r15)
	movq %rcx, 16(%r15)
	movq %rcx, %r14
	movq %rcx, %r13
	movq %rcx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9230
	jmp block9231
block9234:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block9232
block9233:
	movq $0, %rcx
	jmp block9232
block9235:
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
	movq %rdx, %rcx
	movq %rcx, %r14
	movq %rcx, %r13
	movq %rcx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9233
	jmp block9234
block9237:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block9235
block9236:
	movq $0, %rcx
	jmp block9235
block9238:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9236
	jmp block9237
block9240:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block9238
block9239:
	movq $0, %rcx
	jmp block9238
mainstart:
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block9239
	jmp block9240
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

