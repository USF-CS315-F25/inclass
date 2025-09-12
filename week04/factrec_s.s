.global factrec_s

# int factrec_c(int n);
#
# a0 - int n
#
# t0 - int r

factrec_s:
    addi sp, sp, -16            # Allocate stack space
    sd ra, (sp)                 # Preserve ra

    # Base case
    bgt a0, zero, factrec_else  # Branch to recursive step if a0 (n) > 0
    li t0, 1                    # Set t0 (r) = 1
    j factrec_done              # Jump over recursive step

factrec_else:
    # Recursive Step
    sd a0, 8(sp)                # Store a0 (n) caller-saved reg on stack
    addi a0, a0, -1             # a0 (n) = a0 (n) - 1            
    call factrec_s              # Recursive all (just a function call)
    ld t0, 8(sp)                # Restore a0 (n) from stack
    mul t0, a0, t0              # t0 (r) = factrec_s(n - 1) * n

factrec_done:
    mv a0, t0                   # a0 (return value) = t0 (r)
    ld ra, (sp)                 # Restore ra
    addi sp, sp, 16             # Deallocate stack
    ret
