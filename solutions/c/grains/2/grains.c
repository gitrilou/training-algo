#include "grains.h"

uint64_t square(uint8_t index)
{
    return (index < 1 || 64 < index) ? 0 : 1ul << (index - 1);
}

uint64_t total(void)
{
    uint64_t sum = 0;
    for (int i = 1; i <= 64; i++)
    {
        sum += square(i);
    }
}