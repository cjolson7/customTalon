from talon import Module, actions

module = Module()

@module.action_class
class Actions:
    def grid_drag(letter_1: str, letter_2: str, number: int):
        """
            Drags the mouse to a second location on the grid, then releases it.
            Minimum input is one letter.
        """
        actions.user.mouse_drag(0)
        if (number > 0): actions.user.flex_grid_input_partial(number)
        actions.user.flex_grid_input_partial(letter_1)
        if (len(letter_2) > 0): actions.user.flex_grid_input_partial(letter_2)
        actions.user.flex_grid_deactivate()
        actions.sleep("100ms")
        actions.user.mouse_drag_end()