# -*- coding: utf-8 -*-
"""
Created on Fri Oct 25 08:21:11 2024

@author: 220038920
"""

#for i in range(1, 6):
 #   print(i)

#count = 5
#while count>0:
 #   print(count)
  #  count-=1
   
# A functin to greet someone
#def greet(name,name2):
#    print("Hello,",name)
#    print("Hello,",name2)
#    print(f"Hello,{name} and {name2}")
    
#greet("Alice","Jim")

#A function to add two numbers
#def add(a,b):
#    return a+b

#result =add(3,4)
#print(f"The sum is, {result}")

#Create a list of fruits
#fruits = ["apple","cherry","banana"]
#print(fruits) 

#Add an item to the list
#fruits.append("orange")
#print(fruits)

#Access elements by index
#print(fruits[0]) #First Element
#print(fruits[-1]) # Last Element

#Loop through the list
#for fruit in fruits:
#    print(fruit)

#Create a dictionary of student details
#student = {
#    "name":"Alice",
#    "age": 25,
#    "courses":["Math","Science"]
#    }
#print(student)

# Access the data by key
#print(student["name"])
#print(student["courses"])

#Add a new key value pair
#student["grade"]="A"
#print(student)

# Access another key
#print(student["grade"])

#Open a file in write mode and add text to it
#with open("example.txt","w") as file:
# file.write("Hello, this is a file. \n")
# file.write("Python is awesome")
 
# Open a file in read mode and display its content
#with open("example.txt","r") as file:
 #   content = file.read()
  #  print(content)
   

#try:
#    num = int(input("Enter a number:"))
#    print(f"You entered: {num}")
#except ValueError:
#    print("Invalid input")
    
    
#try:
#    a=int(input("Enter a number"))
#    b=int(input("Enter another number"))
#    result = a/b
#    print("Result ",result)
    
#except ValueError:
#        print("Invalid input")
#except ZeroDivisionError:
#        print("Cannot divide by zero")
   
# Define a class named Car
class Car:
    def __init__(self, brand,model,year):
        self.brand = brand
        self.model = model
        self.year = year
        
    def display_info(self):
            print(f"{self.year} {self.brand} {self.model}")
            
# Create an object of the car class
my_car = Car("Toyota","Camry",2020)
my_car.display_info()  #Call the method to display car information








    
      

        