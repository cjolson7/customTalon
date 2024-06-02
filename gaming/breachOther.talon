#Into The Breach
app.exe: Breach.exe
-
end:
  mouse_move(180, 160)
  sleep(100ms)
  mouse_click(0)
  mouse_move(500, 500)
confirm:
  mouse_move(160, 210)
  mouse_click(0)
  sleep(100ms)
  mouse_click(0)
  sleep(100ms)
  mouse_move(500, 500)
yes:
  mouse_move(955, 600)
  mouse_click(0)
continue:
  mouse_move(1300, 810)
  mouse_click(0)
(start | understood):
  mouse_move(1000, 700)
  mouse_click(0)
spend rep:
  mouse_move(1000, 975)
  mouse_click(0)

order: mouse_move(1500, 150)
reset: mouse_move(550, 125)
confirm reset: mouse_move(875, 650)
undo:  mouse_move(350, 200)
leave island: mouse_move(1000, 1025)
alt on: key(alt:down)
alt off: key(alt:up)  

#shop
buy weapon one: mouse_move(700, 375)
buy weapon two: mouse_move(790, 375)
buy weapon three: mouse_move(880, 375)
buy weapon four: mouse_move(970, 375)
buy reactor:    mouse_move(1130, 375)
buy power:      mouse_move(1220, 375)
leave shop:     mouse_move(1150, 820)