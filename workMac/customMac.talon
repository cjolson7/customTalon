os: mac
speech.engine: wav2letter
mode: command
-

#General
caps lock: key(capslock)
save file: key(command-s)  
hold touch: 
    user.mouse_drag(0)
    sleep(200ms)
    user.mouse_drag_end()

#scrolling
upper: user.mouse_scroll_up(6)
downer: user.mouse_scroll_down(6)
wheel downer <number>: user.mouse_scroll_down_continuous(number)
wheel upper <number>: user.mouse_scroll_down_continuous(-1*number)

#Custom Words
enter email: "charly.mcrae-olson@thoughtworks.com"
