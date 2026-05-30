def steps(number):
    # example when argument is zero or a negative integer
    if number <= 0:
        raise ValueError("Only positive integers are allowed")
    c = 0
    while number != 1:
        if number % 2 == 0:
            number = number / 2
            c += 1
        else:
            number = 3 * number + 1
            c += 1
    return c
