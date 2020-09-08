start:
movq $4, -16(%rbp)
movq $1, -32(%rbp)
movq -16(%rbp), %rax
addq %rax, -32(%rbp)
movq -32(%rbp), %rax
movq %rax, -24(%rbp)
movq -24(%rbp), %rax
movq %rax, -8(%rbp)
movq -16(%rbp), %rax
addq %rax, -8(%rbp)
movq $10, %rax
addq -8(%rbp), %rax
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

