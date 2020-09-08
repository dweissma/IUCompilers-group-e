start:
movq $14, -8(%rbp)
movq -8(%rbp), %rax
movq %rax, -16(%rbp)
movq -8(%rbp), %rax
addq %rax, -16(%rbp)
movq -16(%rbp), %rax
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

