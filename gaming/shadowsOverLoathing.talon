os: windows
app: Shadows Over Loathing.exe
-
settings():
    key_wait = 144

#basic interaction 
interact: key(e)
(action|wander): key(space)

#menus 
[open] character: key(c)
[open] inventory: key(i)
[open] map: key(m)
[open] journal: key(t)
[open] overlay: key(h)
[open] options: key(o)
(menu close|close menu): key(x)

#menu navigation
next category:"["
(prev|prove|previous) category:"]"
skill menu: user.move_and_click(585, 315)
next [section]: key(tab)
(prev|prove|previous) [section]: key(shift-tab)

#combat
skill one: user.move_and_click(145, 835)
skill two: user.move_and_click(250, 835)
skill three: user.move_and_click(355, 835)
skill four: user.move_and_click(460, 835)
skill five: user.move_and_click(565, 835)
skill six: user.move_and_click(670, 835)
item one: user.move_and_click(145, 955)
item two: user.move_and_click(250, 955)
item three: user.move_and_click(355, 955)
item four: user.move_and_click(460, 955)
item five: user.move_and_click(565, 955)
item six: user.move_and_click(670, 955)

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
accept: "1"

#shop
shop sell: user.move_and_click(315, 225)
shop buy: user.move_and_click(1515, 255)