#include "resistor_color.h"

resistor_band_t resistorBandColours[] = {BLACK, BROWN, RED, ORANGE, YELLOW, GREEN, BLUE, VIOLET, GREY, WHITE};

int colour_code(resistor_band_t resistorColour)
{
    return resistorColour;
}

resistor_band_t *colors(void)
{
    return resistorBandColours;
}
