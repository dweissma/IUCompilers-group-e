.globl id
.align 16
idstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp idconclusion
id:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp idstart
idconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl f
.align 16
block78170:
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
	movq %r14, %rdi
	movq -24(%rbp), %rsi
	movq %rcx, %rdx
	movq %r13, %rax
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block78172:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block78170
block78171:
	movq $0, %rcx
	jmp block78170
block78173:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	movq %r12, -24(%rbp)
	addq $1, -24(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r12
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78171
	jmp block78172
block78175:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78173
block78174:
	movq $0, %rcx
	jmp block78173
block78169:
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78174
	jmp block78175
block78168:
	movq %rbx, %r11
	movq 8(%r11), %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rbx, %r11
	movq 16(%r11), %rsi
	movq %rsi, %r11
	movq 8(%r11), %rsi
	movq %rdx, %rdi
	movq %rcx, %rax
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
fstart:
	movq %rdi, %rcx
	movq %rsi, %r12
	movq %rdx, %rbx
	cmpq $100, %r12
	 je block78168
	jmp block78169
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $32, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $32, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block78176:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, %rdi
	movq $0, %rsi
	movq %rcx, %rdx
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block78178:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block78176
block78177:
	movq $0, %rcx
	jmp block78176
block78179:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78177
	jmp block78178
block78181:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78179
block78180:
	movq $0, %rcx
	jmp block78179
block78182:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r14
	movq $42, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78180
	jmp block78181
block78184:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78182
block78183:
	movq $0, %rcx
	jmp block78182
block78185:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq id(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78183
	jmp block78184
block78187:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block78185
block78186:
	movq $0, %rcx
	jmp block78185
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78186
	jmp block78187
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 

