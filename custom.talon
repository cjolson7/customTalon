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