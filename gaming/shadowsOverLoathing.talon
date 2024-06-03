app: Shadows Over Loathing.exe
-

#basic interaction 
interact: 
   key(e)
   sleep(100ms)
(action|wander): key(space)

#menus 
[open] character: key(c)
[open] inventory: key(i)
[open] map: key(m)
[open] journal: key(t)
[open] overlay: key(h)
[open] options: key(o)
close menu: key(x)

#combat
(prev|prove|previous) [section]: key(tab)
next [section]: key(shift-tab)
skill one: user.move_and_click(145, 835)
skill two: user.move_and_click(250, 835)
skill three: user.move_and_click(355, 835)
skill four: user.move_and_click(460, 835)

#movement
bus stop: key(b)
#movement command takes a direction and a time to walk in multiples of 200ms
#up to three movements of the same variable length
[walk] <user.arrow_keys> [<user.arrow_keys>] [<user.arrow_keys>] <number>: user.variable_walk(arrow_keys, number)
#up to two long movements
walk <user.arrow_keys> [<user.arrow_keys>]: user.variable_walk(arrow_keys, 10)
#up to three small movements in a row
bump <user.arrow_keys> [<user.arrow_keys>] [<user.arrow_keys>]: user.variable_walk(arrow_keys, 1)

#dialogue
option up: "w"
option down: "s"
accept: "1"