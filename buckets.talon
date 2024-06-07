os: windows
app: Buckets
-

check down: 
    user.mouse_hop(0, 25)
    mouse_click(0)
check up: 
    user.mouse_hop(0, -25)
    mouse_click(0)
check down <number>: 
    user.mouse_hop(0, number*25)
    mouse_click(0)
check up <number>: 
    user.mouse_hop(0, number*-25)
    mouse_click(0)

make it so: user.move_and_click(1613, 197)
previous month: user.move_and_click(1470, 139)
next month: user.move_and_click(1630, 139)