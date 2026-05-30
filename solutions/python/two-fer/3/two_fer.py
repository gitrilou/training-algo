def two_fer(name=None):
    return 'One for {}, one for me.'.format('you' if name is None else name)