#this uses a custom command mode, it may occasionally need something reimplemented that it didn't have access to

mode: user.trails_mode
-
settings():
    key_wait = 180

#basic control
(interact|confirm|enter): key(space)
act <user.arrow_keys>:
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

#shopping 
(open (shop|report)|confirm sleep) : key(space s space)
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