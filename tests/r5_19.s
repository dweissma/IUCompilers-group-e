.globl main
.align 16
block159128:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $42, %rsi
	callq *%rcx
	movq %rax, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $444, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %rbp
	jmp *%rax
block159130:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159128
block159129:
	movq $0, %rdx
	jmp block159128
mainstart:
	leaq lambda159109(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159129
	jmp block159130
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %rbp
	retq 
.globl lambda159109
.align 16
block159131:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $133, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp lambda159109conclusion
block159132:
	movq $0, %rdx
	jmp block159131
block159133:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block159131
lambda159109start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	leaq lambda159111(%rip), %rdx
	movq %rdx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159132
	jmp block159133
lambda159109:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159109start
lambda159109conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %rbp
	retq 
.globl lambda159111
.align 16
lambda159111start:
	movq %rdi, %rcx
	movq %rsi, %rdx
	movq %rcx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rax
	jmp lambda159111conclusion
lambda159111:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159111start
lambda159111conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

