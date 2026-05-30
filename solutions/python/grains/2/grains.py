'''
function for grains.py
'''
def square(number):
    # when the square value is not in the acceptable range        
    if number <= 0 or number > 64:    
        raise ValueError("square must be between 1 and 64")
    return 2**(number - 1)


def total():
    c = 0
    for i in range(64):
        c += 2**i
    return c