.global countll_s

# int countll_c(struct node_st *np)
#
# a0 - struct node_st *np
# t0 - int len

# struct node_st
# 0 : struct node_st *np
# 8 : int value


countll_s:
    li t0, 0                    # t0 (len) = 0

countll_while:
    beq  a0, zero, countll_done # a0 (np) == 0 ?
    addi t0, t0, 1              # t0 (len) = t0 (len) + 1
    ld a0, 0(a0)                # a0 (np) == np->next_p
    j countll_while

countll_done:
    mv a0, t0
    ret
