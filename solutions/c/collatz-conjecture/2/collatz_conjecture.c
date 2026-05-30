#include "collatz_conjecture.h"

int collatz_steps(int n);

int collatz_steps(int n)
{
    if (n <= 0) {
        return -1; // Invalid input
    }

    int steps = 0;
    while (n != 1) {
        if (n % 2 == 0) {
            n /= 2; // Even number
        } else {
            n = 3 * n + 1; // Odd number
        }
        steps++;
    }
    return steps;
}