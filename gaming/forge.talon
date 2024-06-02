app.exe: firefox.exe
title: /Cosmos*/
-
settings():
    key_wait = 144

help: key(h)

# navigation
chat: mouse_move(1625, 150)
combat: mouse_move(1652, 150)
actors: mouse_move(1679, 150)
characters: mouse_move(1650, 390)
items: mouse_move(1706, 150)
journal: mouse_move(1733, 150)
compendium: mouse_move(1841, 150)

# hotbar
(hotbar | bar) last:  mouse_move(780, 990)
(hotbar | bar) next:  mouse_move(780, 1010)
(hotbar | bar) one:   mouse_move(280, 1000)
(hotbar | bar) two:   mouse_move(330, 1000)
(hotbar | bar) three: mouse_move(380, 1000)
(hotbar | bar) four:  mouse_move(430, 1000)
(hotbar | bar) five:  mouse_move(480, 1000)
(hotbar | bar) six:   mouse_move(530, 1000)
(hotbar | bar) seven: mouse_move(580, 1000)
(hotbar | bar) eight: mouse_move(630, 1000)
(hotbar | bar) nine:  mouse_move(680, 1000)
(hotbar | bar) ten:   mouse_move(730, 1000)

# initiative
init one:   mouse_move(1850, 245)
init two:   mouse_move(1850, 305)
init three: mouse_move(1850, 365)
init four:  mouse_move(1850, 425)
init five:  mouse_move(1850, 485)
init six:   mouse_move(1850, 540)

# movement
token: 
    mouse_move(30, 230)
    mouse_click(0)
    sleep(100ms)
    mouse_move(80, 230)
    mouse_click(0)
measure:
    mouse_move(30, 230)
    mouse_click(0)
    sleep(100ms)
    mouse_move(80, 330)
    mouse_click(0)

up: key(up)
down: key(down)
left: key(left)
right: key(right)
