.globl minus
.align 16
minusstart:
	negq %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp minusconclusion
minus:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	addq $0, %r15
	jmp minusstart
minusconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl zero
.align 16
block139225:
	movq free_ptr(%rip), %rcx
	addq $8, free_ptr(%rip)
	movq %rcx, %r11
	movq $1, 0(%r11)
	movq %rcx, %rax
	jmp zeroconclusion
block139228:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	callq *%r13
	movq %rax, %rcx
	movq %rbx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block139230:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block139228
block139229:
	movq $0, %rdx
	jmp block139228
block139227:
	movq %r15, %rdi
	movq $0, %rsi
	callq collect
	jmp block139225
block139226:
	movq $0, %rdx
	jmp block139225
block139232:
	leaq zero(%rip), %rbx
	leaq minus(%rip), %r13
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $8, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block139229
	jmp block139230
block139231:
	movq free_ptr(%rip), %rcx
	movq %rcx, %rsi
	addq $0, %rsi
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rsi
	 jl block139226
	jmp block139227
zerostart:
	cmpq $0, %rcx
	 je block139231
	jmp block139232
zero:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $8, %rsp
	addq $0, %r15
	jmp zerostart
zeroconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl one
.align 16
block139236:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	callq *%r13
	movq %rax, %rcx
	movq %r14, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block139238:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block139236
block139237:
	movq $0, %rcx
	jmp block139236
block139240:
	leaq one(%rip), %r14
	leaq minus(%rip), %r13
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block139237
	jmp block139238
block139233:
	movq free_ptr(%rip), %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp oneconclusion
block139234:
	movq $0, %rcx
	jmp block139233
block139235:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	jmp block139233
block139239:
	leaq zero(%rip), %rdx
	movq $20, %rcx
	callq *%rdx
	movq %rax, %r13
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block139234
	jmp block139235
onestart:
	cmpq $0, %rcx
	 je block139239
	jmp block139240
one:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $8, %rsp
	addq $0, %r15
	jmp onestart
oneconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl two
.align 16
block139241:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $647, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp twoconclusion
block139244:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	callq *%r13
	movq %rax, %rcx
	movq -16(%rbp), %rax
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	jmp *%rax
block139246:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block139244
block139245:
	movq $0, %rcx
	jmp block139244
block139243:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block139241
block139242:
	movq $0, %rcx
	jmp block139241
block139248:
	leaq two(%rip), %rax
	movq %rax, -16(%rbp)
	leaq minus(%rip), %r13
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block139245
	jmp block139246
block139247:
	leaq zero(%rip), %rdx
	movq $20, %rcx
	callq *%rdx
	movq %rax, %r13
	movq $42, %r12
	leaq one(%rip), %rdx
	movq $20, %rcx
	callq *%rdx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block139242
	jmp block139243
twostart:
	cmpq $0, %rcx
	 je block139247
	jmp block139248
two:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $24, %rsp
	addq $0, %r15
	jmp twostart
twoconclusion:
	subq $0, %r15
	addq $24, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl three
.align 16
block139249:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1673, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %rax
	jmp threeconclusion
block139251:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block139249
block139250:
	movq $0, %rcx
	jmp block139249
block139255:
	leaq zero(%rip), %rdx
	movq $20, %rcx
	callq *%rdx
	movq %rax, %r14
	movq $42, %r13
	leaq one(%rip), %rdx
	movq $20, %rcx
	callq *%rdx
	movq %rax, %rbx
	leaq two(%rip), %rdx
	movq $20, %rcx
	callq *%rdx
	movq %rax, 16(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block139250
	jmp block139251
block139252:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	callq *%r14
	movq %rax, %rcx
	movq %rbx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block139253:
	movq $0, %rcx
	jmp block139252
block139254:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block139252
block139256:
	leaq three(%rip), %rbx
	leaq minus(%rip), %r14
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block139253
	jmp block139254
threestart:
	cmpq $0, %rcx
	 je block139255
	jmp block139256
three:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
	subq $8, %rsp
	addq $0, %r15
	jmp threestart
threeconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl main
.align 16
block139257:
	movq free_ptr(%rip), %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $3723, 0(%r11)
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
	movq %rdx, %rcx
	movq %rcx, %r11
	movq 40(%r11), %rcx
	movq %rcx, %r11
	movq 32(%r11), %rcx
	movq %rcx, %r11
	movq 24(%r11), %rcx
	movq %rcx, %r11
	movq 16(%r11), %rax
	jmp mainconclusion
block139259:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	jmp block139257
block139258:
	movq $0, %rcx
	jmp block139257
mainstart:
	leaq zero(%rip), %rdx
	movq $20, %rcx
	callq *%rdx
	movq %rax, %rcx
	movq %rcx, 16(%r15)
	movq $42, %r14
	leaq one(%rip), %rdx
	movq $20, %rcx
	callq *%rdx
	movq %rax, %r13
	leaq two(%rip), %rdx
	movq $20, %rcx
	callq *%rdx
	movq %rax, %r12
	leaq three(%rip), %rdx
	movq $20, %rcx
	callq *%rdx
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block139258
	jmp block139259
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

