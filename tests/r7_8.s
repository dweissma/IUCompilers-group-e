.globl vector__qzxfoo
.align 16
block811752:
	movq $-1, %rdi
	callq exit
block811744:
	salq $3, %rcx
	orq $5, %rcx
	movq %rdi, %rax
	jmp vector__qzxfooconclusion
block811746:
	movq $-1, %rdi
	callq exit
block811745:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rdx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rsi, %r11
	movq %rcx, 0(%r11)
	movq $0, %rcx
	jmp block811744
block811747:
	movq %rsi, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rcx
	cmpq %rcx, %rdx
	 jl block811745
	jmp block811746
block811749:
	movq $-1, %rdi
	callq exit
block811748:
	sarq $3, %rdx
	jmp block811747
block811750:
	movq %rcx, %rsi
	movq $0, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811748
	jmp block811749
block811751:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811750
vector__qzxfoostart:
	movq %rdi, %rcx
	movq %rsi, %rdi
	movq %rdi, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811751
	jmp block811752
vector__qzxfoo:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp vector__qzxfoostart
vector__qzxfooconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl vector__qzxfoo__qzxtoo
.align 16
block811753:
	salq $3, %rcx
	orq $5, %rcx
	movq %rdi, %rax
	jmp vector__qzxfoo__qzxtooconclusion
block811755:
	movq $-1, %rdi
	callq exit
block811754:
	movq $42, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rcx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rsi, %r11
	movq %rdx, 0(%r11)
	movq $0, %rcx
	jmp block811753
block811756:
	movq %rsi, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rdx
	cmpq %rdx, %rcx
	 jl block811754
	jmp block811755
block811758:
	movq $-1, %rdi
	callq exit
block811757:
	movq %rdx, %rcx
	sarq $3, %rcx
	jmp block811756
block811759:
	movq %rcx, %rsi
	movq $1, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811757
	jmp block811758
block811761:
	movq $-1, %rdi
	callq exit
block811760:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811759
vector__qzxfoo__qzxtoostart:
	movq %rdi, %rcx
	movq %rsi, %rdi
	movq %rdi, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811760
	jmp block811761
vector__qzxfoo__qzxtoo:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp vector__qzxfoo__qzxtoostart
vector__qzxfoo__qzxtooconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl vector__qzxfoo__qzxthree
.align 16
block811763:
	movq $-1, %rdi
	callq exit
block811762:
	movq %rdx, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rcx, %r11
	movq 0(%r11), %rax
	jmp vector__qzxfoo__qzxthreeconclusion
block811764:
	movq %rcx, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rsi
	cmpq %rsi, %rdx
	 jl block811762
	jmp block811763
block811766:
	movq $-1, %rdi
	callq exit
block811765:
	movq %rsi, %rdx
	sarq $3, %rdx
	jmp block811764
block811767:
	movq $2, %rsi
	salq $3, %rsi
	orq $1, %rsi
	movq %rsi, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block811765
	jmp block811766
block811769:
	movq $-1, %rdi
	callq exit
block811768:
	movq $-8, %rcx
	andq %rdx, %rcx
	jmp block811767
block811770:
	salq $3, %rdx
	orq $5, %rdx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $2, %rcx
	 je block811768
	jmp block811769
block811772:
	movq $-1, %rdi
	callq exit
block811771:
	movq $42, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rsi, %r11
	addq $1, %r11
	imulq $8, %r11
	addq %rdi, %r11
	movq %rdx, 0(%r11)
	movq $0, %rdx
	jmp block811770
block811773:
	movq %rdi, %r11
	movq 0(%r11), %r11
	andq $126, %r11
	sarq $1, %r11
	movq %r11, %rdx
	cmpq %rdx, %rsi
	 jl block811771
	jmp block811772
block811775:
	movq $-1, %rdi
	callq exit
block811774:
	sarq $3, %rsi
	jmp block811773
block811776:
	movq %rdx, %rdi
	movq $2, %rsi
	salq $3, %rsi
	orq $1, %rsi
	movq %rsi, %rdx
	andq $7, %rdx
	cmpq $1, %rdx
	 je block811774
	jmp block811775
block811778:
	movq $-1, %rdi
	callq exit
block811777:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811776
vector__qzxfoo__qzxthreestart:
	movq %rdi, %rcx
	movq %rsi, %rcx
	movq %rcx, %rdx
	andq $7, %rdx
	cmpq $2, %rdx
	 je block811777
	jmp block811778
vector__qzxfoo__qzxthree:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, 0(%r15)
	addq $0, %r15
	jmp vector__qzxfoo__qzxthreestart
vector__qzxfoo__qzxthreeconclusion:
	subq $0, %r15
	addq $16, %rsp
	popq %rbp
	retq 
.globl main
.align 16
block811780:
	movq $-1, %rdi
	callq exit
block811779:
	movq %rdx, %rax
	sarq $3, %rax
	jmp mainconclusion
block811781:
	movq free_ptr(%rip), %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $903, 0(%r11)
	movq %rdx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rcx
	movq %rdx, %rcx
	orq $2, %rcx
	movq 16(%r15), %rdi
	movq %rcx, %rsi
	callq *%r14
	movq %rax, %rcx
	movq 32(%r15), %rdi
	movq %rcx, %rsi
	callq *-24(%rbp)
	movq %rax, %rcx
	movq -48(%rbp), %rdi
	movq %rcx, %rsi
	callq *-40(%rbp)
	movq %rax, %rcx
	movq %rcx, %rdx
	movq %rdx, %rcx
	andq $7, %rcx
	cmpq $1, %rcx
	 je block811779
	jmp block811780
block811789:
	movq $-1, %rdi
	callq exit
block811783:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	jmp block811781
block811782:
	movq $0, %rcx
	jmp block811781
block811784:
	movq %rdx, 16(%r15)
	movq 16(%r15), %r11
	movq 8(%r11), %r14
	movq $0, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq $0, %r12
	salq $3, %r12
	orq $1, %r12
	movq $0, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811782
	jmp block811783
block811787:
	jmp block811784
block811788:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811787
block811786:
	movq $-1, %rdi
	callq exit
block811785:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $1, %rdx
	 je block811788
	jmp block811789
block811790:
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
	 je block811785
	jmp block811786
block811798:
	movq $-1, %rdi
	callq exit
block811792:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811790
block811791:
	movq $0, %rcx
	jmp block811790
block811793:
	movq %rdx, 32(%r15)
	movq 32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%rbp)
	leaq vector__qzxfoo(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811791
	jmp block811792
block811796:
	jmp block811793
block811797:
	movq $-8, %rdx
	andq %rcx, %rdx
	jmp block811796
block811795:
	movq $-1, %rdi
	callq exit
block811794:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $1, %rdx
	 je block811797
	jmp block811798
block811799:
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
	 je block811794
	jmp block811795
block811807:
	movq $-1, %rdi
	callq exit
block811801:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811799
block811800:
	movq $0, %rcx
	jmp block811799
block811802:
	movq -48(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -40(%rbp)
	leaq vector__qzxfoo__qzxtoo(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811800
	jmp block811801
block811805:
	jmp block811802
block811806:
	movq $-8, -48(%rbp)
	andq %rcx, -48(%rbp)
	jmp block811805
block811804:
	movq $-1, %rdi
	callq exit
block811803:
	movq $-8, %rdx
	andq %rcx, %rdx
	movq %rdx, %r11
	movq 0(%r11), %r11
	sarq $57, %r11
	movq %r11, %rdx
	cmpq $1, %rdx
	 je block811806
	jmp block811807
block811808:
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
	 je block811803
	jmp block811804
block811810:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	jmp block811808
block811809:
	movq $0, %rcx
	jmp block811808
mainstart:
	leaq vector__qzxfoo__qzxthree(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $8, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rdx
	 jl block811809
	jmp block811810
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r14
	pushq %r13
	subq $48, %rsp
	movq $16384, %rdi
	movq $1024, %rsi
	callq initialize
	movq rootstack_begin(%rip), %r15
	movq $0, 0(%r15)
	addq $0, %r15
	jmp mainstart
mainconclusion:
	subq $0, %r15
	addq $48, %rsp
	popq %rbx
	popq %r12
	popq %r14
	popq %r13
	popq %rbp
	retq 

