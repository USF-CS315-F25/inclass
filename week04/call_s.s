# Function call example that requires the Stack

.global foo_s

# int bar_c(int a);
#
# a0 - int a

bar_s:
    addi a0, a0, 1     # a0 (a) = a0 (a) + 1
    ret

# int foo_c(int a);
#
# a0 - int a

foo_s:
    addi sp, sp, -16   # Allocate stack space (must be a multiple of 16)
    sd ra, (sp)        # Store ra on stack at first double word slot

    call bar_s         # Call bar_s (update ra)
    addi a0, a0, 1     # a0 (a) = a0 (a) + 1

    ld ra, (sp)        # Restore ra from stack
    addi sp, sp, 16    # Deallocate stack space
    ret
