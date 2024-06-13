app: The Legend of Heroes: Trails in the Sky
-
settings():
    key_wait = 300

#dialogue control
confirm: key(space)
continue [<number>]: user.keep_going(number or 20)

#basic controls
rotate left: "z"
rotate right: "x"
toggle walk: key(tab)
notebook: "b"
world map: "m"
monsters: "n"
recipes: "c"
[cancel/camp]: key(ctrl)
turbo mode: key(alt)
zoom minimap: "v"
show location [<number>]: 
    key(shift:down)
    user.variable_wait(number or 300)
    key(shift:up)