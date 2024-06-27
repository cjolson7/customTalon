#this is a default place to put custom overrides and convenient commands for my windows machine
os: windows
speech.engine: wav2letter
mode: command
-

#General
emote (<user.text>): 
    key(win-.)
    sleep(100ms)
    "{user.text}"
windows: key(win)
caps lock: key(capslock)
save file: key(ctrl-s)

#Window Control
minimize [all]: key(win-m) 
restore: key(win-shift-m) 
minimize current: key(win-down)
maximize: key(win-up)
max screen right: key(win-right)
max screen left: key(win-left)	

#taskbar commands
taskbar open <number>: key("win-{number}")
taskbar menu <number>: key("win-alt-{number}")

#easier app closer (needs to be a little tricky to use accidentally)
older effort forest: key(alt-f4)

#app-specific "go back to this and do something to talon" commands (for command mode, not while talon is asleep)
#goes to discord, toggles mute, and turns off talon regardless of current focus
discord unmute:
    user.switcher_focus("Discord")
    user.discord_mute()
    speech.disable()

#focuses and unmutes discord and goes back to final fantasy - this is a different switch than normal, going from 'muted and editing' to 'play and chat'
(f i|final) return: 
    user.switcher_focus("Discord")
    user.discord_mute()
    user.switcher_focus("FINAL FANTASY XIV")
    speech.disable()

#focus trails in the sky and then enter its custom mode (should fail at first step when trails isn't open)
#also deactivates the mouse grade so that the grid can be more easily used during trails
focus trails:
    user.switcher_focus("The Legend of Heroes: Trails in the Sky")
    mode.enable("user.trails_mode")
    mode.disable("command")
    user.flex_grid_deactivate()