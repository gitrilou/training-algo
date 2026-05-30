def convert(number):
    return (("" if number % 3 else "Pling") +
            ("" if number % 5 else "Plang") +
            ("" if number % 7 else "Plong")) or str(number)
