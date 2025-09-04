#include <stdio.h>
#include <stdlib.h>

int mul4_s(int a, int b, int c, int d);
int mul4_c(int a, int b, int c, int d);

void fatal(char *s) {
    printf("%s\n", s);
    exit(-1);
}

int main(int argc, char **argv) {
    if (argc != 5)
        fatal("usage: mul4 a b c d");

    int a = atoi(argv[1]);
    int b = atoi(argv[2]);
    int c = atoi(argv[3]);
    int d = atoi(argv[4]);

    int c_result = mul4_c(a, b, c, d);
    printf("C: %d\n", c_result);

    int s_result = mul4_s(a, b, c, d);
    printf("Asm: %d\n", s_result);

    return 0;
}