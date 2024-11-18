"""
Problem 6:
Write a Python function name_and_age that takes as input the parameters name (a string)
and age (a number) and returns a string of the form "% is % years old." where the
percents are the string forms of name and age. The function should include an error check
for the case when age is less than zero. In this case, the function should return the string
"Error: Invalid age".

"""

def name_and_age(name,age):
    ''' Returns a string stating the persons age'''
    if age > 0:
        print(name,'is ',str(age),'years old')
    else:
        print('Error: Invalid age')

name_and_age('Corey',39)
name_and_age('Corey',-1)