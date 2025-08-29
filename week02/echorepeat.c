#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    int i = 1;
    int header = 0;
    int footer = 0;
    char *str = "";
    int n = 1;

    if (argc < 3) {
        printf("usage: echorepeat -h -f -n <count> <string>\n");
        return 0;
    }

    while (i < argc) {
        if (argv[i][0] == '-' && argv[i][1] == 'h'
            && argv[i][2] == '\0') {
            header = 1;
            i += 1;
        } else if (argv[i][0] == '-' && argv[i][1] == 'f'
            && argv[i][2] == '\0') {
            footer = 1;
            i += 1;
        } else if (argv[i][0] == '-' && argv[i][1] == 'n'
            && argv[i][2] == '\0') {
            n = atoi(argv[i + 1]);
            i += 2;
        } else {
            str = argv[i];
            i += 1;            
        }
    }

    if (header) {
        printf("-----\n");
    }

    for (int i = 0; i < n; i++) {
        printf("%s\n", str);
    }

    if (footer) {
        printf("-----\n");
    }
}
