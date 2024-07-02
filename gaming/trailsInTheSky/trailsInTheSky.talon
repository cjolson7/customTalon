#this uses a custom command mode, it may occasionally need something reimplemented that it didn't have access to

mode: user.trails_mode
-
settings():
    key_wait = 180

#basic control
(interact|hai|enter): key(space)
#act command takes either a number and exactly one arrow key or one or more arrow keys   
act <user.arrow_keys>:
    user.variable_walk(arrow_keys, 0)
    key(space)
act <user.arrow_keys> <number>:
    user.key_repeat(user.arrow_wasd_translate(user.arrow_keys), number or 1)
    key(space)
escape: key(escape)
cancel: key(ctrl)
continue [<number>]: user.keep_going(number or 10)
advance: user.keep_going(3)
close out: key(escape:3)

#common menus
monsters: "n"
recipes: "c"
cook sitdown: 
    key(space)
    sleep(100ms)
    key(w)
    key(space)
    sleep(5000ms)
    key(space)
    key(escape)
cook that: 
    key(space)
    sleep(100ms)
    key(space)
    sleep(3500ms)
    key(space)
world map: "m"
turbo mode: key(alt)
show location [<number>]: 
    key(shift:down)
    user.variable_wait(number or 300)
    key(shift:up)

#notebook
notebook: "b"
tab memo: user.long_click_at_location(315, 185)
tab Rolent: user.long_click_at_location(315, 345)
tab (Bose|bows): user.long_click_at_location(315, 495)

#shopping 
(open (shop|report)|confirm rest) : key(space s space)
(sell|purchase) item: 
    key(space:2)
    sleep(100ms)
    key(w)
    key(space:2)
confirm purchase: 
    key(space)
    sleep(100ms)
    key(w)
    key(space:2)
confirm trade: key(space w space:2 escape)

#combat
(murder|punch it):
    user.long_click_at_location(1677, 270)
    user.keep_going(2) 
choose attack: user.long_click_at_location(1677, 270)
choose move: user.long_click_at_location(1677, 320)
choose art: user.long_click_at_location(1695, 415)
choose craft: user.long_click_at_location(1677, 490)
choose item: user.long_click_at_location(1677, 570)
choose run: mouse_move(1672, 620)
[es] break one: "1"
[es] break (to|two): "2"
[es] break three: "3"
[es] break (for|four): "4"
end combat: user.keep_going(6)