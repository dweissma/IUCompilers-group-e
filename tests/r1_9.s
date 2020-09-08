start:
callq read_int
jmp conclusion
.globl main
main:
jmp start
conclusion:
retq

