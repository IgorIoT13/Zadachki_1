#if TASK == 3
#include "task.h"
#include <stdio.h>

uint start_point(uint n, uint m) {
    if (n == 0 || m == 0 || (n == m && n == 1)){
        return 0;
    }

    uint black_n = (n%2 == 0) ? (n/2) : ((n+1)/2)-1;
    printf("N BLACK: %d \n", black_n);
    uint black_m = (m%2 == 0) ? m/2 : (m-1)/2;
    printf("M BLACK: %d \n", black_m);
    uint res = black_n+ black_m;

    return res;
}

void start_app(){
    uint n, m;
    printf("Input N:");
    scanf("%d", &n);

    printf("\nInput M:");
    scanf("%d", &m);

    printf("\nN:%d, M:%d \n", n, m);

    uint res = start_point(n, m);

    printf("Results: %d", res);
}


#endif