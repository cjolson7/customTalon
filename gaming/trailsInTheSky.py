from talon import Module, actions, ctrl
module = Module()

up_letters = {
     'up': 'w',
     'left': 'a',
     'down': 's',
     'right': 'd'
}

@module.action_class
class Actions:
    def keep_going(number: int):
        """hit space X times"""
        for i in range(number):
            actions.key("space")
            actions.user.variable_wait(100)

    def arrow_fix(keys: str):
        """single key taps for menu navigation"""
        
        direction_list = words.split(" ")
        letter_list = list(map(up_letters.get, direction_list))
        
        for key in keys: 
            actions.key(up_letters[key])