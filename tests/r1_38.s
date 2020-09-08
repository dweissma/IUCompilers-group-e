start:
movq $10, %rax
addq $32, %rax
jmp conclusion
.globl main
main:
jmp start
conclusion:
retq

