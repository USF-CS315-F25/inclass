.global struct_s
.global struct_b_s

# a0 - struct foo_st *fp

# struct foo_st
# 0  : uint8_t a
# 4  : uint32_t value1
# 8  : uint8_t b
# 12 : uint32_t value2

struct_s:
    lwu a0, 4(a0) # a0 = a0->value1
    ret

struct_b_s:
    lbu a0, 8(a0)  # a0 = a0->b
    ret
