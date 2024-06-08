import math
from talon import Module, actions, Context

module = Module()
context = Context()
context.matches = r"""
app: Shadows Over Loathing.exe 
app: Hades II 
"""

up_letters = {
     'up': 'w',
     'left': 'a',
     'down': 's',
     'right': 'd'
}

#helper functions
def key_down(letter): actions.key("{letter}:down".format(letter=letter))
def variable_wait(number): actions.sleep(str(number * 100) + "ms")
def key_up(letter): actions.key("{letter}:up".format(letter=letter))

@module.action_class
class Actions:
    def variable_walk(words: str, number: int = 1):
        """
        Turns a direction (or several directions) and a number into a walk command in those directions for that many hundreds of milliseconds 
        """
        direction_list = words.split(" ")
        letter_list = list(map(up_letters.get, direction_list))

        for i in range(len(letter_list)):
            letter = letter_list[i]
            key_down(letter)
            variable_wait(number)
            key_up(letter)
            
    def diagonal_walk(words: str, number: int = 1):
        """
        Turns the direction into a diagonal walk command using pairs of directions 
        """
        direction_list = words.split(" ")
        letter_list = list(map(up_letters.get, direction_list))

        #hold down pairs
        for i in range(math.floor(len(letter_list)/2)):
            letter_1 = letter_list[2*i-1]
            letter_2 = letter_list[2*i]
            key_down(letter_1)
            key_down(letter_2)
            variable_wait(number)
            key_up(letter_1)
            key_up(letter_2)

        #true or false based on whether the number is odd - if it is, do one last normal movement
        last_one = (len(letter_list)%2) == 1
        if last_one: 
            key_down(letter_list[-1])
            variable_wait(number)
            key_up(letter_list[-1])