tag: user.flex_mouse_grid_showing
-

[grid] stop: user.flex_grid_deactivate()
grid larger: user.flex_grid_adjust_size(5)
grid larger bump: user.flex_grid_adjust_size(1)
redraw grid: user.flex_grid_show_grid()

drag until <user.letter> <user.letter> <number>: user.grid_drag(letter_1, letter_2, number)
drag until [<number>] <user.letter> [<user.letter>]: user.grid_drag(letter_1, letter_2 or "", number or 0)