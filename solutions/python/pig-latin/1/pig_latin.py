def translate(text):
    sent = text.split(' ')
    vowels = ['a','e','i','o','u','y','xr','yt']
    for i in range(len(sent)):
        if sent[i][0] in vowels:
            sent[i] = sent[i] + 'ay'
        c = 0
        for j in range(len(sent[i])):
            if sent[i][j] not in vowels:
                c += 1
        if c != 0:
            sent[i] = sent[i][c:] + sent[:c] + 'ay'
    return ' '.join(sent)
