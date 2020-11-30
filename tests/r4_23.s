.globl f
.align 16
block80007:
	movq $1, %rax
	jmp fconclusion
block80005:
	movq $0, %rax
	jmp fconclusion
block80009:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $2, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r14, %rax
	addq %rcx, %rax
	jmp fconclusion
block80011:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80009
block80010:
	movq $0, %rcx
	jmp block80009
block80012:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq %rdi, %r11
	movq 8(%r11), %rcx
	movq $1, %rsi
	negq %rsi
	movq %r12, %rdx
	addq %rsi, %rdx
	movq %rdx, %rsi
	callq *%rcx
	movq %rax, %r14
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80010
	jmp block80011
block80014:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80012
block80013:
	movq $0, %rcx
	jmp block80012
block80008:
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80013
	jmp block80014
block80006:
	cmpq $1, %r12
	 je block80007
	jmp block80008
fstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $0, %r12
	 je block80005
	jmp block80006
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl g
.align 16
block80019:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq %rsi, %r11
	movq 8(%r11), %r8
	movq $1, %rcx
	negq %rcx
	movq %r12, %rdx
	addq %rcx, %rdx
	movq %rbx, %rcx
	addq %r14, %rcx
	movq %rsi, %rdi
	movq %rdx, %rsi
	movq %r14, %rdx
	movq %r8, %rax
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block80021:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80019
block80020:
	movq $0, %rcx
	jmp block80019
block80018:
	leaq g(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block80020
	jmp block80021
block80017:
	movq %r14, %rax
	jmp gconclusion
block80016:
	cmpq $1, %r12
	 je block80017
	jmp block80018
block80015:
	movq %rbx, %rax
	jmp gconclusion
gstart:
	movq %rsi, %r12
	movq %rdx, %rbx
	movq %rcx, %r14
	cmpq $0, %r12
	 je block80015
	jmp block80016
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block80022:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r8
	movq %rcx, %rdi
	movq $8, %rsi
	movq $0, %rdx
	movq $1, %rcx
	callq *%r8
	movq %rax, %rcx
	movq %r13, %rax
	addq %rcx, %rax
	jmp mainconclusion
block80024:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80022
block80023:
	movq $0, %rcx
	jmp block80022
block80025:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $8, %rsi
	callq *%rcx
	movq %rax, %r13
	leaq g(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80023
	jmp block80024
block80027:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80025
block80026:
	movq $0, %rcx
	jmp block80025
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block80026
	jmp block80027
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %r12
	popq %r13
	popq %rbp
	retq 

