"""
Problem 7:
Write a Python function print_digits that takes an integer number in the range [0, 100)
and prints the message "The tens digit is %, and the ones digit is %." where the
percents should be replaced with the appropriate values. The function should include
an error check for the case when number is negative or greater than or equal to 100.
In those cases, the function should instead print "Error: Input is not a two-digit number.".

"""

def print_digits(number):
    """
    This function prints the 10's and 1's digits if valid
    :param number:
    :return:
    """
    if (number > 0) and (number <=100):
        tens = number // 10
        ones = number % 10
        print('The tens digit is',str(tens),', and the ones digit is',str(ones),'.')
    else:
        print('Error: Input is not a two-digit number')

print_digits(31)
print_digits(3)
print_digits(101)



