import math
import random


def volume_cube(side):
    return side*3

s = 2
print("Volume of a cube with side", s, 'is', volume_cube(s))

def random_dice():
    die1 = random.randrange(1,7)
    die2 = random.randrange(1,7)

    return die1+die2

print("The sum of two random dice, rolled once:" , random_dice())
print("The sum of two random dice, rolled twice:" , random_dice())
print("The sum of two random dice, rolled three times" , random_dice())

def volume_sphere(radius):
    a = 4/3*math.pi*(radius**3)
    return a

r =2
print('Volume of sphere of radius',r,'is', volume_sphere(r),'.')

def area_triangle(base,height):
    a = 1/2*base*height
    return a

b = 5
h = 2+2
print('Area of triangle with base',b,'and height',h,'is',area_triangle(b,h))

def is_Mary(x):
    if x == 'Mary':
        print('Found Mary')
    else:
        print('No Mary')

is_Mary('Mary')
is_Mary('Fred')

def area(side1, side2, side3):
    """"
    Returns the area of a triangle, given the lengths of is three
    sides.
    """
    # Heron's Formula
    semi_perimeter = (side1 + side2 + side3)/2
    Area = math.sqrt((semi_perimeter*
                      (semi_perimeter-side1)*
                      (semi_perimeter-side2)*
                      (semi_perimeter-side3)))
    return Area

def favorite(instructor):
    """
    Returns the favorite thing of the given instructor
    :param instructor:
    :return:
    """

    if instructor == 'Joe':
        return 'Games'
    elif instructor =='Scott':
        return 'ties'
    elif instructor == 'John':
        return 'Outdoors'
    else:
        return print('Favorites saw invalid instructor',instructor)

print(favorite('John'))
print(favorite('Jeannie'))