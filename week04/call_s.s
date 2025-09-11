.global foo_s

bar_s:
    addi a0, a0, 1
    ret

foo_s:
    addi sp, sp, -16
    sd ra, (sp)

    call bar_s
    addi a0, a0, 1

    ld ra, (sp)
    addi sp, sp, 16
    ret
