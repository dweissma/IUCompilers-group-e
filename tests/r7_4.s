.globl main
.align 16
block811114:
	movq $-1, %rdi
	callq exit
block811120:
	movq $-1, %rdi
	callq exit
block811117:
	movq $-1, %rdi
	callq exit
block811099:
	movq $-1, %rdi
	callq exit
block811093:
	movq $-1, %rdi
	callq exit
block811092:
	movq %rdx, %rax
	sarq $3, %rax
	jmp mainconclusion
block811094:
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq %rbx, %rsi
	callq *%rcx
	movq %rax, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811092
	jmp block811093
block811097:
	jmp block811094
block811098:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811097
block811096:
	movq $-1, %rdi
	callq exit
block811095:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $1, %rdx
	 je block811098
	jmp block811099
block811100:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $144115188075855875, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	orq $3, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $3, %rdx
	 je block811095
	jmp block811096
block811102:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811100
block811101:
	movq $0, %rcx
	jmp block811100
block811103:
	salq $3, %rcx
	orq $5, %rcx
	leaq lambda811053(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811101
	jmp block811102
block811105:
	movq $-1, %rdi
	callq exit
block811104:
	movq $77, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rdx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rsi, %r11
	movq %rcx, 0(%r11)
	movq $0, %rcx
	jmp block811103
block811106:
	movq %rsi, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rcx
	cmpq %rcx, %rdx
	 jl block811104
	jmp block811105
block811108:
	movq $-1, %rdi
	callq exit
block811107:
	sarq $3, %rdx
	jmp block811106
block811109:
	movq %rcx, %rsi
	movq $0, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811107
	jmp block811108
block811111:
	movq $-1, %rdi
	callq exit
block811110:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811109
block811112:
	salq $3, %rcx
	orq $5, %rcx
	movq %rbx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811110
	jmp block811111
block811113:
	movq $7, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rdx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rsi, %r11
	movq %rcx, 0(%r11)
	movq $0, %rcx
	jmp block811112
block811115:
	movq %rsi, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rcx
	cmpq %rcx, %rdx
	 jl block811113
	jmp block811114
block811116:
	sarq $3, %rdx
	jmp block811115
block811118:
	movq %rcx, %rsi
	movq $1, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811116
	jmp block811117
block811119:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811118
block811121:
	movq free_ptr(%rip), %rdx
	addq $40, free_ptr(%rip)
	movq %rdx, %r11
	movq $1929, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, 32(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811119
	jmp block811120
block811123:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block811121
block811122:
	movq $0, %rcx
	jmp block811121
mainstart:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq $2, 16(%r15)
	salq $3, 16(%r15)
	orq $1, 16(%r15)
	movq $3, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq $42, %r14
	salq $3, %r14
	orq $1, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811122
	jmp block811123
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
.globl lambda811053
.align 16
block811124:
	movq %rcx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rdx, %r11
	movq 0(%r11), %rax
	jmp lambda811053conclusion
block811128:
	movq $-1, %rdi
	callq exit
block811131:
	movq $-1, %rdi
	callq exit
block811125:
	movq $-1, %rdi
	callq exit
block811126:
	movq %rdx, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rsi
	cmpq %rsi, %rcx
	 jl block811124
	jmp block811125
block811127:
	movq %rsi, %rcx
	sarq $3, %rcx
	jmp block811126
block811129:
	movq $3, %rsi
	salq $3, %rsi
	orq $1, %rsi
	movq %rsi, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811127
	jmp block811128
block811130:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811129
lambda811053start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $2, %rdx
	 je block811130
	jmp block811131
lambda811053:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda811053start
lambda811053conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 

