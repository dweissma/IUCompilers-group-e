start:
movq $42, %rax
jmp conclusion
.globl main
main:
jmp start
conclusion:
retq

