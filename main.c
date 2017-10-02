#include <stdio.h>
#include "custom_floats.h"

int main(){
    int length = 8;
    int mantis = 3;

    for(int i = 0; i < 30; i++)
        printf(
            "custom_float[%d, %d] [0x%0x]\t%f\n",
            length,
            mantis,
            i,
            customFloat(i, length, mantis)
        );

    return 0;
}
