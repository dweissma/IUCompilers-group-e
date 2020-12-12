.globl make__qzxwrapper
.align 16
block159877:
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
block159878:
	movq $0, %rdx
	jmp block159877
block159879:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block159877
make__qzxwrapperstart:
	movq %rdi, %rcx
	movq %rsi, %rdi
	movq %rdx, %rcx
	leaq lambda159792(%rip), %rdx
	movq %rdx, %r13
	movq %rdi, %r12
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159878
	jmp block159879
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
.globl lambda159792
.align 16
block159880:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1929, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rcx, %rax
	jmp lambda159792conclusion
block159881:
	movq $0, %rdx
	jmp block159880
block159882:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	jmp block159880
lambda159792start:
	movq %rdi, %r8
	movq %rsi, %rdx
	movq %r8, %r11
	movq 16(%r11), %rdi
	movq %r8, %r11
	movq 24(%r11), %rsi
	leaq lambda159794(%rip), %r8
	movq %r8, %r12
	movq %rdi, %r14
	movq %rsi, %rbx
	movq %rdx, %r13
	movq free_ptr(%rip), %rdx
	movq %rdx, %rsi
	addq $32, %rsi
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rsi
	 jl block159881
	jmp block159882
lambda159792:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $0, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159792start
lambda159792conclusion:
	subq $0, %r15
	addq $0, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 
.globl lambda159794
.align 16
lambda159794start:
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
	movq %rsi, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	movq %rdx, %rsi
	movq %rsi, %r11
	movq 8(%r11), %rdx
	movq %rsi, %rdi
	movq %rcx, %rsi
	callq *%rdx
	movq %rax, %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	callq *%r13
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
lambda159794:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r12
	pushq %r14
	pushq %r13
	subq $8, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp lambda159794start
lambda159794conclusion:
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
block159883:
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
block159885:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159883
block159884:
	movq $0, %rcx
	jmp block159883
block159886:
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
	 jl block159884
	jmp block159885
block159888:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159886
block159887:
	movq $0, %rcx
	jmp block159886
block159889:
	movq free_ptr(%rip), %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $131, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	movq %r12, %rdi
	movq %rcx, %rsi
	callq *%r14
	movq %rax, %rcx
	movq %r12, %r14
	movq %r14, %r11
	movq 8(%r11), %r13
	leaq double(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159887
	jmp block159888
block159891:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159889
block159890:
	movq $0, %rcx
	jmp block159889
block159892:
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
	movq %rax, %r12
	movq %r12, %r11
	movq 8(%r11), %r14
	leaq constfun(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159890
	jmp block159891
block159894:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159892
block159893:
	movq $0, %rcx
	jmp block159892
block159895:
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
	 jl block159893
	jmp block159894
block159897:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159895
block159896:
	movq $0, %rcx
	jmp block159895
block159898:
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
	 jl block159896
	jmp block159897
block159900:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block159898
block159899:
	movq $0, %rcx
	jmp block159898
mainstart:
	leaq make__qzxwrapper(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block159899
	jmp block159900
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

