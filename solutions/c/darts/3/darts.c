#include "darts.h"
#include <math.h>

uint8_t score(coordinate_t p);

uint8_t score(coordinate_t p)
{
    float distance = sqrtf(p.x * p.x + p.y * p.y);

    if (distance <= 1.0f) {
        return 10.0f;
    } else if (distance <= 5.0f) {
        return 5.0f;
    } else if (distance <= 10.0f) {
        return 1.0f;
    } else {
        return 0.0f;
    }
}