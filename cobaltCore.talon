#Cobalt Core
speech.engine: wav2letter
app.exe: CobaltCore.exe
-

settings():
    key_wait = 96

#set grid to correct size
grid:
    user.full_grid_close()
    user.full_grid_place_window()
    user.full_grid_adjust_size(7)

#deck and upgrades
deck: mouse_move(350, 150)
back: mouse_move(1500, 850)
upgrade a: mouse_move(800, 700)
upgrade b: mouse_move(1100, 700)
(continue|skip): mouse_move(1000, 780)
cancel: mouse_move(1000, 850)

#combat deck control
end: 
   mouse_move(1600, 880)
   sleep(1000ms)
   mouse_move(1590, 200)
draw: mouse_move(400, 880)
discard: mouse_move(1600, 770)
exhaust: mouse_move(1530, 780)
eye: mouse_move(1590, 200)

#movement
left: mouse_move(720, 580)
right: mouse_move(1220, 580)
drone left: mouse_move(720, 410)
drone right: mouse_move(1220, 410)

reward one: mouse_move(750, 650)
(text|reward two): mouse_move(950, 650)
reward three: mouse_move(1150, 650)

artifact one: mouse_move(950, 450)
artifact two: mouse_move(950, 550)
artifact three: mouse_move(950, 650)

flip ready: key(ctrl:down)
flip done: key(ctrl:up)

#card grid
go one: mouse_move(520, 880)
go two: mouse_move(610, 880)
go three: mouse_move(700, 880)
go four: mouse_move(790, 880)
go five: mouse_move(880, 880)
go six: mouse_move(970, 880)
go seven: mouse_move(1060, 880)
go eight: mouse_move(1150, 880)	
go nine: mouse_move(1240, 880)
go ten: mouse_move(1330, 880)
