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

category_names = ['everything', 'hats', 'weapons', 'offhand', 'accessories', 'rings', 'pants', 'shoes', 'familiars', 'food', 'potions', 'combat', 'quests', 'books', 'misc']
context.lists["user.inventory_categories"] = category_names #provide list to talon for commands

module.list("inventory_categories", desc="List of inventory categories in order")
@module.capture(rule=("{user.inventory_categories}"))
def inventory_categories(m) -> int:
    return (category_names.index(str(m))*36+136)

# @module.action_class
# class Actions:
#     def variable_walk(words: str, number: int = 1):
#         """
#         Turns a direction (or several directions) and a number into a walk command in those directions for that many hundreds of milliseconds 
#         """
#         direction_list = words.split(" ")
#         letter_list = list(map(up_letters.get, direction_list))

#         for i in range(len(letter_list)):
#             letter = letter_list[i]
#             actions.key("{letter}:down".format(letter=letter))
#             actions.sleep(str(number * 100) + "ms")
#             actions.key("{letter}:up".format(letter=letter))b