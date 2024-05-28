function writer <user.function_writer>:
   "{function_writer}()"
   key(left)  

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
command maker <user.text>: user.click_command_writer(user.text)