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