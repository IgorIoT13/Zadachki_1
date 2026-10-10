#include "task1.h"



uint start_point(uint a, uint b, uint c) {
    uint total_apples = a + (b * c);

    return total_apples;
}

void start_app(){
    uint a, b, c;
    printf("Input A:");
    scanf("%d", &a);

    printf("\nInput B:");
    scanf("%d", &b);

    printf("\nInput C:");
    scanf("%d", &c);

    printf("\nA:%d, B:%d, C:%d \n", a, b, c);

    uint res = start_point(a, b, c);

    printf("Results: %d", res);
}