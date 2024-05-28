os: windows
speech.engine: wav2letter
mode: command
-

#General
emote (<user.text>): 
    key(win-.)
    "{user.text}"
windows: key(win)
caps lock: key(capslock)
save file: key(ctrl-s)  

#scrolling
upper: user.mouse_scroll_up(6)
downer: user.mouse_scroll_down(6)

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

#TEMP
test: key(f15)

