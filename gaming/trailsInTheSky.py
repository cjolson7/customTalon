from talon import Module, actions, ctrl
module = Module()

@module.action_class
class Actions:
    def keep_going(number: int):
        """hit space X times"""
        for i in range(number):
            actions.key("space")