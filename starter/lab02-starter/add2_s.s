.text
.globl add2_s

# a0 - int a
# a1 - int b

add2_s:
    add a0, a0, a1   # a0 = a0 + a1
    ret
