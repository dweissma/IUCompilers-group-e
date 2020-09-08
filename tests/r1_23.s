start:
movq $32, %rax
addq $10, %rax
jmp conclusion
.globl main
main:
jmp start
conclusion:
retq

