#include <stdio.h>

void foo(int *p) {
    *p = *p + 1;
}

int main(void) {

    int x;

    x = 1;

    printf("x = %d\n", x);

    foo(&x);
    
    printf("x = %d\n", x);

}
