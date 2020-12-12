.globl even
.align 16
block157196:
	movq $1, %rax
	jmp evenconclusion
block157198:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq $1, %rdi
	negq %rdi
	movq %r12, %rsi
	addq %rdi, %rsi
	movq %rdx, %rdi
	movq %rcx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	jmp *%rax
block157199:
	movq $0, %rdx
	jmp block157198
block157200:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157198
block157197:
	leaq odd(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rsi
	cmpq %rsi, %rcx
	 jl block157199
	jmp block157200
evenstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $0, %r12
	 je block157196
	jmp block157197
even:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp evenstart
evenconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl odd
.align 16
block157201:
	movq $0, %rax
	jmp oddconclusion
block157203:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $1, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rdx, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	jmp *%rax
block157205:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157203
block157204:
	movq $0, %rdx
	jmp block157203
block157202:
	leaq even(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157204
	jmp block157205
oddstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $0, %r12
	 je block157201
	jmp block157202
odd:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp oddstart
oddconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl main
.align 16
block157208:
	movq $0, %rax
	jmp mainconclusion
block157207:
	movq $42, %rax
	jmp mainconclusion
block157209:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $2, %rsi
	callq *%rcx
	movq %rax, %rcx
	cmpq $1, %rcx
	 je block157207
	jmp block157208
block157211:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157209
block157210:
	movq $0, %rdx
	jmp block157209
mainstart:
	leaq even(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157210
	jmp block157211
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
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
	popq %rbp
	retq 

