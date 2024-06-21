app: Google Chat
-

#basic navigation
spaces: user.move_and_click(105.0, 675.0)
DMs: user.move_and_click(105.0, 350.0)
history: user.move_and_click(1000, 350.0)

#go up and down channels
(nav|nave|channel) down: 
    user.mouse_hop(0, 25)
    mouse_click(0)
(nav|nave|channel) up: 
    user.mouse_hop(0, -25)
    mouse_click(0)
(nav|nave|channel) down <number>: 
    user.mouse_hop(0, number*30)
    mouse_click(0)
(nav|nave|channel) up <number>: 
    user.mouse_hop(0, number*-30)
    mouse_click(0)