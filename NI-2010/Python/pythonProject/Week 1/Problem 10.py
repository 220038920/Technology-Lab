"""
Problem 10:
Challenge: Given numbers a, b, and c, the quadratic equation ax^2 + bx + c = 0
can have zero, one, or two real solutions (i.e., values for x that satisfy the equation).

The quadratic formula is:
x = (-b ± sqrt(b^2 - 4ac)) / (2a)

The expression b^2 - 4ac is called the discriminant.

If the discriminant is positive, the equation has two real solutions.
If the discriminant is zero, the equation has one real solution.
If the discriminant is negative, the equation has no real solutions.

Write a Python function named `smaller_root` that takes as input the numbers a, b, and c,
and returns the smaller solution to the equation if it exists.

If the equation has no real solutions, the function should print:
"Error: No real solutions"

In this case, the function will return the special Python value None.

"""
import math

def smaller_root(a, b, c):
     discriminant = b**2-4*a*c
     if discriminant < 0 or a==0:
         print('Error: No real solutions')
         return None
     discriminant_sqrt = math.sqrt(discriminant)
     root1 = (-b + math.sqrt(discriminant))/ (2*a)
     root2 = (-b - math.sqrt(discriminant)) / (2 * a)
     return min(root1,root2)

print(smaller_root(1,2,3))
print(smaller_root(2,0,-10))
print(smaller_root(6,-3,5))

