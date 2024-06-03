app: Shadows Over Loathing.exe
-

#basic interaction 
interact: key(e)
(action|wander): key(space)

#menus 
close top right: user.move_and_click(1385, 55)
open character: key(c)
open inventory: key(i)
open map: key(m)
open journal: key(t)
open overlay: key(h)
open options: key(o)
close menu: key(x)
(prev|prove|previous) section: key(tab)
next section: key(shift-tab)

#movement
bus stop: key(b)
#movement command takes a direction and a time to walk in multiples of 200ms
walk <user.arrow_keys> [<number>]: user.variable_walk(arrow_keys, number)
walk <user.arrow_keys>: user.variable_walk(arrow_keys, 10)
bump <user.arrow_keys>: user.variable_walk(arrow_keys, 1)

#dialogue
option up: "w"
option down: "s"
accept: "1"