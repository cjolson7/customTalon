#this is now a custom command mode
it needs explicit entry/exit commands, and reimplementation of at least "again" and ordinals

os: windows
speech.engine: wav2letter
mode: trails_mode
app: The Legend of Heroes: Trails in the Sky
-
settings():
    key_wait = 180

#basic control
(interact|confirm|enter): key(space)
(act|action) <user.arrow_keys>:
    user.variable_walk(arrow_keys, 0)
    key(space)
(back|menu): key(escape)
(cancel|camp): key(ctrl)
continue [<number>]: user.keep_going(number or 10)

#camera and map
(camera|rotate) left: "z"
(camera|rotate) right: "x"
[zoom] minimap: "v"
world map: "m"

#common menus
monsters: "n"
recipes: "c"
turbo mode: key(alt)
show location [<number>]: 
    key(shift:down)
    user.variable_wait(number or 300)
    key(shift:up)


#notebook
notebook: "b"
tab memo: user.long_click_at_location(315, 185, 0, 300)
tab Rolent: user.long_click_at_location(315, 345, 0, 300)

#menu
status: user.long_click_at_location(416, 45, 0, 300)
equip: user.long_click_at_location(586, 45, 0, 300)
orbment: user.long_click_at_location(756, 45, 0, 300)
items: user.long_click_at_location(936, 45, 0, 300)
tactics: user.long_click_at_location(1116, 45, 0, 300)
(option|options): user.long_click_at_location(1286, 45, 0, 300)
files: user.long_click_at_location(1456, 45, 0, 300)
inventory: 
    key(escape)
    sleep(100ms)
    user.long_click_at_location(936, 45, 0, 300)

#shopping 
purchase item: 
    key(space:2)
    sleep(100ms)
    key(w)
    key(space:2)
confirm purchase: 
    key(space)
    sleep(100ms)
    key(w)
    key(space:2)

#movements (diagonal default)
[walk] <user.arrow_keys> <number>: user.diagonal_walk(arrow_keys, number)
#long movements
walk <user.arrow_keys>: user.diagonal_walk(arrow_keys, 30)
#automatic run
run <user.arrow_keys>: 
    key(tab:down)
    user.diagonal_walk(arrow_keys, 30)
    key(tab:up)
run <user.arrow_keys> [<number>]: 
    key(tab:down)
    user.diagonal_walk(arrow_keys, number)
    key(tab:up)
#chain of small movements
bump <user.arrow_keys>: user.diagonal_walk(arrow_keys, 1)
toggle run: key(tab:down)
toggle (run off|walk): key(tab:up)


#combat
punch that:
    user.long_click_at_location(1677, 270, 0, 300)
    user.keep_going(2) 
choose attack: user.long_click_at_location(1677, 270, 0, 300)
choose move: user.long_click_at_location(1677, 320, 0, 300)
choose art: user.long_click_at_location(1695, 415, 0, 300)
choose craft: user.long_click_at_location(1677, 490, 0, 300)
choose item: user.long_click_at_location(1677, 570, 0, 300)
choose run: mouse_move(1672, 620)
[es] break one: "1"
[es] break (to|two): "2"
[es] break three: "3"
[es] break (for|four): "4"
end combat: user.keep_going(4)

#start up and game management
load game: user.long_click_at_location(1635, 765, 0, 300)
save game: 
    key(escape)
    sleep(100ms)
    user.long_click_at_location(1456, 45, 0, 300)
    key(enter:2)

#rewrites of basic commands
touch: user.long_click(0, 300)
#I swear it has to be like this, talon requires you to be really explicit to overwrite those because they themselves are based on a list
go up: 'w'
go down: 's'
go left: 'a'
go right: 'd'
#common mishearing
caret: 'd'
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

winding path home: 
    key(tab:down)
    user.diagonal_walk("up", 32)
    user.diagonal_walk("left", 7)
    user.diagonal_walk("down left", 4)
    user.diagonal_walk("up left up", 3)
    user.diagonal_walk("up right", 4)
    user.diagonal_walk("up", 30)
    key(tab:up)

winding path back: 
    key(tab:down)
    user.diagonal_walk("down", 40)
    user.diagonal_walk("up right", 5)
    user.diagonal_walk("right", 5)
    user.diagonal_walk("down", 30)
    key(tab:up)
    
bedtime for bracers:
    key(tab:down)
    user.diagonal_walk("left", 3)
    user.diagonal_walk("up", 35)
    user.variable_walk("up right", 1)
    user.diagonal_walk("right up", 8)
    user.diagonal_walk("up left", 1)
    user.variable_walk("left up left", 2)
    user.variable_walk("up", 1)
    key(tab:up)
    user.variable_walk("right", 1)
    key(space:2)
    
wake time for bracers:
    key(tab:down)
    user.diagonal_walk("right", 5)
    user.diagonal_walk("down", 3)
    user.diagonal_walk("up right", 4)
    user.diagonal_walk("down left", 5)
    user.diagonal_walk("down", 3)
    sleep(1000ms)
    key(x)
    user.diagonal_walk("down", 33)
    key(tab:up)