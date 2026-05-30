def response(hey_bob):
    hey_bob = (hey_bob.lstrip()).rstrip()
    if len(hey_bob) == 0:
        return 'Fine. Be that way!'
    if hey_bob[-1] == '?' and hey_bob.isupper() == False:
        return 'Sure.'
    if hey_bob[-1] == '?' and hey_bob.isupper() == True:
        return "Calm down, I know what I'm doing!"
    if not (hey_bob[-1] == '?') and hey_bob.isupper() == True:
        return  'Whoa, chill out!'
    return 'Whatever.'
