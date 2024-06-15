os: windows
speech.engine: wav2letter
mode: command
app: The Legend of Heroes: Trails in the Sky
-
settings():
    key_wait = 200

#dialogue control
(interact|confirm): key(space)
continue [<number>]: user.keep_going(number or 20)

#basic controls
(back|menu): key(escape)
rotate left: "z"
rotate right: "x"
toggle walk: key(tab)
world map: "m"
monsters: "n"
recipes: "c"
(cancel|camp): key(ctrl)
turbo mode: key(alt)
zoom minimap: "v"
notebook: "b"
tab memo: user.long_click_at_location(315, 185, 0, 300)
tab Rolent: user.long_click_at_location(315, 345, 0, 300)
show location [<number>]: 
    key(shift:down)
    user.variable_wait(number or 300)
    key(shift:up)

#movements (diagonal default)
[walk] <user.arrow_keys> <number>: user.diagonal_walk(arrow_keys, number)
#long movements
walk <user.arrow_keys>: user.diagonal_walk(arrow_keys, 30)
#chain of small movements
[bump] <user.arrow_keys>: user.diagonal_walk(arrow_keys, 1)

#menu
status: user.long_click_at_location(416, 45, 0, 300)
equip: user.long_click_at_location(586, 45, 0, 300)
orbment: user.long_click_at_location(756, 45, 0, 300)
items: user.long_click_at_location(936, 45, 0, 300)
tactics: user.long_click_at_location(1116, 45, 0, 300)
(option|options): user.long_click_at_location(1286, 45, 0, 300)
files: user.long_click_at_location(1456, 45, 0, 300)

#combat
es break one: user.long_click_at_location(165, 885)
es break (to|two): user.long_click_at_location(525, 885)

#rewrites of basic commands
touch: user.long_click(0, 300)
go up: 'w'
go down: 's'
go left: 'a'
go right: 'd'
go up <user.arrow_keys>+: 
    'w'
    user.variable_walk(arrow_keys, 0)
go down <user.arrow_keys>+: 
    's'
    user.variable_walk(arrow_keys, 0)
go left <user.arrow_keys>+: 
    'a'
    user.variable_walk(arrow_keys, 0)
go right <user.arrow_keys>+: 
    'd'
    user.variable_walk(arrow_keys, 0)  

#start up and game management
load game: user.long_click_at_location(1635, 765, 0, 300)
save game: 
    key(escape)
    sleep(100ms)
    user.long_click_at_location(1456, 45, 0, 300)
    key(enter:2)