.globl main
.align 16
block811242:
	movq $-1, %rdi
	callq exit
block811245:
	movq $-1, %rdi
	callq exit
block811248:
	movq $-1, %rdi
	callq exit
block811251:
	movq $-1, %rdi
	callq exit
block811254:
	movq $-1, %rdi
	callq exit
block811257:
	movq $-1, %rdi
	callq exit
block811263:
	movq $-1, %rdi
	callq exit
block811260:
	movq $-1, %rdi
	callq exit
block811221:
	movq $-1, %rdi
	callq exit
block811220:
	movq %rcx, %rax
	sarq $3, %rax
	jmp mainconclusion
block811222:
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block811220
	jmp block811221
block811225:
	jmp block811222
block811226:
	movq $0, %rcx
	salq $3, %rcx
	orq $5, %rcx
	jmp block811225
block811258:
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq %r13, %rsi
	callq *%rcx
	movq %rax, %rcx
	jmp block811222
block811261:
	jmp block811258
block811262:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811261
block811259:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $1, %rdx
	 je block811262
	jmp block811263
block811264:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $144115188075855875, 0(%r11)
	movq %rdx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	orq $3, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $3, %rdx
	 je block811259
	jmp block811260
block811265:
	movq $0, %rcx
	jmp block811264
block811266:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811264
block811224:
	leaq lambda811158(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811265
	jmp block811266
block811228:
	jmp block811225
block811230:
	movq $-1, %rdi
	callq exit
block811229:
	movq %rdx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rcx, %r11
	movq 0(%r11), %rcx
	jmp block811228
block811231:
	movq %rcx, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rsi
	cmpq %rsi, %rdx
	 jl block811229
	jmp block811230
block811233:
	movq $-1, %rdi
	callq exit
block811232:
	movq %rsi, %rdx
	sarq $3, %rdx
	jmp block811231
block811234:
	movq $0, %rsi
	salq $3, %rsi
	orq $1, %rsi
	movq %rsi, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block811232
	jmp block811233
block811236:
	movq $-1, %rdi
	callq exit
block811235:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811234
block811227:
	movq %r13, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811235
	jmp block811236
block811237:
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 je block811226
	jmp block811227
block811240:
	cmpq %rsi, %rcx
	 sete %al
	movzbq %al, %rcx
	movq %rcx, %rdx
	salq $3, %rdx
	orq $4, %rdx
	jmp block811237
block811241:
	movq %rdx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rcx, %r11
	movq 0(%r11), %rcx
	jmp block811240
block811243:
	movq %rcx, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rdi
	cmpq %rdi, %rdx
	 jl block811241
	jmp block811242
block811244:
	movq %rdi, %rdx
	sarq $3, %rdx
	jmp block811243
block811246:
	movq $1, %rdi
	salq $3, %rdi
	orq $1, %rdi
	movq %rdi, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block811244
	jmp block811245
block811247:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811246
block811249:
	movq %r13, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811247
	jmp block811248
block811250:
	movq %rcx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rdx, %r11
	movq 0(%r11), %rsi
	jmp block811249
block811252:
	movq %rdx, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rsi
	cmpq %rsi, %rcx
	 jl block811250
	jmp block811251
block811253:
	movq %rsi, %rcx
	sarq $3, %rcx
	jmp block811252
block811255:
	movq %rcx, %rdx
	movq $0, %rsi
	salq $3, %rsi
	orq $1, %rsi
	movq %rsi, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811253
	jmp block811254
block811256:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811255
block811239:
	movq %r13, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811256
	jmp block811257
block811238:
	movq $0, %rdx
	salq $3, %rdx
	orq $4, %rdx
	jmp block811237
block811223:
	movq $1, %rdx
	salq $3, %rdx
	orq $4, %rdx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 sete %al
	movzbq %al, %rcx
	salq $3, %rcx
	orq $4, %rcx
	movq $0, %rdx
	salq $3, %rdx
	orq $4, %rdx
	cmpq %rcx, %rdx
	 je block811238
	jmp block811239
block811267:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $903, 0(%r11)
	movq %rdx, %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %r13
	orq $2, %r13
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rdx, %rcx
	 je block811223
	jmp block811224
block811269:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block811267
block811268:
	movq $0, %rcx
	jmp block811267
mainstart:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq $42, %r13
	salq $3, %r13
	orq $1, %r13
	movq $42, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811268
	jmp block811269
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r14
	pushq %r13
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
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl lambda811158
.align 16
block811270:
	movq %rsi, %rdx
	addq %rcx, %rdx
	movq %rdx, %rax
	salq $3, %rax
	orq $1, %rax
	jmp lambda811158conclusion
block811272:
	movq $-1, %rdi
	callq exit
block811271:
	movq %rdx, %rcx
	sarq $3, %rcx
	jmp block811270
block811273:
	movq $84, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811271
	jmp block811272
block811275:
	movq $-1, %rdi
	callq exit
block811274:
	movq %rdx, %rsi
	sarq $3, %rsi
	jmp block811273
block811276:
	negq %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811274
	jmp block811275
block811278:
	movq $-1, %rdi
	callq exit
block811277:
	movq %rdx, %rcx
	sarq $3, %rcx
	jmp block811276
block811279:
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811277
	jmp block811278
block811281:
	movq $-1, %rdi
	callq exit
block811280:
	movq %rcx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rdx, %r11
	movq 0(%r11), %rcx
	jmp block811279
block811282:
	movq %rdx, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rsi
	cmpq %rsi, %rcx
	 jl block811280
	jmp block811281
block811284:
	movq $-1, %rdi
	callq exit
block811283:
	movq %rsi, %rcx
	sarq $3, %rcx
	jmp block811282
block811285:
	movq $2, %rsi
	salq $3, %rsi
	orq $1, %rsi
	movq %rsi, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811283
	jmp block811284
block811287:
	movq $-1, %rdi
	callq exit
block811286:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811285
lambda811158start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $2, %rdx
	 je block811286
	jmp block811287
lambda811158:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda811158start
lambda811158conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

