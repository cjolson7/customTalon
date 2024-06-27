#these commands should be available in any os, but only in command mode, because they are primarily for text editors

speech.engine: wav2letter
mode: command
-
function writer <user.function_writer>:
   "{function_writer}()"
   key(left)  

#fix common mishearings
wait wait: key(left backspace:2 left backspace a right:3)
talon talon: key(backspace left backspace o) 

#overwrite paste to have a small wait after so that it chains better
(pace | paste) that: 
   edit.paste()
   sleep(100ms)

#common entries and mild pw obfuscation
enter email: "cjocharly@att.net"
bitwarden code: "2773"

#large block scrolling 
upper: user.mouse_scroll_up(6)
downer: user.mouse_scroll_down(6)