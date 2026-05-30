#include "grains.h"

int main(int square, int total)
{
    int rice_on_square = pow(2, square - 1) - 1;
    int total_rice = pow(2, total) - 1;
    return rice_on_square, total_rice;
}