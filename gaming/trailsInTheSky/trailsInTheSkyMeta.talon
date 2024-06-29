#game meta management including save and load, startup management, and the custom command mode itself, including command rewrites.

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

#start up and game management
load on startup: user.long_click_at_location(1635, 765)
time to exit [the] [game]: 
    key(escape)
    sleep(100ms)
    user.long_click_at_location(1456, 45)
    key(enter w space:2)
save game: 
    key(escape)
    sleep(100ms)
    user.long_click_at_location(1456, 45)
    key(enter:2)
confirm save: 
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