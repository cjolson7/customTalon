app.exe: Balatro.exe
-
settings():
    key_wait = 144

# setup
play game: user.move_and_click(550, 900)
deck left: user.move_and_click(620, 380)
deck right: user.move_and_click(1290, 380)
confirm play: user.move_and_click(1000, 825)

# blinds
select small: mouse_move(630, 380)
skip small: mouse_move(680, 840)
select big: mouse_move(1000, 380)
skip big: mouse_move(1050, 840)
select boss: mouse_move(1450, 380)

# menus
run info: 
   mouse_move(220, 750)
   sleep(100ms)
   mouse_click(0)
go options:
   mouse_move(187, 912)
   sleep(100ms)
   mouse_click(0)
options back:
   mouse_move(962,762)
   sleep(100ms)
   mouse_click(0)

# general 
deck: mouse_move(1650, 900)
back: 
   mouse_move(950, 930)
   sleep(100ms)
   mouse_click(0)
consume zero:
   mouse_move(1550, 200)
   sleep(100ms)
   mouse_click(0)
consume zero use: 
   mouse_move(1640, 200)
   sleep(100ms)
   mouse_click()
consume zero sell: 
   mouse_move(1640, 100)
   sleep(100ms)
   mouse_click()
consume one: 
   mouse_move(1450, 200)
   sleep(100ms)
   mouse_click(0)
consume one use: 
   mouse_move(1540, 200)
   sleep(100ms)
   mouse_click()
consume one sell: 
   mouse_move(1540, 100)
   sleep(100ms)
   mouse_click()
consume two: 
   mouse_move(1650, 200)
   sleep(100ms)
   mouse_click(0)
consume two use: 
   mouse_move(1740, 200)
   sleep(100ms)
   mouse_click()
consume two sell: 
   mouse_move(1740, 100)
   sleep(100ms)
   mouse_click()

# hands 
play hand: 
   mouse_move(750, 900)
   sleep(100ms)
   mouse_click(0)
discard: 
   mouse_move(1150, 900)
   sleep(100ms)
   mouse_click(0)
sort rank: 
   mouse_move(980, 930)
   sleep(100ms)
   mouse_click(0)
sort suit: 
   mouse_move(1070, 930)
   sleep(100ms)
   mouse_click(0)
cash out: 
   mouse_move(1000, 450)
   sleep(100ms)
   mouse_click()

# shop
voucher: mouse_move(840, 920)
booster one: mouse_move(1200, 950)
booster two: mouse_move(1350, 950)
booster zero: mouse_move(1300, 950)
next round: mouse_move(700, 450)
reroll: 
   mouse_move(700, 550)
   sleep(100ms)
   mouse_click()
shop one: mouse_move(1060, 600)
shop two: mouse_move(1240, 600)
shop zero: mouse_move(1150, 600)
by and use: user.mouse_hop(100, -150)
skip pack: mouse_move(1300, 930)
purchase: 
   mouse_click(0)
   sleep(100ms)
   mouse_click()