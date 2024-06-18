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
hold touch: 
    user.mouse_drag(0)
    sleep(200ms)
    user.mouse_drag_end()

#scrolling
upper: user.mouse_scroll_up(6)
downer: user.mouse_scroll_down(6)
(very|variable) scroll: user.mouse_scroll_down_continuous(40)
(very|variable) scroll up: user.mouse_scroll_down_continuous(-40)
(very|variable) scroll <number>: user.mouse_scroll_down_continuous(1*number)
(very|variable) scroll up <number>: user.mouse_scroll_down_continuous(-1*number)

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

#Custom Words
em dash: insert("—")
enter email: "cjocharly@att.net"

#goes to discord, toggles mute, and turns off talon regardless of current focus
discord unmute:
    user.switcher_focus("Discord")
    user.discord_mute()
    speech.disable()

#easier app closer (needs to be a little tricky to use accidentally)
older effort forest: key(alt-f4)

#more useful alt ta
start app switcher: 
    key(alt:down)
    sleep(100ms)
    key(tab)
(end app switcher|choose app|alt up): key(alt:up)