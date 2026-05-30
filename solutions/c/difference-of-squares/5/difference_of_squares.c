#include "difference_of_squares.h"

unsigned int difference_of_squares(int number)
{
    int sum_of_squares = 0;
    int square_of_sum = 0;
    for (int i = 1; i <= number; i++)
    {
        sum_of_squares += i * i;
        square_of_sum += i;
    }
    square_of_sum *= square_of_sum;
    return square_of_sum - sum_of_squares;
}