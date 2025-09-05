.global add3arr_s

# Arguments
# a0 - int arr[] (address)

# Registers
# t0 - int tmp
# t1 - int sum

add3arr_s:
    li t1, 0         # t1 (sum) = 0

    lw t0, (a0)      # t0 = *a0 (get value from memory at addr a0)
    add t1, t1, t0   # t1 (sum) = t1 (sum) + t0 (arr[0])
    addi a0, a0, 4   # a0 = a0 + 4 // make a0 point to the next element in arr

    lw t0, (a0)      # t0 (tmp) = *a0 (get arr[1])
    add t1, t1, t0   # t1 (sum) = t0 (sum)  + t1 (arr[1])
    addi a0, a0, 4   # a0 = a0 + 4 // go to next element in arr

    lw t0, (a0)      # t0 (tmp) = *a0 (get arr[2])
    add t1, t1, t0   # t1 (sum) = t0 (sum) + t1 (arr[2]))
    mv a0, t1        # a0 = t1 (return sum in a0)
    ret
