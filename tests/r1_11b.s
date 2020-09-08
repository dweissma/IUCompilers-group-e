start:
movq $20, -16(%rbp)
addq $1, -16(%rbp)
movq $10, -8(%rbp)
movq -16(%rbp), %rax
addq %rax, -8(%rbp)
movq $2, -32(%rbp)
addq $4, -32(%rbp)
movq $5, -24(%rbp)
movq -32(%rbp), %rax
addq %rax, -24(%rbp)
movq -8(%rbp), %rax
addq -24(%rbp), %rax
jmp conclusion
.globl main
main:
pushq %rbp
movq %rsp, %rbp
subq $40, %rsp
jmp start
conclusion:
addq $40, %rsp
popq %rbp
retq

