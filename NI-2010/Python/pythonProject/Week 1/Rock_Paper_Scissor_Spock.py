# Rock paper scissors lizard spock template
import random


# The key idea of this program is to equate the strings
# rock, paper, scissors, lizard, spock to numbers
# as follows:

# 0 - rock
# 1 - Spock
# 2 - paper
# 3 - lizard
# 4 - scissors

# helper functions

def name_to_number (name):
    # convert name to number using if/elif/else

    if name == 'rock':
        return 0
    elif name == 'Spock':
        return 1
    elif name == 'paper':
        return 2
    elif name == 'lizard':
        return 3
    elif name == 'scissors':
        return 4
    else:
        return None

def number_to_name(number):
    # convert number to a name using if/elif/else
    if number == 0:
        return 'rock'
    elif number == 1:
        return 'Spock'
    elif number == 2:
        return 'paper'
    elif number == 3:
        return 'lizard'
    elif number == 4:
        return 'scissors'
    else:
        return None

def rpsls(player_choice):
    # print a blank line to separate consecutive games
    print("")

    # print out the message for the player's choice
    print('The players choice is',player_choice)

    # convert the players choice to player number using the function name_to_number
    player_number = name_to_number(player_choice)

    # compute random guess for comp_number using random.randrange()
    comp_number = random.randrange(0,4)

    #convert comp_number to comp_choice using the function number_to_name()
    comp_choice = number_to_name(comp_number)

    # print out the message for the computers choice
    print('The computers choice is',comp_choice)

    # compute the difference of the comp_number and the player_number modulo 5
    difference = (comp_number - player_number) % 5

    # use if/elif/else to determine winner, print winner message
    if difference in [1,2]:
        print('The computer wins')
    elif difference in [3,4]:
        print('The player wins')
    else:
        print('This was a tie')


# test the code
rpsls('rock')
rpsls('Spock')
rpsls('paper')
rpsls('lizard')
rpsls('scissors')


