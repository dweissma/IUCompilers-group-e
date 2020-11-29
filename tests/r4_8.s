.globl even
.align 16
block13083:
	movq $1, %rax
	jmp evenconclusion
block13077:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq $1, %rdx
	negq %rdx
	movq %r12, %rcx
	addq %rdx, %rcx
	movq %rsi, %rdi
	movq %rcx, %rsi
	movq %r14, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block13079:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13077
block13078:
	movq $0, %rcx
	jmp block13077
block13080:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq odd(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13078
	jmp block13079
block13082:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13080
block13081:
	movq $0, %rcx
	jmp block13080
block13084:
	leaq odd(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block13081
	jmp block13082
evenstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	cmpq $0, %r12
	 je block13083
	jmp block13084
even:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp evenstart
evenconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 
.globl odd
.align 16
block13085:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq $1, %rdx
	negq %rdx
	movq %r14, %rcx
	addq %rdx, %rcx
	movq %rsi, %rdi
	movq %rcx, %rsi
	movq %r12, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block13087:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13085
block13086:
	movq $0, %rcx
	jmp block13085
block13088:
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
	leaq even(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13086
	jmp block13087
block13090:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13088
block13089:
	movq $0, %rcx
	jmp block13088
block13092:
	leaq even(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13089
	jmp block13090
block13091:
	movq $0, %rax
	jmp oddconclusion
oddstart:
	movq %rdi, %rcx
	movq %rsi, %r14
	cmpq $0, %r14
	 je block13091
	jmp block13092
odd:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp oddstart
oddconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 
.globl main
.align 16
block13095:
	movq $0, %rax
	jmp mainconclusion
block13094:
	movq $42, %rax
	jmp mainconclusion
block13096:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $2, %rsi
	callq *%r13
	movq %rax, %rcx
	cmpq $1, %rcx
	 je block13094
	jmp block13095
block13098:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13096
block13097:
	movq $0, %rcx
	jmp block13096
block13099:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	leaq even(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13097
	jmp block13098
block13101:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block13099
block13100:
	movq $0, %rcx
	jmp block13099
mainstart:
	leaq even(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block13100
	jmp block13101
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
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
	popq %r13
	popq %rbp
	retq 

