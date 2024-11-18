"""
Problem 1:
Write a Python function
is_even that takes as input the parameter number (an integer)
and returns True if number is even and False if number is odd.
Hint: Apply the remainder operator to n (i.e.,number % 2) and
compare to zero
"""

def is_even(number):
   # Check if the value is even or not.
    if number % 2 == 0:
        return "True"
    else:
        return "False"

number = 6
Status = is_even(number)
print("The number is Even? ",Status)

# Problem 2
def is_cool(name):
    # Check for the proper names
    if name == 'Joe':
        return True
    elif name == 'John':
        return True
    elif name == 'Stephen':
        return True
    else:
        return False
name = 'Joe'
print('You have entered a proper name ',is_cool(name))

# Problem 3

