#include "resistor_color.h"

int color_code(resistor_band_t color)
{
    #ifdef BLACK
    return 0;
    #elif BROWN
    return 1;
    #elif RED
    return 2;
    #elif ORANGE
    return 3;
    #elif YELLOW
    return 4;
    #elif GREEN
    return 5;
    #elif BLUE
    return 6;
    #elif VIOLET
    return 7;
    #elif GREY
    return 8;
    #elif WHITE
    return 9;
    #endif
}