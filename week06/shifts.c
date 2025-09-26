#include <stdio.h>
#include <stdint.h>

void main(void) {
    uint8_t ua, ub, uc;
    int8_t a, b, c;
    
    ua = 0b00110110;
    ub = ua >> 1;
    uc = ua >> 2;

    printf("ua = %d\n", ua);
    printf("ub = %d\n", ub);
    printf("uc = %d\n", uc);

    a = 0b11001010;
    b = a >> 1;
    c = a >> 2;

    printf("a = %d\n", a);
    printf("b = %d\n", b);
    printf("c = %d\n", c);
}


