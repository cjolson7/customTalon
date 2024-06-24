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
            
    def click_and_act(x: int, y: int):
        """click at the coordinates and then do an interact action"""
        actions.user.long_click_at_location(x, y, 0, 300)
        actions.key("space")

    def interact_command_maker(name: str):
        """create a click and act command based on the current mouse coordinates"""
        actions.user.command_writer(name, "user.click_and_act")
    
    def winding_path_home():
        """walk home on the winding path"""
        actions.key("tab:down")
        actions.user.diagonal_walk("up", 32)
        actions.user.diagonal_walk("left", 7)
        actions.user.diagonal_walk("down left", 4)
        actions.user.diagonal_walk("up left up", 3)
        actions.user.diagonal_walk("up right", 4)
        actions.user.diagonal_walk("up", 30)
        actions.key("tab:up")
        actions.user.variable_wait(500)

    def winding_path_back():
        """walk back towards town on the winding path"""
        actions.key("tab:down")
        actions.user.diagonal_walk("down", 40)
        actions.user.diagonal_walk("up right", 5)
        actions.user.diagonal_walk("right", 5)
        actions.user.diagonal_walk("down", 30)
        actions.user.diagonal_walk("right", 20)
        actions.key("tab:up")
        
    def bedtime_for_bracers():
        """go home to bed"""
        actions.key("tab:down")
        actions.user.diagonal_walk("left", 3)
        actions.user.diagonal_walk("up", 35)
        actions.user.variable_walk("up right", 2)
        actions.user.diagonal_walk("right up", 8)
        actions.user.diagonal_walk("up left", 2)
        actions.user.variable_walk("left up left", 2)
        actions.user.variable_walk("up", 1)
        actions.key("tab:up")
        actions.user.variable_walk("right", 1)
        actions.key("space:2")

    def wake_time_for_bracers():
        """get out of bed and go back to the path"""
        actions.key("tab:down")
        actions.user.diagonal_walk("right", 5)
        actions.user.diagonal_walk("down", 3)
        actions.user.diagonal_walk("up right", 4)
        actions.user.diagonal_walk("down left", 5)
        actions.user.diagonal_walk("down", 3)
        actions.user.variable_wait(1000)
        actions.key("x")
        actions.user.diagonal_walk("down", 33)
        actions.key("tab:up")
        actions.user.variable_wait(500)