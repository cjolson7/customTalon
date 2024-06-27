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
def key_up(letter): actions.key("{letter}:up".format(letter=letter))

@module.action_class
class Actions:
    def variable_walk(words: str, number: float = 1):
        """
        Turns a direction (or several directions) and a number into a walk command in those directions for that many hundreds of milliseconds 
        """
        #prevent excessively long movements due to mishearing
        number = actions.user.number_cap(number, 50)

        direction_list = words.split(" ")
        letter_list = list(map(up_letters.get, direction_list))

        for i in range(len(letter_list)):
            letter = letter_list[i]
            key_down(letter)
            actions.user.variable_wait(number*100)#convert to milliseconds
            key_up(letter)
            
    def diagonal_walk(words: str, number: float = 1):
        """
        Turns the direction into a diagonal walk command using pairs of directions 
        """
        #prevent excessively long movements due to mishearing
        number = actions.user.number_cap(number, 50)

        direction_list = words.split(" ")
        letter_list = list(map(up_letters.get, direction_list))

        #hold down pairs
        for i in range(math.floor(len(letter_list)/2)):
            letter_1 = letter_list[2*i]
            letter_2 = letter_list[2*i+1]
            key_down(letter_1)
            key_down(letter_2)
            actions.user.variable_wait(number*100)#convert to milliseconds
            key_up(letter_1)
            key_up(letter_2)

        #true or false based on whether the number is odd - if it is, do one last normal movement
        last_one = (len(letter_list)%2) == 1
        if last_one: 
            key_down(letter_list[-1])
            actions.user.variable_wait(number*100)#convert to milliseconds
            key_up(letter_list[-1])

    def arrow_wasd_translate(words: str):
        """
        Converts an string of arrow keys into a string of wasd letters for use in other commands.
        """
        direction_list = words.split(" ")
        letter_list = list(map(up_letters.get, direction_list))
        letter_string = " ".join(letter_list)
        return letter_string