app: FINAL FANTASY XIV

-
settings():
    key_wait = 144

#click command 
touch: user.long_click(0, 300) 

#movement
forward: 
   key(s:up)
   key(ctrl:down)
   key(w:down)
   key(ctrl:up)
forward small: 
   key(s:up)
   key(ctrl:down)
   key(w:down)
   key(ctrl:up)
   sleep(200ms)
   key(w:up)
backward: 
   key(w:up)
   key(ctrl:down)
   key(s:down)
   key(ctrl:up)
backward small: 
   key(w:up)
   key(ctrl:down)
   key(s:down)
   key(ctrl:up)
   sleep(200ms)
   key(s:up)
halt movement: 
   key(w:up)
   key(s:up)
   key(f23:up)
   key(f21:up)

#flying
upward: 
   key(f21:up)
   key(f23:down)
downward: 
   key(f23:up)
   key(f21:down)
halt vertical: 
   key(f23:up)
   key(f21:up)

#basic buttons
air button: key(f20)
bat button: key(f21)
plex button: key(f22)
yank button: key(f23)
left three: key(f24)
right three: key(f13)
   
#hat buttons
#hat north: key(f8)

#menu hotkeys
menu button: key(f15)
select button: key(f14)
open journal: key(ctrl-j)
open armoury: key(ctrl-i)
open actions: key(ctrl-p)
open currency: key(ctrl-c)
open crafting: key(ctrlblb-n)
open timers: key(ctrl-u)

#camera controls
camera return: key(end)
camera save: key(ctrl-end)
zoom in: 
   key(pgup:down)
   sleep(100ms)
   key(pgup:up)
zoom out:  
   key(pgdown:down)
   sleep(100ms)
   key(pgdown:up)
look up: key(up)
look down: key(down)
look left: 
   key(left:down)
   sleep(200ms)
   key(left:up)
look right: 
   key(right:down)
   sleep(200ms)
   key(right:up)
look left small: 
   key(left:down)
   sleep(50ms)
   key(left:up)
look right small: 
   key(right:down)
   sleep(50ms)
   key(right:up)