app.exe: Balatro.exe
-
settings():
    key_wait = 144

# setup
play game: user.move_and_wait_and_click(550, 900)
deck left: user.move_and_wait_and_click(620, 380)
deck right: user.move_and_wait_and_click(1290, 380)
confirm play: user.move_and_wait_and_click(1000, 825)
play seeded: user.move_and_wait_and_click(715, 835)
paste seed: user.move_and_wait_and_click(1045, 765)

# blinds
select small: mouse_move(630, 380)
skip small: mouse_move(680, 840)
select big: mouse_move(1000, 380)
skip big: mouse_move(1050, 840)
select boss: mouse_move(1450, 380)

# menus
run info: user.move_and_wait_and_click(220, 750)
options: user.move_and_wait_and_click(187, 912)
options back: user.move_and_wait_and_click(962, 762)

# general 
deck: mouse_move(1650, 900)
back: user.move_and_wait_and_click(950, 915)

#consumables
consume zero: user.move_and_wait_and_click(1550, 200)
consume zero use: user.move_and_wait_and_click(1640, 200)
consume zero sell: user.move_and_wait_and_click(1640, 100)
consume one: user.move_and_wait_and_click(1450, 200)
consume one: use: user.move_and_wait_and_click(1540, 200)
consume one: sell: user.move_and_wait_and_click(1540, 100)
consume two: user.move_and_wait_and_click(1650, 200)
consume two: use: user.move_and_wait_and_click(1740, 200)
consume two: sell: user.move_and_wait_and_click(1740, 100)

# hands 
play hand: user.move_and_wait_and_click(750, 900)
discard: user.move_and_wait_and_click(1150, 900)
sort rank: user.move_and_wait_and_click(980, 930)
sort suit: user.move_and_wait_and_click(1070, 930)
cash out: user.move_and_wait_and_click(1000, 450)

# shop
voucher: mouse_move(840, 920)
booster one: mouse_move(1200, 950)
booster two: mouse_move(1350, 950)
booster zero: mouse_move(1300, 950)
next round: mouse_move(700, 450)
reroll: user.move_and_wait_and_click(700, 550)
shop one: mouse_move(1060, 600)
shop two: mouse_move(1240, 600)
shop zero: mouse_move(1150, 600)
buy and use: user.mouse_hop(100, -150)
skip pack: mouse_move(1300, 930)
purchase: 
   mouse_click(0)
   sleep(100ms)
   mouse_click(0)

#ending screen
copy seed: user.move_and_wait_and_click(1095, 765)
play again: user.move_and_wait_and_click(1185, 825)