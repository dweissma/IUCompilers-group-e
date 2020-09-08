start:
movq $10, -8(%rbp)
addq $11, -8(%rbp)
movq $4, -24(%rbp)
negq -24(%rbp)
movq $25, -16(%rbp)
movq -24(%rbp), %rax
addq %rax, -16(%rbp)
movq -8(%rbp), %rax
addq -16(%rbp), %rax
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

