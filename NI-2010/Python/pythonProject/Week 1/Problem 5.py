# Problem 5

def interval_intersect(a, b, c, d):
    """
    Returns whether the intervals [a,b] and [c,d] intersect
    :param a:
    :param b:
    :param c:
    :param d:
    :return:
    """
    if (c<=b) and (a<=d):
        return True
    else:
        return False

print(interval_intersect(0,1,1,2))
print(interval_intersect(1,2,0,1))
print(interval_intersect(0,1,2,3))
print(interval_intersect(2,3,0,1))
print(interval_intersect(0,3,1,2))

