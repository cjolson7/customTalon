#game meta management including save and load, startup management, and the custom command mode itself

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
time to exit [the] game: 
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