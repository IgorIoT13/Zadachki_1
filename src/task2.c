#if TASK == 2
#include "task.h"
#include <stdio.h>

uint start_point(uint n, uint m, uint k) {
    uint res = n*k;

    res = (res < m) ? m : res;

    return res;
}

void start_app(){
    uint n, m, k;
    printf("Input N:");
    scanf("%d", &n);

    printf("\nInput M:");
    scanf("%d", &m);

    printf("\nInput K:");
    scanf("%d", &k);

    printf("\nN:%d, M:%d, K:%d \n", n, m, k);

    uint res = start_point(n, m, k);

    printf("Results: %d", res);
}


#endif