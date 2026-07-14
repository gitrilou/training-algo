#include "resistor_color_duo.h"

typedef enum {
    BLACK = 0,
    BROWN = 1,
    RED = 2,
    ORANGE = 3,
    YELLOW = 4,
    GREEN = 5,
    BLUE = 6,
    VIOLET = 7,
    GREY = 8,
    WHITE = 9
} resistor_band_t;

int color_code(resistor_band_t colors[]);

int color_code(resistor_band_t colors[])

{

    return colors[0] * 10 + colors[1];

}

