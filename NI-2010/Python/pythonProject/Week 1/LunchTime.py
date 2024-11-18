# Problem 3
# Compute whether the given time is lunchtime

def is_lunchtime(hour,is_am):
    if (hour == 11 and is_am == True):
        return True
    elif (hour == 12 and is_am == False):
        return True
    else:
        return False

def test(hour,is_am):
    print(hour,end=' '),
    if is_am:
        print('AM',end=' '),
    else:
        print('PM',end=' '),
    if is_lunchtime(hour,is_am):
        print('is lunchtime')
    else:
        print('is not lunchtime')

print(test(11,True))
print(test(12,False))
print(test(11,False))
print(test(12,True))
print(test(1,False))