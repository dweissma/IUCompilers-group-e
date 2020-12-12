.globl g
.align 16
block156971:
	movq $0, %rax
	jmp gconclusion
block156973:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rbx, %r11
	movq 8(%r11), %rsi
	movq %rsi, %rdi
	negq %rdi
	movq %r13, %rsi
	addq %rdi, %rsi
	movq %rdx, %rdi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block156975:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156973
block156974:
	movq $0, %rcx
	jmp block156973
block156972:
	leaq g(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156974
	jmp block156975
block156976:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	cmpq $0, %r13
	 je block156971
	jmp block156972
block156978:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156976
block156977:
	movq $0, %rcx
	jmp block156976
gstart:
	movq %rdi, %rcx
	movq %rsi, %r13
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156977
	jmp block156978
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block156979:
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
	movq $1000, %rsi
	callq *%rcx
	movq %rax, %rdx
	movq $32, %rcx
	addq %rdx, %rcx
	movq 72(%r15), %r11
	movq 8(%r11), %rdx
	movq 48(%r15), %r11
	movq 8(%r11), %rsi
	movq 64(%r15), %r11
	movq 8(%r11), %rdi
	movq 40(%r15), %r11
	movq 8(%r11), %r8
	movq 32(%r15), %r11
	movq 8(%r11), %r9
	movq 24(%r15), %r11
	movq 8(%r11), %r10
	movq 16(%r15), %r11
	movq 8(%r11), %rbx
	movq %r14, %r11
	movq 8(%r11), %r14
	movq %r13, %r11
	movq 8(%r11), %r13
	movq %r12, %r11
	movq 8(%r11), %r11
	movq %r13, %r12
	addq %r11, %r12
	movq %r14, %r11
	addq %r12, %r11
	addq %r11, %rbx
	addq %rbx, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp mainconclusion
block156981:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156979
block156980:
	movq $0, %rcx
	jmp block156979
block156982:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156980
	jmp block156981
block156984:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156982
block156983:
	movq $0, %rcx
	jmp block156982
block156985:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156983
	jmp block156984
block156987:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156985
block156986:
	movq $0, %rcx
	jmp block156985
block156988:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156986
	jmp block156987
block156990:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156988
block156989:
	movq $0, %rcx
	jmp block156988
block156991:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156989
	jmp block156990
block156993:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156991
block156992:
	movq $0, %rcx
	jmp block156991
block156994:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156992
	jmp block156993
block156996:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156994
block156995:
	movq $0, %rcx
	jmp block156994
block156997:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156995
	jmp block156996
block156999:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156997
block156998:
	movq $0, %rcx
	jmp block156997
block157000:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156998
	jmp block156999
block157002:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157000
block157001:
	movq $0, %rcx
	jmp block157000
block157003:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157001
	jmp block157002
block157005:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157003
block157004:
	movq $0, %rcx
	jmp block157003
block157006:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 48(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157004
	jmp block157005
block157008:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157006
block157007:
	movq $0, %rcx
	jmp block157006
block157009:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 72(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157007
	jmp block157008
block157011:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block157009
block157010:
	movq $0, %rcx
	jmp block157009
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block157010
	jmp block157011
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
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
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

