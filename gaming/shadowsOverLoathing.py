from talon import Module, actions, Context

module = Module()
context = Context()
context.matches = r"""
app: Shadows Over Loathing.exe 
"""

down_letters = {
     'up': 's',
     'left': 'd',
     'down': 'w',
     'right': 'a'
}

up_letters = {
     'up': 'w',
     'left': 'a',
     'down': 's',
     'right': 'd'
}

@module.action_class
class Actions:
    def variable_walk(word: str, number: int = 1):
        """
        Turns a direction and a number into a walk command in that direction for that many hundreds of milliseconds 
        """
        down_letter=down_letters[word]
        up_letter=up_letters[word]

        actions.key("{down_letter}:up".format(down_letter=down_letter))
        actions.key("{up_letter}:down".format(up_letter=up_letter))
        actions.sleep(str(number * 200) + "ms")
        actions.key("{up_letter}:up".format(up_letter=up_letter))