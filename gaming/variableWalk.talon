app: Shadows Over Loathing.exe
app: Hades II
-
settings():
    key_wait = 144

#movement command takes a direction (or several) and a time to walk in multiples of 100ms

#movements of the same variable length
[walk] <user.arrow_keys> <number>: user.variable_walk(arrow_keys, number)

#diagonal movements (takes pairs of arrows)
angle <user.arrow_keys> <number>: user.diagonal_walk(arrow_keys, number)

#long movements
walk <user.arrow_keys>: user.variable_walk(arrow_keys, 20)

#chain of small movements
bump <user.arrow_keys>: user.variable_walk(arrow_keys, 1)

#emergency halt command in case an error leaves a thing pressed down
halt movement: key(up:up-down:up-left:up-right:up)