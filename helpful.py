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

#helper functions
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

    def move_and_click(x: int, y: int):
        """Move to the indicated coordinates and click after a brief wait.
           Simplifies talon files and makes click wait consistent."""
        ctrl.mouse_move(x, y)
        actions.mouse_click(0)
        return

    def click_command_writer(name: str):
        """
        Copies to the keyboard a short talon script to click the current mouse position
        """
        position_x = actions.mouse_x()
        position_y = actions.mouse_y()
        
        #allows nameless command for complex command writing given input "nothing"
        if name == "nothing": name=""
        else: name+=": "

        output = name+"user.move_and_click({position_x}, {position_y})".format(position_x=position_x, position_y=position_y)
        pyperclip.copy(output)
        return
    