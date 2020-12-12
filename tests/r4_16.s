.globl minus
.align 16
minusstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	negq %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp minusconclusion
minus:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp minusstart
minusconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl z
.align 16
block156039:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp zconclusion
block156041:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156039
block156040:
	movq $0, %rcx
	jmp block156039
block156037:
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156040
	jmp block156041
block156042:
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
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq 16(%r15), %rdi
	movq %rcx, %rsi
	movq %r14, %rax
	subq $0, %r15
	addq $136, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	jmp *%rax
block156044:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156042
block156043:
	movq $0, %rcx
	jmp block156042
block156045:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq 16(%r15), %r11
	movq 8(%r11), %r14
	leaq minus(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156043
	jmp block156044
block156047:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156045
block156046:
	movq $0, %rcx
	jmp block156045
block156048:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq z(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156046
	jmp block156047
block156050:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block156048
block156049:
	movq $0, %rcx
	jmp block156048
block156051:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r12, 48(%r15)
	movq %rcx, 40(%r15)
	movq %r12, 56(%r15)
	movq %rcx, 32(%r15)
	movq %r12, 24(%r15)
	movq %rcx, 16(%r15)
	movq %r12, %r14
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156049
	jmp block156050
block156053:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block156051
block156052:
	movq $0, %rcx
	jmp block156051
block156054:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156052
	jmp block156053
block156056:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block156054
block156055:
	movq $0, %rcx
	jmp block156054
block156057:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq free_ptr(%rip), %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block156055
	jmp block156056
block156059:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156057
block156058:
	movq $0, %rcx
	jmp block156057
block156060:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $5, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156058
	jmp block156059
block156062:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156060
block156061:
	movq $0, %rcx
	jmp block156060
block156063:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156061
	jmp block156062
block156065:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156063
block156064:
	movq $0, %rcx
	jmp block156063
block156066:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156064
	jmp block156065
block156068:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156066
block156067:
	movq $0, %rcx
	jmp block156066
block156069:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156067
	jmp block156068
block156071:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156069
block156070:
	movq $0, %rcx
	jmp block156069
block156038:
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156070
	jmp block156071
zstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $0, %rbx
	 je block156037
	jmp block156038
z:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	subq $136, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp zstart
zconclusion:
	subq $0, %r15
	addq $136, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %rbp
	retq 
.globl o
.align 16
block156074:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp oconclusion
block156077:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq -32(%rbp), %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq 24(%r15), %rdx
	movq %r12, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block156079:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156077
block156078:
	movq $0, %rcx
	jmp block156077
block156080:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq %r13, %r11
	movq 8(%r11), %r12
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156078
	jmp block156079
block156082:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156080
block156081:
	movq $0, %rcx
	jmp block156080
block156083:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156081
	jmp block156082
block156085:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block156083
block156084:
	movq $0, %rcx
	jmp block156083
block156086:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 64(%r15)
	movq %rcx, %r14
	movq %rbx, 56(%r15)
	movq %rcx, %r13
	movq %rbx, 48(%r15)
	movq %rcx, %r12
	movq %rbx, 16(%r15)
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156084
	jmp block156085
block156088:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block156086
block156087:
	movq $0, %rcx
	jmp block156086
block156089:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, %r12
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq $-1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156087
	jmp block156088
block156091:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block156089
block156090:
	movq $0, %rcx
	jmp block156089
block156092:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156090
	jmp block156091
block156094:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156092
block156093:
	movq $0, %rcx
	jmp block156092
block156095:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156093
	jmp block156094
block156097:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156095
block156096:
	movq $0, %rcx
	jmp block156095
block156098:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156096
	jmp block156097
block156100:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156098
block156099:
	movq $0, %rcx
	jmp block156098
block156101:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156099
	jmp block156100
block156103:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156101
block156102:
	movq $0, %rcx
	jmp block156101
block156104:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156102
	jmp block156103
block156106:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156104
block156105:
	movq $0, %rcx
	jmp block156104
block156076:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156074
block156075:
	movq $0, %rcx
	jmp block156074
block156073:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156105
	jmp block156106
block156072:
	movq 24(%r15), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156075
	jmp block156076
ostart:
	movq %rdi, %rcx
	movq %rsi, -32(%rbp)
	movq %rdx, 24(%r15)
	cmpq $0, -32(%rbp)
	 je block156072
	jmp block156073
o:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp ostart
oconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl t
.align 16
block156109:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp tconclusion
block156112:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq %r14, %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	movq %r13, %rdx
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block156114:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156112
block156113:
	movq $0, %rcx
	jmp block156112
block156115:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq %r12, %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156113
	jmp block156114
block156117:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156115
block156116:
	movq $0, %rcx
	jmp block156115
block156118:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156116
	jmp block156117
block156120:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block156118
block156119:
	movq $0, %rcx
	jmp block156118
block156121:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 64(%r15)
	movq %rcx, 56(%r15)
	movq %rbx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rbx, 32(%r15)
	movq %rcx, 16(%r15)
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156119
	jmp block156120
block156123:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block156121
block156122:
	movq $0, %rcx
	jmp block156121
block156124:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156122
	jmp block156123
block156126:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block156124
block156125:
	movq $0, %rcx
	jmp block156124
block156127:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156125
	jmp block156126
block156129:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156127
block156128:
	movq $0, %rcx
	jmp block156127
block156130:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156128
	jmp block156129
block156132:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156130
block156131:
	movq $0, %rcx
	jmp block156130
block156133:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156131
	jmp block156132
block156135:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156133
block156134:
	movq $0, %rcx
	jmp block156133
block156136:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156134
	jmp block156135
block156138:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156136
block156137:
	movq $0, %rcx
	jmp block156136
block156139:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156137
	jmp block156138
block156141:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156139
block156140:
	movq $0, %rcx
	jmp block156139
block156111:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156109
block156110:
	movq $0, %rcx
	jmp block156109
block156108:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156140
	jmp block156141
block156107:
	movq %r13, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156110
	jmp block156111
tstart:
	movq %rdi, %rcx
	movq %rsi, %r14
	movq %rdx, %r13
	cmpq $0, %r14
	 je block156107
	jmp block156108
t:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp tstart
tconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl h
.align 16
block156144:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp hconclusion
block156146:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156144
block156145:
	movq $0, %rcx
	jmp block156144
block156142:
	movq %r13, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block156145
	jmp block156146
block156147:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq %r14, %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq 24(%r15), %rdi
	movq %rcx, %rsi
	movq %r13, %rdx
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block156149:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156147
block156148:
	movq $0, %rcx
	jmp block156147
block156150:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq 24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156148
	jmp block156149
block156152:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156150
block156151:
	movq $0, %rcx
	jmp block156150
block156153:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156151
	jmp block156152
block156155:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block156153
block156154:
	movq $0, %rcx
	jmp block156153
block156156:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 64(%r15)
	movq %rcx, 56(%r15)
	movq %rbx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rbx, 32(%r15)
	movq %rcx, 24(%r15)
	movq %rbx, 16(%r15)
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156154
	jmp block156155
block156158:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block156156
block156157:
	movq $0, %rcx
	jmp block156156
block156159:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156157
	jmp block156158
block156161:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block156159
block156160:
	movq $0, %rcx
	jmp block156159
block156162:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156160
	jmp block156161
block156163:
	movq $0, %rcx
	jmp block156162
block156164:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156162
block156165:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156163
	jmp block156164
block156167:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156165
block156166:
	movq $0, %rcx
	jmp block156165
block156168:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156166
	jmp block156167
block156170:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156168
block156169:
	movq $0, %rcx
	jmp block156168
block156171:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156169
	jmp block156170
block156173:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156171
block156172:
	movq $0, %rcx
	jmp block156171
block156174:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156172
	jmp block156173
block156175:
	movq $0, %rcx
	jmp block156174
block156176:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156174
block156143:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156175
	jmp block156176
hstart:
	movq %rdi, %rcx
	movq %rsi, %r14
	movq %rdx, %r13
	cmpq $0, %r14
	 je block156142
	jmp block156143
h:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $152, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp hstart
hconclusion:
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl f
.align 16
block156179:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp fconclusion
block156182:
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
	movq -144(%rbp), %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq 136(%r15), %rdx
	movq %r12, %rax
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block156184:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156182
block156183:
	movq $0, %rdx
	jmp block156182
block156185:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r13
	movq %r13, %r11
	movq 8(%r11), %r12
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156183
	jmp block156184
block156187:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156185
block156186:
	movq $0, %rdx
	jmp block156185
block156188:
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 64(%r11)
	movq $0, %rdx
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156186
	jmp block156187
block156190:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block156188
block156189:
	movq $0, %rdx
	jmp block156188
block156191:
	movq free_ptr(%rip), %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -40(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -32(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -24(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -16(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 128(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 136(%r11)
	movq $0, %rdx
	movq 96(%r15), %rax
	movq %rax, 40(%r15)
	movq %rcx, %r13
	movq 96(%r15), %rax
	movq %rax, 32(%r15)
	movq %rcx, %r12
	movq 96(%r15), %rax
	movq %rax, 24(%r15)
	movq %rcx, %rbx
	movq 96(%r15), %rax
	movq %rax, 16(%r15)
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	addq $64, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block156189
	jmp block156190
block156193:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block156191
block156192:
	movq $0, %rdx
	jmp block156191
block156194:
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rdx
	movq %rcx, 96(%r15)
	movq $-1, -120(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, -24(%rbp)
	movq $-1, -16(%rbp)
	movq $-1, %r14
	movq $-1, %r13
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, %r12
	movq $-1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156192
	jmp block156193
block156196:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block156194
block156195:
	movq $0, %rdx
	jmp block156194
block156197:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156195
	jmp block156196
block156199:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156197
block156198:
	movq $0, %rdx
	jmp block156197
block156200:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156198
	jmp block156199
block156202:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156200
block156201:
	movq $0, %rdx
	jmp block156200
block156203:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r13
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156201
	jmp block156202
block156205:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156203
block156204:
	movq $0, %rdx
	jmp block156203
block156206:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r14
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156204
	jmp block156205
block156208:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156206
block156207:
	movq $0, %rdx
	jmp block156206
block156209:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rdx
	movq %rcx, 16(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156207
	jmp block156208
block156211:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156209
block156210:
	movq $0, %rdx
	jmp block156209
block156181:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156179
block156180:
	movq $0, %rdx
	jmp block156179
block156178:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156210
	jmp block156211
block156177:
	movq 136(%r15), %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block156180
	jmp block156181
fstart:
	movq %rdi, %rcx
	movq %rsi, -144(%rbp)
	movq %rdx, 136(%r15)
	cmpq $0, -144(%rbp)
	 je block156177
	jmp block156178
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $144, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $144, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl e
.align 16
block156214:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp econclusion
block156216:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156214
block156215:
	movq $0, %rcx
	jmp block156214
block156212:
	movq 16(%r15), %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block156215
	jmp block156216
block156217:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq -24(%rbp), %rsi
	movq $1, %rdx
	callq *%rcx
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq 16(%r15), %rdx
	movq %r12, %rax
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block156219:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156217
block156218:
	movq $0, %rcx
	jmp block156217
block156220:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq %r13, %r11
	movq 8(%r11), %r12
	leaq minus(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156218
	jmp block156219
block156222:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156220
block156221:
	movq $0, %rcx
	jmp block156220
block156223:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156221
	jmp block156222
block156225:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block156223
block156224:
	movq $0, %rcx
	jmp block156223
block156226:
	movq free_ptr(%rip), %rdx
	addq $144, free_ptr(%rip)
	movq %rdx, %r11
	movq $35, 0(%r11)
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 128(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 136(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rbx, 64(%r15)
	movq %rcx, 56(%r15)
	movq %rbx, 48(%r15)
	movq %rcx, 40(%r15)
	movq %rbx, 32(%r15)
	movq %rcx, %r13
	movq %rbx, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156224
	jmp block156225
block156228:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	jmp block156226
block156227:
	movq $0, %rcx
	jmp block156226
block156229:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3979, 0(%r11)
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $-1, -144(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -48(%rbp)
	movq $-1, -40(%rbp)
	movq $-1, -32(%rbp)
	movq $-1, %r13
	movq $-1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $136, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156227
	jmp block156228
block156231:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block156229
block156230:
	movq $0, %rcx
	jmp block156229
block156232:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156230
	jmp block156231
block156234:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156232
block156233:
	movq $0, %rcx
	jmp block156232
block156235:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $5, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156233
	jmp block156234
block156237:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156235
block156236:
	movq $0, %rcx
	jmp block156235
block156238:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $4, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156236
	jmp block156237
block156240:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156238
block156239:
	movq $0, %rcx
	jmp block156238
block156241:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $3, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156239
	jmp block156240
block156243:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156241
block156242:
	movq $0, %rcx
	jmp block156241
block156244:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $2, %rbx
	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block156242
	jmp block156243
block156245:
	movq $0, %rcx
	jmp block156244
block156246:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156244
block156213:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156245
	jmp block156246
estart:
	movq %rdi, %rcx
	movq %rsi, -24(%rbp)
	movq %rdx, 16(%r15)
	cmpq $0, -24(%rbp)
	 je block156212
	jmp block156213
e:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $152, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp estart
econclusion:
	subq $0, %r15
	addq $152, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block156247:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $20, %rsi
	callq *%rcx
	movq %rax, %rcx
	movq %r14, %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *%r13
	movq %rax, %rcx
	movq 24(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-16(%rbp)
	movq %rax, %rcx
	movq 32(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-72(%rbp)
	movq %rax, %rcx
	movq 48(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-40(%rbp)
	movq %rax, %rcx
	movq 64(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-56(%rbp)
	movq %rax, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	jmp mainconclusion
block156249:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156247
block156248:
	movq $0, %rcx
	jmp block156247
block156250:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	leaq z(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156248
	jmp block156249
block156252:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156250
block156251:
	movq $0, %rcx
	jmp block156250
block156253:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 24(%r15)
	movq 24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	leaq o(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156251
	jmp block156252
block156255:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156253
block156254:
	movq $0, %rcx
	jmp block156253
block156256:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 32(%r15)
	movq 32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	leaq t(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156254
	jmp block156255
block156257:
	movq $0, %rcx
	jmp block156256
block156258:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156256
block156259:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 48(%r15)
	movq 48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -40(%rbp)
	leaq h(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156257
	jmp block156258
block156261:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156259
block156260:
	movq $0, %rcx
	jmp block156259
block156262:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 64(%r15)
	movq 64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156260
	jmp block156261
block156264:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block156262
block156263:
	movq $0, %rcx
	jmp block156262
mainstart:
	leaq e(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block156263
	jmp block156264
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $72, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $72, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 

