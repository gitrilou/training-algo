def convert(number):
    st = ''
    if number % 3 == 0:
        st + 'Pling'
    if number % 5 == 0:
        st + 'Plang'
    if number % 7 == 0:
        st + 'Plong'
    else:
        st = str(int)
    return st
