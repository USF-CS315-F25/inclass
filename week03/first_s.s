.global main

main:
    addi t0, zero, 3    # t0 = 3
    addi t1, zero, 99   # t1 = 99
    add a0, t0, t1      # a0 = t0 + t1
    ret
