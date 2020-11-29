.globl main
.align 16
block13303:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $42, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %rdi
	movq $444, %rsi
	movq %r14, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block13305:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13303
block13304:
	movq $0, %rcx
	jmp block13303
block13306:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq lambda13261(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13304
	jmp block13305
block13308:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13306
block13307:
	movq $0, %rcx
	jmp block13306
block13309:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $42, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq lambda13261(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13307
	jmp block13308
block13311:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13309
block13310:
	movq $0, %rcx
	jmp block13309
block13312:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq lambda13261(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13310
	jmp block13311
block13314:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13312
block13313:
	movq $0, %rcx
	jmp block13312
mainstart:
	leaq lambda13261(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13313
	jmp block13314
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
.globl lambda13261
.align 16
block13315:
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
	jmp lambda13261conclusion
block13317:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block13315
block13316:
	movq $0, %rdx
	jmp block13315
lambda13261start:
	movq %rdi, %rdx
	movq %rsi, %rdx
	leaq lambda13263(%rip), %rsi
	movq %rsi, %rbx
	movq %rdx, %r12
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block13316
	jmp block13317
lambda13261:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda13261start
lambda13261conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl lambda13263
.align 16
lambda13263start:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rax
	jmp lambda13263conclusion
lambda13263:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda13263start
lambda13263conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

