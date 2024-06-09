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
item eight: user.move_and_click(880, 955)
item nine: user.move_and_click(985, 955)
item ten: user.move_and_click(1090, 955)
item eleven: user.move_and_click(1195, 955)
scroll items left: user.move_and_click(245, 1010)
scroll items right: user.move_and_click(1245, 1010)

#movement
bus stop: key(b)

#dialogue
accept: "1"

#shop
shop sell: user.move_and_click(315, 225)
shop buy: user.move_and_click(1515, 255)

#robot programming (specific minigame, not otherwise needed)  
    #robot right: user.move_and_click(926, 675)
    #robot up: user.move_and_click(1026, 555)
    #robot down: user.move_and_click(1026, 805)
    #top tool: user.move_and_click(876, 555)
    #bottom tool: user.move_and_click(876, 805)