from talon import Module, Context

module = Module()
context = Context()
context.matches = r"""
app: Shadows Over Loathing.exe 
"""

category_names = ['everything', 'hats', 'weapons', 'offhand', 'accessories', 'rings', 'pants', 'shoes', 'familiars', 'food', 'potions', 'combat', 'quests', 'books', 'misc']
context.lists["user.inventory_categories"] = category_names #provide list to talon for commands

module.list("inventory_categories", desc="List of inventory categories in order")
@module.capture(rule=("{user.inventory_categories}"))
def inventory_categories(m) -> int:
    return (category_names.index(str(m))*36+136)