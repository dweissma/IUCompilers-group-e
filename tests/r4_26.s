.globl g
.align 16
block80208:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %r12, %r11
	movq 8(%r11), %rsi
	movq %rsi, %rdi
	negq %rdi
	movq %rbx, %rsi
	addq %rdi, %rsi
	movq %rdx, %rdi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block80210:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80208
block80209:
	movq $0, %rcx
	jmp block80208
block80207:
	leaq g(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80209
	jmp block80210
block80206:
	movq $0, %rax
	jmp gconclusion
block80211:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r12
	cmpq $0, %rbx
	 je block80206
	jmp block80207
block80213:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80211
block80212:
	movq $0, %rcx
	jmp block80211
gstart:
	movq %rdi, %rcx
	movq %rsi, %rbx
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80212
	jmp block80213
g:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp gstart
gconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block80214:
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
	movq 56(%r15), %r11
	movq 8(%r11), %rsi
	movq 48(%r15), %r11
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
block80216:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80214
block80215:
	movq $0, %rcx
	jmp block80214
block80217:
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
	 jl block80215
	jmp block80216
block80219:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80217
block80218:
	movq $0, %rcx
	jmp block80217
block80220:
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
	 jl block80218
	jmp block80219
block80222:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80220
block80221:
	movq $0, %rcx
	jmp block80220
block80223:
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
	 jl block80221
	jmp block80222
block80225:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80223
block80224:
	movq $0, %rcx
	jmp block80223
block80226:
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
	addq $8, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block80224
	jmp block80225
block80228:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80226
block80227:
	movq $0, %rcx
	jmp block80226
block80229:
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
	 jl block80227
	jmp block80228
block80231:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80229
block80230:
	movq $0, %rcx
	jmp block80229
block80232:
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
	 jl block80230
	jmp block80231
block80234:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80232
block80233:
	movq $0, %rcx
	jmp block80232
block80235:
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
	 jl block80233
	jmp block80234
block80237:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80235
block80236:
	movq $0, %rcx
	jmp block80235
block80238:
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
	 jl block80236
	jmp block80237
block80240:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80238
block80239:
	movq $0, %rcx
	jmp block80238
block80241:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, 56(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80239
	jmp block80240
block80243:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80241
block80242:
	movq $0, %rcx
	jmp block80241
block80244:
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
	 jl block80242
	jmp block80243
block80246:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block80244
block80245:
	movq $0, %rcx
	jmp block80244
mainstart:
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block80245
	jmp block80246
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

