#include <stdio.h>

#define doorCount 100

int main(int argc, const char * argv[]) {
    int openDoors[doorCount] = {0};
    int *doorPointer, *doorLimit = openDoors + doorCount;
    int doorPass;
    
    for (doorPass=doorCount; (doorPass); doorPass--) {
        for (doorPointer = openDoors + (doorPass - 1); (doorPointer < doorLimit); doorPointer += doorPass) {
            (*doorPointer) ^= 1;
        }
    }
    
    for (doorPointer = openDoors; (doorPointer != doorLimit); doorPointer++) {
        printf("Door %ld is %s\n", (doorPointer - openDoors) + 1, (*doorPointer) ? "Opened!" : "Closed!");
    }
}
