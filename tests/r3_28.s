.globl main
.align 16
block78123:
	movq free_ptr(%rip), %rdx
	addq $112, free_ptr(%rip)
	movq %rdx, %r11
	movq $786331, 0(%r11)
	movq %rdx, %r11
	movq 80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 88(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 96(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 104(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 96(%r11), %rax
	jmp mainconclusion
block78125:
	movq %r15, %rdi
	movq $104, %rsi
	callq collect
	jmp block78123
block78124:
	movq $0, %rcx
	jmp block78123
block78126:
	movq free_ptr(%rip), %rdx
	addq $104, free_ptr(%rip)
	movq %rdx, %r11
	movq $393113, 0(%r11)
	movq %rdx, %r11
	movq 72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 64(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 96(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, 80(%r15)
	movq %r12, 88(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %rcx
	addq $104, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block78124
	jmp block78125
block78128:
	movq %r15, %rdi
	movq $96, %rsi
	callq collect
	jmp block78126
block78127:
	movq $0, %rcx
	jmp block78126
block78129:
	movq free_ptr(%rip), %rdx
	addq $96, free_ptr(%rip)
	movq %rdx, %r11
	movq $196503, 0(%r11)
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
	movq %rdx, %r11
	movq %r12, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 88(%r11)
	movq $0, %rcx
	movq %rdx, 72(%r15)
	movq $42, -80(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $96, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78127
	jmp block78128
block78131:
	movq %r15, %rdi
	movq $88, %rsi
	callq collect
	jmp block78129
block78130:
	movq $0, %rcx
	jmp block78129
block78132:
	movq free_ptr(%rip), %rdx
	addq $88, free_ptr(%rip)
	movq %rdx, %r11
	movq $98197, 0(%r11)
	movq %rdx, %r11
	movq 56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
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
	movq %rbx, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 80(%r11)
	movq $0, %rcx
	movq %rdx, 64(%r15)
	movq $42, -72(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $88, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78130
	jmp block78131
block78134:
	movq %r15, %rdi
	movq $80, %rsi
	callq collect
	jmp block78132
block78133:
	movq $0, %rcx
	jmp block78132
block78135:
	movq free_ptr(%rip), %rdx
	addq $80, free_ptr(%rip)
	movq %rdx, %r11
	movq $49043, 0(%r11)
	movq %rdx, %r11
	movq 48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 72(%r11)
	movq $0, %rcx
	movq %rdx, 56(%r15)
	movq $42, -64(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $80, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78133
	jmp block78134
block78137:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	jmp block78135
block78136:
	movq $0, %rcx
	jmp block78135
block78138:
	movq free_ptr(%rip), %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $24465, 0(%r11)
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
	movq %rdx, %r11
	movq %r12, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 64(%r11)
	movq $0, %rcx
	movq %rdx, 48(%r15)
	movq $42, -56(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $72, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78136
	jmp block78137
block78140:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	jmp block78138
block78139:
	movq $0, %rcx
	jmp block78138
block78141:
	movq free_ptr(%rip), %rdx
	addq $64, free_ptr(%rip)
	movq %rdx, %r11
	movq $12175, 0(%r11)
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
	movq %rbx, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -40(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 56(%r11)
	movq $0, %rcx
	movq %rdx, 40(%r15)
	movq $42, -48(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $64, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78139
	jmp block78140
block78143:
	movq %r15, %rdi
	movq $56, %rsi
	callq collect
	jmp block78141
block78142:
	movq $0, %rcx
	jmp block78141
block78144:
	movq free_ptr(%rip), %rdx
	addq $56, free_ptr(%rip)
	movq %rdx, %r11
	movq $6029, 0(%r11)
	movq %rdx, %r11
	movq 24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 48(%r11)
	movq $0, %rcx
	movq %rdx, 32(%r15)
	movq $42, -40(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $56, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78142
	jmp block78143
block78146:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	jmp block78144
block78145:
	movq $0, %rcx
	jmp block78144
block78147:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $2955, 0(%r11)
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 40(%r11)
	movq $0, %rcx
	movq %rdx, 24(%r15)
	movq $42, -32(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $48, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78145
	jmp block78146
block78149:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block78147
block78148:
	movq $0, %rcx
	jmp block78147
block78150:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1417, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 32(%r11)
	movq $0, %rcx
	movq %rdx, 16(%r15)
	movq $42, -24(%rbp)
	movq free_ptr(%rip), %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block78148
	jmp block78149
block78152:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block78150
block78151:
	movq $0, %rcx
	jmp block78150
block78153:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $647, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $42, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78151
	jmp block78152
block78155:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block78153
block78154:
	movq $0, %rcx
	jmp block78153
block78156:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $261, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78154
	jmp block78155
block78158:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block78156
block78157:
	movq $0, %rcx
	jmp block78156
block78159:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %r13
	movq $42, %rbx
	movq %r13, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78157
	jmp block78158
block78161:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block78159
block78160:
	movq $0, %rcx
	jmp block78159
mainstart:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $0, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block78160
	jmp block78161
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $88, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $88, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 

