#include <stdio.h>
#include <stdlib.h>

int mul2_s(int a, int b);
int mul2_c(int a, int b);

void fatal(char *s) {
    printf("%s\n", s);
    exit(-1);
}

int main(int argc, char **argv) {
    if (argc != 3)
        fatal("usage: mul2 a b");

    int a = atoi(argv[1]);
    int b = atoi(argv[2]);

    int c_result = mul2_c(a, b);
    printf("C: %d\n", c_result);

    int s_result = mul2_s(a, b);
    printf("Asm: %d\n", s_result);

    return 0;
}