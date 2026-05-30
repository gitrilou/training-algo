"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language: https://en.wikipedia.org/wiki/Guido_van_Rossum
"""

EXPECTED_BAKE_TIME = 40

PREPARATION_TIME = 2


def bake_time_remaining(toven):
    """
    Return bake time in minutes
    """
    return EXPECTED_BAKE_TIME - toven

def preparation_time_in_minutes(nlayer):
    """
    Return preparation time in minutes
    """
    return nlayer*PREPARATION_TIME

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """
    Return elapsed cooking time.

    This function takes two numbers representing the number of layers & the time already spent
    baking and calculates the total elapsed minutes spent cooking the lasagna.
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
