def equilateral(sides):
    equi = (sides[0] == sides[1] == sides[2])
    nonnull = (sides[0] > 0 and sides[1] > 0 and sides[2] > 0)
    triin = (sides[0] + sides[1] >= sides[2] and sides[0] + sides[2] >= sides[1] and sides[1] + sides[2] >= sides[0])
    return equi and nonnull and triin


def isosceles(sides):
    iso = (sides[0] == sides[1] or sides[0] == sides[2] or sides[1] == sides[2])
    nonnull = (sides[0] > 0 and sides[1] > 0 and sides[2] > 0)
    triin = (sides[0] + sides[1] >= sides[2] and sides[0] + sides[2] >= sides[1] and sides[1] + sides[2] >= sides[0])
    return iso and nonnull and triin

def scalene(sides):
    sca = (sides[0] != sides[1] and sides[0] != sides[2] and sides[1] != sides[2])
    nonnull = (sides[0] > 0 and sides[1] > 0 and sides[2] > 0)
    triin = (sides[0] + sides[1] >= sides[2] and sides[0] + sides[2] >= sides[1] and sides[1] + sides[2] >= sides[0])
    return sca and nonnull and triin
