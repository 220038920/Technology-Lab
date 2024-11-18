# -*- coding: utf-8 -*-
"""
Created on Mon Oct 28 10:48:30 2024

@author: 220038920
"""

# compute the area of a triangle
def triangle_area(base,height):
    area = (1/2)*base*height
    return area

a1 = triangle_area(3, 8)
print(a1)

a2 = triangle_area(14, 2)
print(a2)


# converts f to c
def FtoC(f):
    c = 5/9*(f-32)
    return c

# Test Function
c1 = FtoC(32)
c2 = FtoC(212)

print(c1)
print(c2)

# convert F to K

def FtoK(f):
    c=FtoC(f)
    k=c+273.15
    return k

k1 = FtoK(32)
k2 = FtoK(212)

print(k1)
print(k2)

# Prins hello, world

def hello():
    print("Hello World")

# Test
hello()

h = hello()
print(h)



