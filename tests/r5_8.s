.globl make__qzxwrapper
.align 16
block85892:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $903, 0(%r11)
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
	jmp make__qzxwrapperconclusion
block85894:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block85892
block85893:
	movq $0, %rdx
	jmp block85892
make__qzxwrapperstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	leaq lambda85807(%rip), %rdi
	movq %rdi, %r13
	movq %rcx, %r12
	movq %rdx, %rbx
	movq free_ptr(%rip), %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	 jl block85893
	jmp block85894
make__qzxwrapper:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp make__qzxwrapperstart
make__qzxwrapperconclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %rbx
	popq %r12
	popq %r13
	popq %rbp
	retq 
.globl lambda85807
.align 16
block85895:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1929, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
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
	movq %rcx, %rax
	jmp lambda85807conclusion
block85897:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block85895
block85896:
	movq $0, %rdx
	jmp block85895
lambda85807start:
	movq %rdi, %r8
	movq %rsi, %rdx
	movq %r8, %r11
	movq 16(%r11), %rdi
	movq %r8, %r11
	movq 24(%r11), %rsi
	leaq lambda85809(%rip), %r8
	movq %r8, %rbx
	movq %rdi, %r14
	movq %rsi, %r13
	movq %rdx, %r12
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $32, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block85896
	jmp block85897
lambda85807:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85807start
lambda85807conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl lambda85809
.align 16
lambda85809start:
	movq %rdi, %r8
	movq %rsi, %rcx
	movq %r8, %r11
	movq 16(%r11), %rdx
	movq %r8, %r11
	movq 24(%r11), %rdi
	movq %r8, %r11
	movq 32(%r11), %rsi
	movq %rdi, 16(%r15)
	movq 16(%r15), %r11
	movq 8(%r11), %r14
	movq %rsi, %r13
	movq %r13, %r11
	movq 8(%r11), %r12
	movq %rdx, %rsi
	movq %rsi, %r11
	movq 8(%r11), %rdx
	movq %rsi, %rdi
	movq %rcx, %rsi
	callq *%rdx
	movq %rax, %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	callq *%r12
	movq %rax, %rcx
	movq 16(%r15), %rdi
	movq %rcx, %rsi
	movq %r14, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
lambda85809:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda85809start
lambda85809conclusion:
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl add1
.align 16
add1start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	addq $1, %rax
	jmp add1conclusion
add1:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp add1start
add1conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl sub1
.align 16
sub1start:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq $1, %rdx
	negq %rdx
	movq %rcx, %rax
	addq %rdx, %rax
	jmp sub1conclusion
sub1:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp sub1start
sub1conclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl constfun
.align 16
constfunstart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq $42, %rax
	jmp constfunconclusion
constfun:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp constfunstart
constfunconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl double
.align 16
doublestart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rax
	addq %rcx, %rax
	jmp doubleconclusion
double:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp doublestart
doubleconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block85898:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $777, %rsi
	movq %rcx, %rax
	subq $0, %r15
	addq $8, %rsp
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	jmp *%rax
block85900:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85898
block85899:
	movq $0, %rcx
	jmp block85898
block85901:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq $11, %rsi
	callq *%rcx
	movq %rax, %rcx
	leaq constfun(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85899
	jmp block85900
block85903:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85901
block85902:
	movq $0, %rcx
	jmp block85901
block85904:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r14, %rdi
	movq %rcx, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %r14, %r11
	movq 8(%r11), %r13
	leaq double(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85902
	jmp block85903
block85906:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85904
block85905:
	movq $0, %rcx
	jmp block85904
block85907:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq 16(%r15), %rdi
	movq %r13, %rsi
	movq %rcx, %rdx
	callq *%r14
	movq %rax, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	leaq constfun(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85905
	jmp block85906
block85909:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85907
block85908:
	movq $0, %rcx
	jmp block85907
block85910:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	leaq sub1(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85908
	jmp block85909
block85912:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85910
block85911:
	movq $0, %rcx
	jmp block85910
block85913:
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
	leaq add1(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85911
	jmp block85912
block85915:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block85913
block85914:
	movq $0, %rcx
	jmp block85913
mainstart:
	leaq make__qzxwrapper(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block85914
	jmp block85915
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
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
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

