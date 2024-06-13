from talon import Module, actions, ctrl
import pyperclip

module = Module()

#function writer
@module.capture(rule="({user.python_functions}|<phrase>)")
def function_writer(m) -> str:
    # get the first capture
    text = m[0]
    # make every word lower case, and join them by "_"
    return "_".join((word.lower() for word in text.split()))
@module.capture(rule="({user.python_functions}|<phrase>)")
def no_spaces(m) -> str:
    # get the first capture
    text = m[0]
    # make every word lower case, and join them without anything in between 
    return "".join((word.lower() for word in text.split()))

#various talon functions
@module.action_class
class Actions:
    def mouse_hop(amountX: int, amountY: int):
        """Moves the mouse a small amount based on user input."""
        #get current mouse position
        x = actions.mouse_x()
        y = actions.mouse_y()

        #update mouse position
        x += amountX
        y += amountY

        #move mouse
        actions.mouse_move(x, y)

    def variableSleep(number: int = 1):
        """
        Wait 100ms times the input number. Default is 100ms.  
        """
        actions.sleep(str(number * 100) + "ms")
        
    def move_and_click(x: int, y: int):
        """
        Move to the indicated coordinates and click. 
        """
        move_and_click_helper(x, y)
        return
        
    def move_and_wait_and_click(x: int, y: int):
        """
        Move to the indicated coordinates, wait briefly, and click. 
        """
        move_and_click_helper(x, y, 100)
        return

    def move_and_wait_x_and_click(x: int, y: int, time: int):
        """
        Move to the indicated coordinates, wait a provided amount of time in ms, and click. 
        """
        move_and_click_helper(x, y, time)
        return

    def click_command_writer(name: str):
        """
        Copies to the keyboard a short talon script to move to and click the current mouse position
        """
        command_writer(name, "user.move_and_click")
        return

    def pause_and_click_command_writer(name: str):
        """
        Copies to the keyboard a short talon script to move to current mouse position and wait briefly before clicking
        """
        command_writer(name, "user.move_and_wait_and_click")
        return

    def move_command_writer(name: str):
        """
        Copies to the keyboard a short talon script to move to the current mouse position
        """
        command_writer(name, "mouse_move")
        return

def command_writer(name: str, command: str):
        """
        Generalized helper function that given a an output name and a function to implement, copies a line of talon code to the clipboard.       
        """
        position_x = actions.mouse_x()
        position_y = actions.mouse_y()
        
        #allows nameless command for complex command writing given input "nothing"
        if name == "nothing": name=""
        else: name+=": "

        #exact function is based on which function invokes this general one
        output = name+command+"({position_x}, {position_y})".format(position_x=position_x, position_y=position_y)
        pyperclip.copy(output)
        return

def move_and_click_helper(x: int, y: int, time: int=0):
        """Move to the indicated coordinates and click. 
           If a wait time is provided, wait that many milliseconds before moving.
        """
        if time > 0: actions.sleep(str(time) + "ms")
        ctrl.mouse_move(x, y)
        actions.mouse_click(0)
        return