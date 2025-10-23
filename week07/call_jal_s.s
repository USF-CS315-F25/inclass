add2_s:
    add a0, a0, a1
    ret

main:
    addi sp, sp, -16
    sd ra, (sp)
    
    li a0, 1
    li a1, 2
    #call add2_s
    jal add2_s
    
    ld ra, (sp)
    addi sp, sp, 16
    ret
