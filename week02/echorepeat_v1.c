//
// echorepeat <string>

#include <stdio.h>

int main(int argc, char *argv[]) {
    char *str;

    if (argc != 2) {
        printf("usage: echorepeat <string>\n");
        return 0;
    }

    str = argv[1];

    for (int i = 0; i < 10; i++) {
        printf("%s\n", str);
    }
}
