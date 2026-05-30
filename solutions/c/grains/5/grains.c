#include "grains.h"

uint64_t square(uint8_t index)
{
    return (index < 1 || 64 < index) ? 0 : 1ul << (index - 1);
}

uint64_t total(void)
{
    return ((((uint64_t)1 << 63) - 1) << 1) + 1; // or: (uint64_t)(~0)?
}