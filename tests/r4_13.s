.globl zero
.align 16
block88188:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %rax
	jmp zeroconclusion
block88191:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	negq %rdx
	addq %rdx, %rcx
	movq %rcx, %rdi
	movq %r12, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	jmp *%rax
block88193:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block88191
block88192:
	movq $0, %rcx
	jmp block88191
block88190:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block88188
block88189:
	movq $0, %rcx
	jmp block88188
block88194:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $0, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block88189
	jmp block88190
block88195:
	leaq zero(%rip), %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rsi
	cmpq %rsi, %rcx
	 jl block88192
	jmp block88193
zerostart:
	movq %rdi, %rcx
	cmpq $0, %rcx
	 je block88194
	jmp block88195
zero:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp zerostart
zeroconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl main
.align 16
block88196:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $391, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r11), %rax
	jmp mainconclusion
block88197:
	movq $0, %rdx
	jmp block88196
block88198:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block88196
mainstart:
	leaq zero(%rip), %rcx
	movq $1, %rdi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %r13
	leaq zero(%rip), %rcx
	movq $2, %rdi
	callq *%rcx
	movq %rax, %r12
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block88197
	jmp block88198
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

