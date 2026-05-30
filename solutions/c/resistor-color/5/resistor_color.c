#include "resistor_color.h"
resistor_band_t resistorBandColors[] = {BLACK, BROWN, RED, ORANGE, YELLOW, GREEN, BLUE, VIOLET, GREY, WHITE};
int color_code(resistor_band_t resistorColor)
{
    return resistorColor;
}
resistor_band_t *colors(void)
{
    return resistorBandColors;
}
