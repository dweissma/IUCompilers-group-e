start:
movq $2, -16(%rbp)
negq -16(%rbp)
movq $4, -8(%rbp)
movq -16(%rbp), %rax
addq %rax, -8(%rbp)
movq $40, %rax
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

