start:
callq read_int
movq %rax, -8(%rbp)
movq -8(%rbp), %rax
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

