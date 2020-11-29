.globl foo
.align 16
block12232:
	movq %rbx, %r11
	movq 40(%r11), %rax
	jmp fooconclusion
block12223:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r9
	movq 48(%r15), %rdi
	movq -40(%rbp), %rsi
	movq %r13, %rdx
	movq %r12, %rcx
	movq -64(%rbp), %r8
	movq -56(%rbp), %rax
	subq $0, %r15
	addq $64, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block12225:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block12223
block12224:
	movq $0, %rcx
	jmp block12223
block12226:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, 48(%r15)
	movq $1, %rcx
	negq %rcx
	movq %r14, -40(%rbp)
	addq %rcx, -40(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, -32(%rbp)
	movq %rbx, %r11
	movq 16(%r11), %rax
	movq %rax, -24(%rbp)
	movq %rbx, %r11
	movq 24(%r11), %rax
	movq %rax, -16(%rbp)
	movq %rbx, %r11
	movq 32(%r11), %r14
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
	 jl block12224
	jmp block12225
block12227:
	movq $0, %rcx
	jmp block12226
block12228:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12226
block12229:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	leaq foo(%rip), %rcx
	movq %rcx, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12227
	jmp block12228
block12231:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12229
block12230:
	movq $0, %rcx
	jmp block12229
block12233:
	leaq foo(%rip), %rcx
	movq %rcx, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12230
	jmp block12231
foostart:
	movq %rsi, %r14
	movq %rdx, %r13
	movq %rcx, %r12
	movq %r8, -64(%rbp)
	movq %r9, %rbx
	cmpq $0, %r14
	 je block12232
	jmp block12233
foo:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $64, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp foostart
fooconclusion:
	subq $0, %r15
	addq $64, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block12234:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r9
	movq 32(%r15), %rdi
	movq $100, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $4, %r8
	movq -40(%rbp), %rax
	subq $0, %r15
	addq $40, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block12236:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block12234
block12235:
	movq $0, %rcx
	jmp block12234
block12237:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $5, -24(%rbp)
	movq $6, -16(%rbp)
	movq $7, %r14
	movq $8, %r13
	movq $142, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12235
	jmp block12236
block12239:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12237
block12238:
	movq $0, %rcx
	jmp block12237
block12240:
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
	movq %rax, -40(%rbp)
	leaq foo(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12238
	jmp block12239
block12242:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block12240
block12241:
	movq $0, %rcx
	jmp block12240
mainstart:
	leaq foo(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block12241
	jmp block12242
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $40, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $40, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

