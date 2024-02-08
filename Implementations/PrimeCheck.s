      .data

msg:  .asciz  "Enter a number\n"
p:    .asciz  " is prime\n"
np:   .asciz  " is not prime: "
ast:  .asciz  "*"
nl:   .asciz  "\n"

      .text
      .globl  main

main:   
    la     a0, msg            # load string msg
    li     a7, 4              # str output
    ecall                     # system call
    li     a7, 5              # int input
    ecall                     # system call
    add    s0, zero, a0       # s0 is num
    li     t0, 1              # t0 is i
    li     t1, 1              # t1 is the square of i

sqrt:
    addi   t0, t0, 1          # increment i
    mul    t1, t0, t0         # t1 = t0 ** 2
    ble    t1, s0, sqrt       # branch to sqrt if t1 <= num

    add    s1, zero, t0       # s1 = sqrt(num)
    li     t0, 2              # t0 is i
    bge t0, s1,  prime        # edge case
    
loop:
    rem    t1, s0, t0         # t1 = num % i
    beq    t1, zero, notprime # branch to notprime if t1 == zero
    addi   t0, t0, 1          # increment i
    ble    t0, s1, loop       # loop while i < sqrt(num)

prime:
    add    a0, zero, s0       # load num
    li     a7, 1              # int output
    ecall                     # system call
    la     a0, p              # load string p
    li     a7, 4              # str output
    ecall                     # system call
    j      exit               # jump to exit

notprime:
    add    a0, zero, s0       # load num
    li     a7, 1              # print int
    ecall                     # system call
    la     a0, np             # load string np
    li     a7, 4              # print str
    ecall                     # system call
    add    a0, zero, t0       # load i
    li     a7, 1              # print int
    ecall                     # system call
    la     a0, ast            # load string ast
    li     a7, 4              # print str
    ecall                     # system call
    div    t2, s0, t0         # t2 = num / i 
    add    a0, zero, t2       # load num / i
    li     a7, 1              # print int
    ecall                     # system call
    la     a0, nl             # load string nl
    li     a7, 4              # print str
    ecall                     # system call

exit:   
    li      a7, 10            # exit code 0
    ecall                     # system call
