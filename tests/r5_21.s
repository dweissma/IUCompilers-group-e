.globl app1
.align 16
app1start:
	movq %rdi, %rcx
	movq %rdx, %rcx
	movq %rsi, %r11
	movq 8(%r11), %rdx
	movq %rsi, %rdi
	movq %rcx, %rsi
	movq %rdx, %rax
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	jmp *%rax
app1:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp app1start
app1conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block159216:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	movq $42, %rdx
	movq %rbx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block159218:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159216
block159217:
	movq $0, %rcx
	jmp block159216
block159219:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq %r12, %r11
	movq 8(%r11), %rbx
	leaq lambda159199(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block159217
	jmp block159218
block159221:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159219
block159220:
	movq $0, %rcx
	jmp block159219
mainstart:
	leaq app1(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159220
	jmp block159221
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %r14
	popq %rbp
	retq 
.globl lambda159199
.align 16
lambda159199start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda159199conclusion
lambda159199:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159199start
lambda159199conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

