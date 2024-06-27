os: windows
mode: command
mode: user.trails_mode
speech.engine: wav2letter
-

#app-specific "go back to this and do something to talon" commands (for command mode and other custom modes, not while talon is asleep)
#goes to discord, toggles mute, and turns off talon regardless of current focus
#also disables trails command mode just in case, so that it is not on when talon is reactivated     
discord unmute:
    user.switcher_focus("Discord")
    user.discord_mute()
    mode.disable("user.trails_mode")
    mode.enable("command")
    speech.disable()

#focuses and unmutes discord and goes back to final fantasy - this is a different switch than normal, going from 'muted and editing' to 'play and chat'
(f i|final) return: 
    user.switcher_focus("Discord")
    user.discord_mute()
    user.switcher_focus("FINAL FANTASY XIV")
    speech.disable()

#focus trails in the sky and then enter its custom mode (should fail at first step when trails isn't open)
#also deactivates the mouse grid so that the grid can be more easily used during trails
#also attempts to mute discord, which will not work if discord is not currently focused.
focus trails:
    user.try_mute()
    user.switcher_focus("The Legend of Heroes: Trails in the Sky")
    mode.enable("user.trails_mode")
    mode.disable("command")
    user.flex_grid_deactivate()