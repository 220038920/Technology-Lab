# -*- coding: utf-8 -*-
"""
Created on Mon Oct 28 10:07:20 2024

@Corey Sweatt: 220038920
"""


#Problem 1

miles = 1
feet = 5280

print(str(miles), "mile equals", str(feet),"feet")

# Problem 2

hours = 1
minutes = 1
seconds = 1

total_seconds = (hours*60*60)+(minutes*60)+(seconds)

print(total_seconds)

#Problem 3

width = 2
length =2

perimeter = 2*width + 2*length
print(perimeter)

# Problem 4

width = 2
length =2

area = width*length
print(area)

# Problem 5

pi = 3.14
radius = 5

circumference = 2*pi*radius
print(circumference)

# Problem 6

pi = 3.14
radius = 5

area_circle = pi*radius**2
print(area_circle)

# Problem 7

p=1000
r=7
y=10

print(p*(1+0.01*r)**y)

# Problem 8

name = "Corey"
age = 39

print("My name is {} {}".format(name,age))
print(f"My name is {name} {age}")
print("My name is "+name+" "+ str(age))

# Problem 9

name = "Corey"
age = 39

# Using % formatting
print("My name is %s %d" %(name,age))

#Problem 10

x0 = 2
y0 = 2
x1 = 5
y1 = 6

distance = ((x0-x1)**2+(y0-y1)**2)**0.5

print(float(distance))
print(int(distance))

# Problem 11

x0,y0 = 0,0
x1,y1 = 3,4
x2,y2 = 1,1


a = ((x0-x1)**2+(y0-y1)**2)**0.5
b = ((x0-x2)**2+(y0-y2)**2)**0.5
c = ((x1-x2)**2+(y1-y2)**2)**0.5
s = 1/2*(a+b+c)
area_s = (s*(s-a)*(s-b)*(s-c))**0.5

print(area_s)








