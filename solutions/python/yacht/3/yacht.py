'''
function to compute the score of a dice
'''
from collections import Counter
# Score categories.
# Change the values as you see fit.
YACHT = (lambda x: 50 if len(set(x)) == 0 else 0)
ONES = (lambda x: digits(x,1))
TWOS = (lambda x: digits(x,2))
THREES = (lambda x: digits(x,3))
FOURS = (lambda x: digits(x,4))
FIVES = (lambda x: digits(x,5))
SIXES = (lambda x: digits(x,6))
FULL_HOUSE = (lambda x: sum(x) if sorted(Counter(x).values()) == [2,3] else 0)
FOUR_OF_A_KIND = (lambda x: four_of_a_kind(x))
LITTLE_STRAIGHT = (lambda x: 30 if sorted(x) == [1,2,3,4,5] else 0)
BIG_STRAIGHT = (lambda x: 30 if sorted(x) == [2,3,4,5,6] else 0)
CHOICE = sum

def digits (l, val):
    return val * l.count(val)

def four_of_a_kind(x):
    four_times_elements = [dice for dice in set(x) if x.count(dice) >= 4]
    return 4*four_times_elements[0] if len(four_times_elements) > 0 else 0

def score(dice, category):
    '''
    said function
    '''
    return category(dice)
