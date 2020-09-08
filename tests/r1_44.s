start:
movq $10, -16(%rbp)
negq -16(%rbp)
movq -16(%rbp), %rax
movq %rax, -8(%rbp)
addq $11, -8(%rbp)
movq -8(%rbp), %rax
addq $41, %rax
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

