def is_armstrong_number(number):
    num = list(map(int, str(number)))
    c = 0
    for i in range(len(num)):
        c += num[i]**len(num)
    return c == number
