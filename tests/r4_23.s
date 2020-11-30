.globl f
.align 16
block38159:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq $2, %rdx
	negq %rdx
	movq %rbx, %rcx
	addq %rdx, %rcx
	movq %rsi, %rdi
	movq %rcx, %rsi
	callq *%r14
	movq %rax, %rcx
	movq -16(%rbp), %rax
	addq %rcx, %rax
	jmp fconclusion
block38161:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38159
block38160:
	movq $0, %rcx
	jmp block38159
block38162:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38160
	jmp block38161
block38164:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38162
block38163:
	movq $0, %rcx
	jmp block38162
block38165:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq $1, %rdx
	negq %rdx
	movq %rbx, %rcx
	addq %rdx, %rcx
	movq %rsi, %rdi
	movq %rcx, %rsi
	callq *%r14
	movq %rax, -16(%rbp)
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38163
	jmp block38164
block38167:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38165
block38166:
	movq $0, %rcx
	jmp block38165
block38168:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38166
	jmp block38167
block38170:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38168
block38169:
	movq $0, %rcx
	jmp block38168
block38172:
	leaq f(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38169
	jmp block38170
block38171:
	movq $1, %rax
	jmp fconclusion
block38174:
	cmpq $1, %rbx
	 je block38171
	jmp block38172
block38173:
	movq $0, %rax
	jmp fconclusion
fstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	cmpq $0, %rbx
	 je block38173
	jmp block38174
f:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp fstart
fconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl g
.align 16
block38181:
	movq %rbx, %rax
	jmp gconclusion
block38183:
	movq %r12, %rax
	jmp gconclusion
block38175:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rsi
	movq $1, %rcx
	negq %rcx
	movq %r13, %rdx
	addq %rcx, %rdx
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rsi, %rdi
	movq %rdx, %rsi
	movq %rbx, %rdx
	movq -24(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block38176:
	movq $0, %rcx
	jmp block38175
block38177:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38175
block38178:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq -16(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -24(%rbp)
	leaq g(%rip), %rcx
	movq %rcx, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38176
	jmp block38177
block38180:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38178
block38179:
	movq $0, %rcx
	jmp block38178
block38182:
	leaq g(%rip), %rcx
	movq %rcx, -16(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38179
	jmp block38180
block38184:
	cmpq $1, %r13
	 je block38181
	jmp block38182
gstart:
	movq %rsi, %r13
	movq %rdx, %r12
	movq %rcx, %rbx
	cmpq $0, %r13
	 je block38183
	jmp block38184
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $24, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block38185:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $8, %rsi
	movq $0, %rdx
	movq $1, %rcx
	callq *%r14
	movq %rax, %rcx
	movq %r12, %rax
	addq %rcx, %rax
	jmp mainconclusion
block38187:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38185
block38186:
	movq $0, %rcx
	jmp block38185
block38188:
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
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38186
	jmp block38187
block38190:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38188
block38189:
	movq $0, %rcx
	jmp block38188
block38191:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq $8, %rsi
	callq *%r12
	movq %rax, %r12
	leaq g(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38189
	jmp block38190
block38193:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38191
block38192:
	movq $0, %rcx
	jmp block38191
block38194:
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
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38192
	jmp block38193
block38196:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block38194
block38195:
	movq $0, %rcx
	jmp block38194
mainstart:
	leaq f(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block38195
	jmp block38196
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

