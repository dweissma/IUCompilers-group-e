start:
callq read_int
movq %rax, -8(%rbp)
callq read_int
movq %rax, -16(%rbp)
callq read_int
movq %rax, -24(%rbp)
callq read_int
movq %rax, -32(%rbp)
callq read_int
movq %rax, -40(%rbp)
callq read_int
movq %rax, -48(%rbp)
callq read_int
movq %rax, -56(%rbp)
callq read_int
movq %rax, -64(%rbp)
callq read_int
movq %rax, -72(%rbp)
callq read_int
movq %rax, -80(%rbp)
callq read_int
movq %rax, -88(%rbp)
callq read_int
movq %rax, -96(%rbp)
callq read_int
movq %rax, -104(%rbp)
callq read_int
movq %rax, -112(%rbp)
callq read_int
movq %rax, -120(%rbp)
callq read_int
movq %rax, -128(%rbp)
movq -16(%rbp), %rax
movq %rax, -168(%rbp)
negq -168(%rbp)
movq -8(%rbp), %rax
movq %rax, -160(%rbp)
movq -168(%rbp), %rax
addq %rax, -160(%rbp)
movq -32(%rbp), %rax
movq %rax, -184(%rbp)
negq -184(%rbp)
movq -24(%rbp), %rax
movq %rax, -176(%rbp)
movq -184(%rbp), %rax
addq %rax, -176(%rbp)
movq -160(%rbp), %rax
movq %rax, -152(%rbp)
movq -176(%rbp), %rax
addq %rax, -152(%rbp)
movq -48(%rbp), %rax
movq %rax, -208(%rbp)
negq -208(%rbp)
movq -40(%rbp), %rax
movq %rax, -200(%rbp)
movq -208(%rbp), %rax
addq %rax, -200(%rbp)
movq -64(%rbp), %rax
movq %rax, -224(%rbp)
negq -224(%rbp)
movq -56(%rbp), %rax
movq %rax, -216(%rbp)
movq -224(%rbp), %rax
addq %rax, -216(%rbp)
movq -200(%rbp), %rax
movq %rax, -192(%rbp)
movq -216(%rbp), %rax
addq %rax, -192(%rbp)
movq -152(%rbp), %rax
movq %rax, -144(%rbp)
movq -192(%rbp), %rax
addq %rax, -144(%rbp)
movq -80(%rbp), %rax
movq %rax, -256(%rbp)
negq -256(%rbp)
movq -72(%rbp), %rax
movq %rax, -248(%rbp)
movq -256(%rbp), %rax
addq %rax, -248(%rbp)
movq -96(%rbp), %rax
movq %rax, -272(%rbp)
negq -272(%rbp)
movq -88(%rbp), %rax
movq %rax, -264(%rbp)
movq -272(%rbp), %rax
addq %rax, -264(%rbp)
movq -248(%rbp), %rax
movq %rax, -240(%rbp)
movq -264(%rbp), %rax
addq %rax, -240(%rbp)
movq -112(%rbp), %rax
movq %rax, -296(%rbp)
negq -296(%rbp)
movq -104(%rbp), %rax
movq %rax, -288(%rbp)
movq -296(%rbp), %rax
addq %rax, -288(%rbp)
movq -128(%rbp), %rax
movq %rax, -312(%rbp)
negq -312(%rbp)
movq -120(%rbp), %rax
movq %rax, -304(%rbp)
movq -312(%rbp), %rax
addq %rax, -304(%rbp)
movq -288(%rbp), %rax
movq %rax, -280(%rbp)
movq -304(%rbp), %rax
addq %rax, -280(%rbp)
movq -240(%rbp), %rax
movq %rax, -232(%rbp)
movq -280(%rbp), %rax
addq %rax, -232(%rbp)
movq -144(%rbp), %rax
movq %rax, -136(%rbp)
movq -232(%rbp), %rax
addq %rax, -136(%rbp)
movq -136(%rbp), %rax
addq $42, %rax
jmp conclusion
.globl main
main:
pushq %rbp
movq %rsp, %rbp
subq $320, %rsp
jmp start
conclusion:
addq $320, %rsp
popq %rbp
retq

