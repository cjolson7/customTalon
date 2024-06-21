os: mac
speech.engine: wav2letter
mode: command
-

#General
caps lock: key(capslock)
save file: key(cmd-s)  
hold touch: 
    mouse_drag(0)
    sleep(200ms)
    user.mouse_drag_end()
command touch:
    key(cmd:down)
    mouse_click(0)
    key(cmd:up)

#scrolling
upper: user.mouse_scroll_up(6)
downer: user.mouse_scroll_down(6)
(very|variable) scroll: user.mouse_scroll_down_continuous(40)
(very|variable) scroll up: user.mouse_scroll_down_continuous(-40)
(very|variable) scroll <number>: user.mouse_scroll_down_continuous(1*number)
(very|variable) scroll up <number>: user.mouse_scroll_down_continuous(-1*number)

#Custom Words
enter email: "charly.mcrae-olson@thoughtworks.com"
