start:
callq read_int
movq %rax, -8(%rbp)
callq read_int
movq %rax, -16(%rbp)
movq -8(%rbp), %rax
movq %rax, -24(%rbp)
movq -16(%rbp), %rax
addq %rax, -24(%rbp)
movq -24(%rbp), %rax
addq $42, %rax
jmp conclusion
.globl main
main:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp
jmp start
conclusion:
addq $32, %rsp
popq %rbp
retq
