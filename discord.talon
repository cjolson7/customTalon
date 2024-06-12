#Discord
os: windows
speech.engine: wav2letter
app.exe: Discord.exe
-

#deals with issue where discord is loading so you minimize and return
flicker: 
  key(win-m) 
  sleep(100ms)
  key(win-shift-m) 

react [to] <user.text>: "+:{user.text}"
settings: user.move_and_click(287, 1012)

start streaming:
  mouse_move(287, 862)
  sleep(100ms)
  mouse_click(0)
  mouse_move(1137, 762)
  sleep(800ms)
  mouse_click(0)

go live:#just the go live buttin for errors with the previous
  mouse_move(1137, 762)
  sleep(100ms)
  mouse_click(0)

stop streaming:
  mouse_move(287, 862)
  sleep(100ms)
  mouse_click(0)

disconnect:
  mouse_move(287, 917)
  sleep(100ms)
  mouse_click(0)

deafen:
  mouse_move(252, 1007)
  sleep(100ms)
  mouse_click(0)