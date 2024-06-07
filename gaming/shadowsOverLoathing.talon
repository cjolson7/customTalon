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

#inventory categories by name
categories: user.move_and_click(1185, 105)
category <user.inventory_categories>: 
   user.move_and_click(1185, 105)
   user.move_and_wait_and_click(1190, user.inventory_categories)

#combat
skill one: user.move_and_click(145, 835)
skill two: user.move_and_click(250, 835)
skill three: user.move_and_click(355, 835)
skill four: user.move_and_click(460, 835)
skill five: user.move_and_click(565, 835)
skill six: user.move_and_click(670, 835)
skill seven: user.move_and_click(775, 835)
skill eight: user.move_and_click(880, 835)
skill nine: user.move_and_click(985, 835)
skill ten: user.move_and_click(1090, 835)
item one: user.move_and_click(145, 955)
item two: user.move_and_click(250, 955)
item three: user.move_and_click(355, 955)
item four: user.move_and_click(460, 955)
item five: user.move_and_click(565, 955)
item six: user.move_and_click(670, 955)
item seven: user.move_and_click(775, 955)
item eight: user.move_and_clickv880, 955)
item nine: user.move_and_click(985, 955)
item ten: user.move_and_click(1090, 955)
item eleven: user.move_and_click(1195, 955)
scroll items left: user.move_and_click(245, 1010)
scroll items right: user.move_and_click(1245, 1010)

#movement
bus stop: key(b)
#movement command takes a direction (or several) and a time to walk in multiples of 200ms
#movements of the same variable length
[walk] <user.arrow_keys> <number>: user.variable_walk(arrow_keys, number)
#long movements
walk <user.arrow_keys>: user.variable_walk(arrow_keys, 20)
#chain of small movements
bump <user.arrow_keys>: user.variable_walk(arrow_keys, 1)
#emergency halt command in case an error leaves a thing pressed down
halt movement: key(up-down-left-right)

#dialogue
accept: "1"

#shop
shop sell: user.move_and_click(315, 225)
shop buy: user.move_and_click(1515, 255)