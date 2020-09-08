start:
movq $10, -8(%rbp)
addq $1, -8(%rbp)
movq $10, %rax
addq -8(%rbp), %rax
jmp conclusion
.globl main
main:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
jmp start
conclusion:
addq $16, %rsp
popq %rbp
retq

