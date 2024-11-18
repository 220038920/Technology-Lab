# -*- coding: utf-8 -*-
"""
Created on Mon Oct 28 11:43:34 2024

@Corey Sweatt: 220038920
"""

# Problem 1: 
    
def miles_to_feet(miles):
    feet = 5280*miles
    return feet

a = miles_to_feet(5)
print(a)

# Problem 2

def total_seconds(hours, minutes, seconds):
    a1 = hours*60*60
    b1 = minutes*60
    c1 = seconds
    totalsec = a1+b1+c1
    return totalsec

a2 = total_seconds(5, 35, 10)

print(a2)

# Problem 3

def rectangle_perimeter(width,height):
    perimeter = 2*width+2*height
    return perimeter

a3 = rectangle_perimeter(2, 2)
print(a3)

# Problem 4

def rectangle_area(width,height):
    area = width*height
    return area

a4 = rectangle_area(2,2)
print('A4 =',a4)

# Problem 5
def circle_circumference(radius):
    circumference = 2*3.14*radius
    return circumference

a5 = circle_circumference(4)
print('A5 =',a5)

# Problem 6
def circle_area(radius):
    area = 3.14*radius**2
    return area
a6 = circle_area(3)
print("A6 = ",a6)

# Problem 7
def future_value(present_value, annual_rate, years):
    value = present_value*(1+0.01*annual_rate)**years
    return value

a7 = future_value(1000,7,10)
print("A7 = ",a7)

# Problem 8
def name_tag(first_name,last_name):
    return print("My name is "+first_name+" "+last_name)
a7 = name_tag("Corey","Sweatt")

# Problem 9
def name_age(first_name, age):
    return print(first_name + " is "+str(age)+" years old")

a8 = name_age("Corey",39)

# Problem 10
def point_distance(x0,y0,x1,y1):
    a10 = ((x0 - x1) ** 2 + (y0 - y1) ** 2) ** 0.5
    return a10

def test(x0,y0,x1,y1):
    print("The distance from ("+str(x0)+","+str(y0)+") to " + "(" + str(x1) + "," + str(y1) + ") is " + str(point_distance(x0,y0,x1,y1)) + ".")

test(2,2,5,6)
test(1,1,2,2)

#Problem 11

def point_distance1(x0,y0,x1,y1):
    a11 = ((x0 - x1) ** 2 + (y0 - y1) ** 2) ** 0.5
    return a11

def triangle_area(x0,y0,x1,y1,x2,y2):
    # Compute the length of each side
    a = point_distance1(x0, y0, x1, y1)
    b = point_distance1(x0, y0, x2, y2)
    c = point_distance1(x1, y1, x2, y2)

    # Compute the semi-perimeter length
    s = (a+b+c)/2

    # Compute the area according to Heron's formula
    d = (s * (s - a) * (s - b) * (s - c)) ** 0.5
    return d

def test1(x0,y0,x1,y1,x2,y2):
    return print(str(triangle_area(x0,y0,x1,y1,x2,y2)))

test1(0,0,3,4,1,1)

# Problem 12

def print_digits(number):
    print("The tens digit is "+str(number // 10)+" and the ones digit is " + str(number % 10))

print_digits(45)
print_digits(100)
print_digits(125)

# Problem 13

import random
def powerball():
    # Prints powerball lottery numbers
    Num1 = random.randrange(1,60)
    Num2 = random.randrange(1,60)
    Num3 = random.randrange(1,60)
    Num4 = random.randrange(1, 60)
    Num5 = random.randrange(1, 60)
    Num6 = random.randrange(1, 36)

    print("Today's numbers are " + str(Num1)+","+str(Num2)+","+str(Num3)+","+str(Num4)+", and "+str(Num5)+". The Powerball number is "+str(Num6))


powerball()
powerball()
powerball()


















