block289112:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq -16(%r15), %r11
	movq 8(%r11), %rdx
	movq -176(%r15), %r11
	movq 8(%r11), %rsi
	movq -168(%r15), %r11
	movq 8(%r11), %rdi
	movq -160(%r15), %r11
	movq 8(%r11), %r8
	movq -152(%r15), %r11
	movq 8(%r11), %r9
	movq -144(%r15), %r11
	movq 8(%r11), %r10
	movq -136(%r15), %r11
	movq 8(%r11), %rbx
	movq -128(%r15), %r11
	movq 8(%r11), %r12
	movq -120(%r15), %r11
	movq 8(%r11), %r13
	movq -112(%r15), %r11
	movq 8(%r11), %r14
	movq -104(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%rbp)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%rbp)
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -40(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -32(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rcx
	addq $21, %rcx
	movq -32(%rbp), %r11
	addq %rcx, %r11
	movq -40(%rbp), %rcx
	addq %r11, %rcx
	movq -48(%rbp), %r11
	addq %rcx, %r11
	movq -56(%rbp), %rcx
	addq %r11, %rcx
	movq -64(%rbp), %r11
	addq %rcx, %r11
	movq -72(%rbp), %rcx
	addq %r11, %rcx
	movq -80(%rbp), %r11
	addq %rcx, %r11
	movq -88(%rbp), %rcx
	addq %r11, %rcx
	movq -24(%rbp), %r11
	addq %rcx, %r11
	movq -16(%rbp), %rcx
	addq %r11, %rcx
	movq %r14, %r11
	addq %rcx, %r11
	movq %r13, %rcx
	addq %r11, %rcx
	movq %r12, %r11
	addq %rcx, %r11
	movq %rbx, %rcx
	addq %r11, %rcx
	movq %r10, %r10
	addq %rcx, %r10
	movq %r9, %rcx
	addq %r10, %rcx
	movq %r8, %r8
	addq %rcx, %r8
	movq %rdi, %rcx
	addq %r8, %rcx
	movq %rsi, %rsi
	addq %rcx, %rsi
	movq %rdx, %rax
	addq %rsi, %rax
	jmp conclusion
block289113:
	movq $0, %rcx
	jmp block289112
block289114:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289112
block289115:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -32(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289113
	jmp block289114
block289117:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289115
block289116:
	movq $0, %rcx
	jmp block289115
block289118:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -40(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289116
	jmp block289117
block289120:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289118
block289119:
	movq $0, %rcx
	jmp block289118
block289121:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -48(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289119
	jmp block289120
block289123:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289121
block289122:
	movq $0, %rcx
	jmp block289121
block289124:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -56(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289122
	jmp block289123
block289125:
	movq $0, %rcx
	jmp block289124
block289126:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289124
block289127:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -64(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289125
	jmp block289126
block289129:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289127
block289128:
	movq $0, %rcx
	jmp block289127
block289130:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -72(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289128
	jmp block289129
block289132:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289130
block289131:
	movq $0, %rcx
	jmp block289130
block289133:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -80(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289131
	jmp block289132
block289135:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289133
block289134:
	movq $0, %rcx
	jmp block289133
block289136:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -88(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289134
	jmp block289135
block289137:
	movq $0, %rcx
	jmp block289136
block289138:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289136
block289139:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -96(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289137
	jmp block289138
block289141:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289139
block289140:
	movq $0, %rcx
	jmp block289139
block289142:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -104(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289140
	jmp block289141
block289144:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289142
block289143:
	movq $0, %rcx
	jmp block289142
block289145:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -112(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289143
	jmp block289144
block289147:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289145
block289146:
	movq $0, %rcx
	jmp block289145
block289148:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -120(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289146
	jmp block289147
block289149:
	movq $0, %rcx
	jmp block289148
block289150:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289148
block289151:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -128(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289149
	jmp block289150
block289153:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289151
block289152:
	movq $0, %rcx
	jmp block289151
block289154:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -136(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289152
	jmp block289153
block289156:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289154
block289155:
	movq $0, %rcx
	jmp block289154
block289157:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -144(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289155
	jmp block289156
block289159:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289157
block289158:
	movq $0, %rcx
	jmp block289157
block289160:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -152(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289158
	jmp block289159
block289162:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289160
block289161:
	movq $0, %rcx
	jmp block289160
block289163:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -160(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289161
	jmp block289162
block289165:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289163
block289164:
	movq $0, %rcx
	jmp block289163
block289166:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -168(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289164
	jmp block289165
block289168:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289166
block289167:
	movq $0, %rcx
	jmp block289166
block289169:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -176(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289167
	jmp block289168
block289171:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289169
block289170:
	movq $0, %rcx
	jmp block289169
block289172:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -16(%r15)
	movq $1, -24(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289170
	jmp block289171
block289173:
	movq $0, %rcx
	jmp block289172
block289174:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block289172
start:
	movq $1, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block289173
	jmp block289174
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $96, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, %r15
	addq $176, %r15
	jmp start
conclusion:
	subq $176, %r15
	addq $96, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

