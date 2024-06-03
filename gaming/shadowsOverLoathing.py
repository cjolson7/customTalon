from talon import Module, actions, Context

module = Module()
context = Context()
context.matches = r"""
app: Shadows Over Loathing.exe 
"""

up_letters = {
     'up': 'w',
     'left': 'a',
     'down': 's',
     'right': 'd'
}

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
            actions.key("{letter}:down".format(letter=letter))
            actions.sleep(str(number * 200) + "ms")
            actions.key("{letter}:up".format(letter=letter))