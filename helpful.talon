#this is a place to put personal unique commands that should be available in all modes, even gaming-specific ones, and all operating systems
mode: command
mode: user.trails_mode
speech.engine: wav2letter
-

#pure wait command for command cadence management
pause [<number>]: user.limited_wait(number or 1)

#mouse hop commands for mouse movement by pixel.   
#defaults
mouse hop left: user.mouse_hop(-1*10, 0)
mouse hop right: user.mouse_hop(10, 0)
mouse hop down: user.mouse_hop(0, 10)
mouse hop up: user.mouse_hop(0, -1*10)
#variable
[mouse] hop left <number>: user.mouse_hop(-1*number, 0)
[mouse] hop right <number>: user.mouse_hop(number, 0)
[mouse] hop down <number>: user.mouse_hop(0, number)
[mouse] hop up <number>: user.mouse_hop(0, -1*number)
#diagonals
[mouse] hop up left <number>: user.mouse_hop(-1*number, -1*number)
[mouse] hop up right <number>: user.mouse_hop(number, -1*number)
[mouse] hop down left <number>: user.mouse_hop(-1*number, number)
[mouse] hop down right <number>: user.mouse_hop(number, number)

#function helper
[click] command maker <user.text>: user.click_command_writer(user.text)
move command maker <user.text>: user.move_command_writer(user.text)
wait command maker <user.text>: user.pause_and_click_command_writer(user.text)
game command maker <user.text>: user.game_command_writer(user.text) 

#long click for when click is being fucky
long touch: user.long_click(0, 300) 

#scrolling
(very|variable) scroll: user.mouse_scroll_down_continuous(40)
(very|variable) scroll up: user.mouse_scroll_down_continuous(-40)
(very|variable) scroll <number>: user.mouse_scroll_down_continuous(1*number)
(very|variable) scroll up <number>: user.mouse_scroll_down_continuous(-1*number)
