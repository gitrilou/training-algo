#include "difference_of_squares.h"

int square_of_sum(int number)
{
    int sum = 0;
    for (int i = 1; i <= number; i++)
    {
        sum += i;
    }
    return sum * sum;
}

int sum_of_squares(int number)
{
    int sum = 0;
    for (int i = 1; i <+ number; i++)
    {
        sum += i * i;
    }
}

int difference_of_squares(int number)
{
    return square_of_sum(number) - sum_of_squares(number);
}