#this uses a custom command mode, it may occasionally need something reimplemented that it didn't have access to

mode: user.trails_mode
-
settings():
    key_wait = 180

#manage custom command mode
#go to another app (and back to command mode)
focus <user.running_applications>:
    user.switcher_focus(running_applications)
    mode.disable("user.trails_mode")
    mode.enable("command")
#simply return to command mode
command mode:
    mode.disable("user.trails_mode")
    mode.enable("command")
#this should work despite redundancy because I will expect it to when I come back and make sure everything is correct. 
focus trails:
    user.switcher_focus("The Legend of Heroes: Trails in the Sky")
    mode.enable("user.trails_mode")
    mode.disable("command")   

#custom command maker
interact command maker <user.text>: user.interact_command_maker(user.text)
.
#basic control
(interact|confirm|enter): key(space)
(act|action) <user.arrow_keys>:
    user.variable_walk(arrow_keys, 0)
    key(space)
(act|action) <user.arrow_keys> <number>:
    user.variable_walk(arrow_keys, 0)
    core.repeat_command(number-1)  
    user.variable_walk(arrow_keys, 0)
    key(space)
(menu): key(escape)
(cancel|escape): key(ctrl)
continue [<number>]: user.keep_going(number or 10)
advance: user.keep_going(3)
close out: key(escape:3)

#common menus
monsters: "n"
recipes: "c"
cook sitdown: 
    key(space)
    sleep(100ms)
    key(w)
    key(space)
    sleep(3500ms)
    key(space)
cook that: 
    key(space)
    sleep(100ms)
    key(space)
    sleep(3500ms)
    key(space)
world map: "m"
turbo mode: key(alt)
show location [<number>]: 
    key(shift:down)
    user.variable_wait(number or 300)
    key(shift:up)

#notebook
notebook: "b"
tab memo: user.long_click_at_location(315, 185)
tab Rolent: user.long_click_at_location(315, 345)
tab (Bose|bows): user.long_click_at_location(315, 495)

#menu
status: user.click_and_act(416, 45)
equip: user.click_and_act(586, 45)
orbment: user.click_and_act(756, 45)
items: user.click_and_act(936, 45)
tactics: user.click_and_act(1116, 45)
(option|options): user.click_and_act(1286, 45)
files: user.click_and_act(1456, 45)
equipment: 
    key(escape)
    sleep(200ms)
    user.click_and_act(586, 45)
inventory: 
    key(escape)
    sleep(200ms)
    user.click_and_act(936, 45)
healing items: 
    key(escape)
    sleep(200ms)
    user.long_click_at_location(936, 45)
    sleep(100ms)
    user.long_click_at_location(891, 187)
    key(s)

#menu navigation by character
use item: key(space:2)
choose <user.trails_characters>: user.choose_character_from_menu(user.trails_characters)
use item on <user.trails_characters>:
    key(space:2)
    sleep(200ms)
    user.choose_character_from_menu(user.trails_characters)
    key(space)

#shopping 
(f and open shop|open report|confirm sleep) : key(space s space)
(sell|purchase) item: 
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
(murder|punch it):
    user.long_click_at_location(1677, 270)
    user.keep_going(2) 
choose attack: user.long_click_at_location(1677, 270)
choose move: user.long_click_at_location(1677, 320)
choose art: user.long_click_at_location(1695, 415)
choose craft: user.long_click_at_location(1677, 490)
choose item: user.long_click_at_location(1677, 570)
choose run: mouse_move(1672, 620)
[es] break one: "1"
[es] break (to|two): "2"
[es] break three: "3"
[es] break (for|four): "4"
end combat: user.keep_going(5)

#start up and game management
load on startup: user.long_click_at_location(1635, 765)
time to exit game: 
    key(escape)
    sleep(100ms)
    user.long_click_at_location(1456, 45)
    key(enter w space:2)
save game: 
    key(escape)
    sleep(100ms)
    user.long_click_at_location(1456, 45)
    key(enter:2)
save and back: 
    key(enter w)
    sleep(100ms)
    key(enter)
    key(escape:4)
load game: 
    key(escape)
    sleep(100ms)
    user.long_click_at_location(1456, 45)
    key(enter)
    key(s)
    key(enter)

#rewrites of basic commands
touch: user.long_click(0, 300)
#this works now because it is its own mode
go <user.arrow_keys>+: user.variable_walk(arrow_keys, 0) 

#flex grid turns command mode back on for easy control
flex grid:
    user.flex_grid_activate()
    mode.disable("user.trails_mode")
    mode.enable("command")

#repeaters copied here for use in this mode
# -1 because we are repeating, so the initial command counts as one
<user.ordinals_small>: core.repeat_command(ordinals_small - 1)
<number_small> times: core.repeat_command(number_small - 1)
(repeat that | twice): core.repeat_command(1)
repeat that <number_small> [times]: core.repeat_command(number_small)
(repeat phrase | again) [<number_small> times]: core.repeat_partial_phrase(number_small or 1) 

#eye tracker movements copied here for easy use
(eye | i) (hover | [cursor] move): user.move_cursor_to_gaze_point()
(eye | i) [left] (touch | click):
    user.move_cursor_to_gaze_point()
    sleep(100ms)
    user.long_click(0, 300)
(hover (seen | scene) | cursor move) <user.timestamped_prose>$: user.move_cursor_to_word(timestamped_prose)
[left] (touch | click) <user.timestamped_prose>$:
    user.move_cursor_to_word(timestamped_prose)
    sleep(100ms)
    user.long_click(0, 300)