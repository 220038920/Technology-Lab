# Problem 4
# Check if year is a leap year
def is_leap_year(year):
    """
    Every year that is exactly divisible by four is a leap year,
    except for years that are exactly divisible by 100, but these
    centurial years are leap years if they are exactly divisible
     by 400.
    :param year:
    :return:
    """
    if (year % 400) ==0:
        return True
    elif (year % 100)==0:
        return False
    elif (year % 4) == 0:
        return True
    else:
        return False

def test(year):
    ''' Tests the is_leap_year function'''

    if is_leap_year(year):
        print(year, 'is a leap year')
    else:
        print(year, 'is not a leap year')
test(2000)
test(1996)
test(1800)
test(2013)
test(2024)