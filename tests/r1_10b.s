start:
movq $10, -8(%rbp)
movq $20, -16(%rbp)
movq -16(%rbp), %rax
movq %rax, -24(%rbp)
addq $12, -24(%rbp)
movq -8(%rbp), %rax
addq -24(%rbp), %rax
jmp conclusion
.globl main
main:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp
jmp start
conclusion:
addq $32, %rsp
popq %rbp
retq

