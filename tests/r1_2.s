start:
movq $20, %rax
addq $22, %rax
jmp conclusion
.globl main
main:
jmp start
conclusion:
retq

