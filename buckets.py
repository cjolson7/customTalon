from talon import Module, actions

module = Module()

@module.action_class
class Actions:
    def category_next(name: str, number: int, down: bool):
        """completes one category and moves to the next, with optional word input"""
        if name != "invalid": actions.insert(name) 
        actions.user.variable_wait(300)
        actions.key("enter:2")
        actions.user.variable_wait(600)
        actions.user.check_next(number, down)
        
    def check_next(number: int, down: bool):
        """mouse movement of a specific size with a click at the end, optimized for buckets app"""
        #set up or down separately from number, easier to input^
        if down: direction = 1
        else: direction = -1
        actions.user.mouse_hop(0, 25*number*direction)
        actions.user.variable_wait(100)
        actions.mouse_click(0)