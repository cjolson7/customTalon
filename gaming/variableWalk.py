import math
from talon import Module, actions, Context

module = Module()

up_letters = {
     'up': 'w',
     'left': 'a',
     'down': 's',
     'right': 'd'
}

#helper functions
def key_down(letter): actions.key("{letter}:down".format(letter=letter))
def variable_sleep(number): actions.user.variable_wait(100*number) #multiplies the input number by a hundred for convenience of input in increments of 100 milliseconds
def key_up(letter): actions.key("{letter}:up".format(letter=letter))

@module.action_class
class Actions:
    def variable_walk(words: str, number: int = 1):
        """
        Turns a direction (or several directions) and a number into a walk command in those directions for that many hundreds of milliseconds 
        """
        if number > 50: number = 50 #prevent excessively long waits due to mishearing

        direction_list = words.split(" ")
        letter_list = list(map(up_letters.get, direction_list))

        for i in range(len(letter_list)):
            letter = letter_list[i]
            key_down(letter)
            variable_sleep(number)
            key_up(letter)
            
    def diagonal_walk(words: str, number: int = 1):
        """
        Turns the direction into a diagonal walk command using pairs of directions 
        """
        if number > 50: number = 50 #prevent excessively long waits due to mishearing

        direction_list = words.split(" ")
        letter_list = list(map(up_letters.get, direction_list))

        #hold down pairs
        for i in range(math.floor(len(letter_list)/2)):
            letter_1 = letter_list[2*i]
            letter_2 = letter_list[2*i+1]
            key_down(letter_1)
            key_down(letter_2)
            variable_sleep(number)
            key_up(letter_1)
            key_up(letter_2)

        #true or false based on whether the number is odd - if it is, do one last normal movement
        last_one = (len(letter_list)%2) == 1
        if last_one: 
            key_down(letter_list[-1])
            variable_sleep(number)
            key_up(letter_list[-1])