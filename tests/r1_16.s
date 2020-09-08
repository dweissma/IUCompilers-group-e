start:
movq $10, -16(%rbp)
movq -16(%rbp), %rax
movq %rax, -8(%rbp)
movq $32, -32(%rbp)
movq -32(%rbp), %rax
movq %rax, -24(%rbp)
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

