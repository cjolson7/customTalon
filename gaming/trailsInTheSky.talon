#this uses a custom command mode, it may occasionally need something reimplemented that it didn't have

mode: user.trails_mode
app: The Legend of Heroes: Trails in the Sky
-
settings():
    key_wait = 180

#manage custom command mode
#go to code (and back to command mode)
focus code:
    user.switcher_focus("Visual Studio Code")
    mode.disable("user.trails_mode")
    mode.enable("command")
#simply return to command mode
command mode:
    mode.disable("user.trails_mode")
    mode.enable("command")

#basic control
(interact|confirm): key(space)
(act|action) <user.arrow_keys>:
    user.variable_walk(arrow_keys, 0)
    key(space)
(back|menu): key(escape)
(cancel|camp): key(ctrl)
continue [<number>]: user.keep_going(number or 10)

#common menus
monsters: "n"
recipes: "c"
world map: "m"
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
touch: user.long_click(0, 300)bb
#this works now because it is its own mode
go <user.arrow_keys>+: user.variable_walk(arrow_keys, 0) 

#repeaters copied here for use in this mode
# -1 because we are repeating, so the initial command counts as one
<user.ordinals>: core.repeat_command(ordinals - 1)
<number_small> times: core.repeat_command(number_small - 1)
(repeat that | twice): core.repeat_command(1)
repeat that <number_small> [times]: core.repeat_command(number_small)
(repeat phrase | again) [<number_small> times]:
    core.repeat_partial_phrase(number_small or 1)