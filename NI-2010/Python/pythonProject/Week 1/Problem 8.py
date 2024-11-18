"""
Problem 8:
Write a Python function name_lookup that takes a string first_name that corresponds to one
of ("Joe", "Scott", "John" or "Stephen") and then returns their corresponding last name
("Warren", "Rixner", "Greiner" or "Wong"). If first_name doesn't match any of those strings,
return the string "Error: Not an instructor".

"""

def name_loopup(first_name):
    if (first_name == 'Joe'):
        return 'Warren'
    elif (first_name == 'Scott'):
        return 'Rixner'
    elif (first_name == 'John'):
        return 'Greiner'
    elif (first_name == 'Stephen'):
        return 'Wong'
    else:
        return 'Error: Not an instructor'

print(name_loopup('Joe'))
print(name_loopup('Scott'))
print(name_loopup('John'))
print(name_loopup('Stephen'))

