start:
movq $20, -8(%rbp)
movq $22, -16(%rbp)
movq -8(%rbp), %rax
addq -16(%rbp), %rax
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
