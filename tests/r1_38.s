start:
movq $10, %rax
addq $32, %rax
jmp conclusion
.globl main
main:
pushq %rbp
movq %rsp, %rbp
subq $8, %rsp
jmp start
conclusion:
addq $8, %rsp
popq %rbp
retq
