.global add3_s

# int add3_c(int a, int b, int c);
#
# a0 - int a
# a1 - int b
# a2 - int c

add3_s:
    # The add instruction can only add two registers
    add a0, a0, a1   # a = a + b
    add a0, a0, a2   # a = a + c
    ret
