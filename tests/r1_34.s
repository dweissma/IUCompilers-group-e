start:
movq $1, -40(%rbp)
addq $1, -40(%rbp)
movq $1, -48(%rbp)
addq $1, -48(%rbp)
movq -40(%rbp), %rax
movq %rax, -32(%rbp)
movq -48(%rbp), %rax
addq %rax, -32(%rbp)
movq $1, -64(%rbp)
addq $1, -64(%rbp)
movq $1, -72(%rbp)
addq $1, -72(%rbp)
movq -64(%rbp), %rax
movq %rax, -56(%rbp)
movq -72(%rbp), %rax
addq %rax, -56(%rbp)
movq -32(%rbp), %rax
movq %rax, -24(%rbp)
movq -56(%rbp), %rax
addq %rax, -24(%rbp)
movq $1, -96(%rbp)
addq $1, -96(%rbp)
movq $1, -104(%rbp)
addq $1, -104(%rbp)
movq -96(%rbp), %rax
movq %rax, -88(%rbp)
movq -104(%rbp), %rax
addq %rax, -88(%rbp)
movq $1, -120(%rbp)
addq $1, -120(%rbp)
movq $1, -128(%rbp)
addq $1, -128(%rbp)
movq -120(%rbp), %rax
movq %rax, -112(%rbp)
movq -128(%rbp), %rax
addq %rax, -112(%rbp)
movq -88(%rbp), %rax
movq %rax, -80(%rbp)
movq -112(%rbp), %rax
addq %rax, -80(%rbp)
movq -24(%rbp), %rax
movq %rax, -16(%rbp)
movq -80(%rbp), %rax
addq %rax, -16(%rbp)
movq $1, -160(%rbp)
addq $1, -160(%rbp)
movq $1, -168(%rbp)
addq $1, -168(%rbp)
movq -160(%rbp), %rax
movq %rax, -152(%rbp)
movq -168(%rbp), %rax
addq %rax, -152(%rbp)
movq $1, -184(%rbp)
addq $1, -184(%rbp)
movq $1, -192(%rbp)
addq $1, -192(%rbp)
movq -184(%rbp), %rax
movq %rax, -176(%rbp)
movq -192(%rbp), %rax
addq %rax, -176(%rbp)
movq -152(%rbp), %rax
movq %rax, -144(%rbp)
movq -176(%rbp), %rax
addq %rax, -144(%rbp)
movq $1, -216(%rbp)
addq $1, -216(%rbp)
movq $1, -224(%rbp)
addq $1, -224(%rbp)
movq -216(%rbp), %rax
movq %rax, -208(%rbp)
movq -224(%rbp), %rax
addq %rax, -208(%rbp)
movq $1, -240(%rbp)
addq $1, -240(%rbp)
movq $1, -248(%rbp)
addq $1, -248(%rbp)
movq -240(%rbp), %rax
movq %rax, -232(%rbp)
movq -248(%rbp), %rax
addq %rax, -232(%rbp)
movq -208(%rbp), %rax
movq %rax, -200(%rbp)
movq -232(%rbp), %rax
addq %rax, -200(%rbp)
movq -144(%rbp), %rax
movq %rax, -136(%rbp)
movq -200(%rbp), %rax
addq %rax, -136(%rbp)
movq -16(%rbp), %rax
movq %rax, -8(%rbp)
movq -136(%rbp), %rax
addq %rax, -8(%rbp)
movq $10, %rax
addq -8(%rbp), %rax
jmp conclusion
.globl main
main:
pushq %rbp
movq %rsp, %rbp
subq $256, %rsp
jmp start
conclusion:
addq $256, %rsp
popq %rbp
retq

