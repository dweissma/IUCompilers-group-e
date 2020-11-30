.globl f
.align 16
block84970:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $135, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp fconclusion
block84972:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block84970
block84971:
	movq $0, %rdx
	jmp block84970
fstart:
	movq %rdi, %rdx
	movq $4, %rdx
	leaq lambda84909(%rip), %rdi
	movq %rdi, %rbx
	movq %rsi, %r13
	movq %rdx, %r12
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block84971
	jmp block84972
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl lambda84909
.align 16
lambda84909start:
	movq %rsi, %rdx
	movq %rdi, %r11
	movq 16(%r11), %rcx
	movq %rdi, %r11
	movq 24(%r11), %rsi
	addq %rdx, %rsi
	movq %rcx, %rax
	addq %rsi, %rax
	jmp lambda84909conclusion
lambda84909:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda84909start
lambda84909conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block84973:
	movq %rbx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $11, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %rbx
	negq %rbx
	movq %r12, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $15, %rsi
	callq *%rcx
	movq %rax, %rcx
	negq %rcx
	movq %rbx, %rdx
	addq %rcx, %rdx
	movq %rdx, %rax
	negq %rax
	jmp mainconclusion
block84976:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $3, %rsi
	callq *%rcx
	movq %rax, %r12
	jmp block84973
block84979:
	jmp block84973
block84980:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $0, %rsi
	callq *%rcx
	movq %rax, %r12
	jmp block84979
block84982:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84980
block84981:
	movq $0, %rcx
	jmp block84980
block84978:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84976
block84977:
	movq $0, %rcx
	jmp block84976
block84975:
	leaq f(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84981
	jmp block84982
block84974:
	leaq f(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84977
	jmp block84978
block84983:
	movq $0, %rax
	cmpq $1, %rax
	 jl block84974
	jmp block84975
block84986:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $5, %rsi
	callq *%rcx
	movq %rax, %rbx
	jmp block84983
block84988:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84986
block84987:
	movq $0, %rcx
	jmp block84986
block84989:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	jmp block84983
block84991:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block84989
block84990:
	movq $0, %rcx
	jmp block84989
block84985:
	leaq lambda84913(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84990
	jmp block84991
block84984:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block84987
	jmp block84988
mainstart:
	movq $0, %rax
	cmpq $0, %rax
	 je block84984
	jmp block84985
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
.globl lambda84913
.align 16
lambda84913start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda84913conclusion
lambda84913:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda84913start
lambda84913conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

