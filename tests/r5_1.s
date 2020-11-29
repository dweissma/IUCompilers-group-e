.globl main
.align 16
block13204:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $42, %rsi
	movq %r12, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	jmp *%rax
block13205:
	movq $0, %rcx
	jmp block13204
block13206:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13204
block13207:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	leaq lambda13188(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13205
	jmp block13206
block13209:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13207
block13208:
	movq $0, %rcx
	jmp block13207
mainstart:
	leaq lambda13188(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13208
	jmp block13209
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
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
	popq %rbp
	retq 
.globl lambda13188
.align 16
lambda13188start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda13188conclusion
lambda13188:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda13188start
lambda13188conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

