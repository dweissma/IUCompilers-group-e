.globl f
.align 16
block158945:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $135, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp fconclusion
block158946:
	movq $0, %rdx
	jmp block158945
block158947:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block158945
fstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq $4, %rsi
	leaq lambda158884(%rip), %rdi
	movq %rdi, %r13
	movq %rsi, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block158946
	jmp block158947
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
.globl lambda158884
.align 16
lambda158884start:
	movq %rdi, %rdx
	movq %rdx, %r11
	movq 16(%r11), %rcx
	movq %rdx, %r11
	movq 24(%r11), %rdx
	addq %rsi, %rcx
	movq %rdx, %rax
	addq %rcx, %rax
	jmp lambda158884conclusion
lambda158884:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda158884start
lambda158884conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block158948:
	movq %r13, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $11, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %rcx, %r13
	negq %r13
	movq %rbx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $15, %rsi
	callq *%rcx
	movq %rax, %rcx
	negq %rcx
	movq %r13, %rdx
	addq %rcx, %rdx
	movq %rdx, %rax
	negq %rax
	jmp mainconclusion
block158951:
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
	movq $3, %rsi
	callq *%rcx
	movq %rax, %rbx
	jmp block158948
block158954:
	jmp block158948
block158955:
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
	movq $0, %rsi
	callq *%rcx
	movq %rax, %rbx
	jmp block158954
block158957:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block158955
block158956:
	movq $0, %rcx
	jmp block158955
block158953:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block158951
block158952:
	movq $0, %rcx
	jmp block158951
block158950:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block158956
	jmp block158957
block158949:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block158952
	jmp block158953
block158958:
	movq $0, %rax
	cmpq $1, %rax
	 jl block158949
	jmp block158950
block158961:
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
	movq %rax, %r13
	jmp block158958
block158963:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block158961
block158962:
	movq $0, %rcx
	jmp block158961
block158964:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	jmp block158958
block158966:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block158964
block158965:
	movq $0, %rcx
	jmp block158964
block158960:
	leaq lambda158888(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block158965
	jmp block158966
block158959:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block158962
	jmp block158963
mainstart:
	movq $0, %rax
	cmpq $0, %rax
	 je block158959
	jmp block158960
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
.globl lambda158888
.align 16
lambda158888start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	jmp lambda158888conclusion
lambda158888:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda158888start
lambda158888conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

