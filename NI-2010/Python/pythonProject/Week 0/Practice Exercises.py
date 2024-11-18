# -*- coding: utf-8 -*-
"""
Created on Mon Oct 28 08:47:36 2024

@Corey Sweatt 10/28/2024: 220038920
"""

#Practice Exercises for Expressions 

# Problem 1: There are 5280 feet in a mile. Write a Python statement that
# calculates and prints the number of feet in 13 miles.

print(13*5280)

# Problem 2: Write a Python statement that calculates and prints the number
# of seconds in 7 hours, 21 minutes and 37 seconds

print((7*60*60)+(21*60)+37)

# Problem 3: he perimeter of a rectangle is 2w+2h where 
# w and h are the lengths of its sides. Write a Python statement that
# calculates and prints the length in inches of the perimeter of a
# rectangle with sides of length 4 and 7 inches.

print((2*4)+(2*7))

# Problem 4
# The area of a rectangle is wh, where w and h are the lengths of its sides.
# Note that the multiplication operation is not shown explicitly in this
# formula. This is standard practice in mathematics, but not in programming.
# Write a Python statement that calculates and prints the area in square
# inches of a rectangle with sides of length 4 and 7 inches.

print(4*7)

# Problem 5
# The circumference of a circle is 2πr where r is the radius of the circle.
# Write a Python statement that calculates and prints the circumference in
# inches of a circle whose radius is 8 inches. Assume that the constant 
# π=3.14 

print(2*3.14*8)

# Problem 6
# The area of a circle is πr**2 where r is the radius of the circle.
# (The raised 2 in the formula is an exponent.) Write a Python statement
# that calculates and prints the area in square inches of a circle whose
# radius is 8 inches. Assume that the constant π=3.14

print(3.14*8**2)

# Problem 7
# Given p dollars, the future value of this money when compounded yearly at
# a rate of r percent interest for y years is p(1+0.01r)**y
# Write a Python statement that calculates and prints the value of 1000
# dollars compounded at 7 percent interest for 10 years

p=1000
r=7
y=10

print(p*(1+0.01*r)**y)

# Problem 8
# Write a single Python statement that combines the three strings 
#"My name is" "Joe" and "Warren" (plus a couple of other small strings)
# into one larger string "My name is Joe Warren." and prints the result.

print("My name is", "Joe", "Warren", "How are you")

# Problem 9
# Write a Python expression that combines the string
# "Joe Warren is 52 years old." from the string "Joe Warren" and the number 
# 52 and then prints the result (Hint: Use the function str to convert the
# number into a string.)


print("Joe Warren is",str(52),"years old")

# Problem 10
# The distance between two points (x0,y0) and (x1,y1) is 
# sqrt((x0-x1)**2+(y0-y1)**2). Write a Python statement that calculates
# and prints the distance between the points (2,2) and (5,6).

x0 = 2
y0 = 2
x1 = 5
y1 = 6

distance = ((x0-x1)**2+(y0-y1)**2)**0.5

print(float(distance))
print(int(distance))







