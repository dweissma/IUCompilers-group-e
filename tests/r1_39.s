start:
movq $7, -16(%rbp)
addq $3, -16(%rbp)
movq -16(%rbp), %rax
movq %rax, -8(%rbp)
negq -8(%rbp)
movq $52, %rax
addq -8(%rbp), %rax
jmp conclusion
.globl main
main:
pushq %rbp
movq %rsp, %rbp
subq $24, %rsp
jmp start
conclusion:
addq $24, %rsp
popq %rbp
retq

