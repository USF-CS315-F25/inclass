#include <stdio.h>

int sum_array(int a[], int n) {
    int sum = 0;

    for (int i = 0; i < n; i++) {
        sum = sum + a[i];
    }

    return sum;
}

int main(void) {
    int arr[] = {1, 2, 3, 4, 5};
    int r;
    
    r = sum_array(arr, 5);

    printf("sum_array({1, 2, 3, 4, 5}, 5) = %d\n", r);
}
