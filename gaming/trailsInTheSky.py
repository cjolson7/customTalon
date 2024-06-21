from talon import Module, actions

module = Module()
module.mode("trails_mode", desc="custom limited multitasking mode to minimize mishearings")

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
        #very important limiter
        if number > 30: number = 30
        for i in range(number):
            actions.key("space")
            actions.user.variable_wait(300)