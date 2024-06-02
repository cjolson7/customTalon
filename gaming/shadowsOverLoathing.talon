app: Shadows Over Loathing.exe
-

#basic interaction 
interact: key(e)
(action|wander): key(space)

#menus 
show character: key(c)
show inventory: key(i)
next category: "["
previous category: "]"
show map: key(m)
show journal: key(t)
show overlay: key(h)
show options: key(o)
close menu: key(x)

#movement
bus stop: key(b)
upward [<number>]: 
   key(s:up)
   user.variableSleep(number)
   key(w:down)
downward: 
   key(w:up)
   key(s:down)
leftward: 
   key(d:up)
   key(a:down)
rightward: 
   key(a:up)
   key(d:down)
upward bump: 
   key(s:up)
   key(w:down)
   sleep(100ms)
   key(w:up)
downward bump: 
   key(w:up)
   key(d:down)
   sleep(100ms)
   key(s:up)
leftward bump: 
   key(d:up)
   key(a:down)
   sleep(100ms)
   key(a:up)
rightward bump: 
   key(a:up)
   key(d:down)
   sleep(100ms)
   key(d:up)
halt [movement]: 
   key(w:up)
   key(s:up)
   key(a:up)
   key(d:up)

#dialogue
option up: "w"
option down: "s"