def translate(text):
    sent = text.split(' ')
    vowels = ['a','e','i','o','u','y','xr','yt']
    for i in range(len(sent)):
        c = 0
        j = 0
        while j < len(sent[i]) and sent[i][j] not in vowels:
            c += 1
        if sent[i][0] in vowels:
            sent[i] = sent[i] + 'ay'
        if c != 0:
            sent[i] = sent[i][c:] + sent[i][:c] + 'ay'
    return ' '.join(sent)
