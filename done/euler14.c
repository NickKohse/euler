#include <stdio.h>

int collatz(int x) {
    int l = 1;
    while (x != 1) {
        if ((x % 2) == 0) {
            x /= 2;
        }
        else {
            x = (x * 3) + 1;
        }
        l++;
    }
    return l;
}

int main() {
    int maxL = 0;
    int maxI = 0;
    for (int i = 1; i < 1000000; i++) {
        int l = collatz(i);
        if (l > maxL) {
            maxI = i;
            maxL = l;
        }
    }
    printf("Longest Collatz sequence starts with: %d", maxI);
}