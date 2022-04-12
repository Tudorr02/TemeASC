#include <stdio.h>
#include <stdlib.h>
int main() {

    printf("Introduce numarul:\n");
    char x[20];

    scanf("%s",x);

    if(x[0]=='-')
        printf("numarul este negativ");
    else
        printf("numarul nu este negativ");

    return 0;
}
