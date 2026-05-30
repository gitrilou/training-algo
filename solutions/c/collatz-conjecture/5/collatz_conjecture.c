#include "collatz_conjecture.h"

int steps(int n);

int steps(int n)
{
    if (n <= 0) {
        return -1; // Invalid input
    }

    int cnt = 0;
    while (n != 1) {
        if (n % 2 == 0) {
            n = n / 2; // Even number
            cnt++;
        } else {
            n = 3 * n + 1; // Odd number
            cnt++;
        }
    }
    return cnt;
}