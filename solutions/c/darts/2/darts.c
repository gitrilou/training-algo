#include "darts.h"
#include <math.h>

float score(float x, float y);

float score(float x, float y)
{
    float distance = sqrtf(x * x + y * y);

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