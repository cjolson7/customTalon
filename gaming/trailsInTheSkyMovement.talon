mode: user.trails_mode
app: The Legend of Heroes: Trails in the Sky
-
#camera and minimap
(camera|rotate) left: "z"
(camera|rotate) right: "x"
[zoom] minimap: "v"

#wasd movements (diagonal default)
[walk] <user.arrow_keys> <number>: user.diagonal_walk(arrow_keys, number)
#long movements
walk <user.arrow_keys>: user.diagonal_walk(arrow_keys, 30)
#automatic run
run <user.arrow_keys>: 
    key(tab:down)
    user.diagonal_walk(arrow_keys, 30)
    key(tab:up)
run <user.arrow_keys> [<number>]: 
    key(tab:down)
    user.diagonal_walk(arrow_keys, number)
    key(tab:up)
#chain of small movements
bump <user.arrow_keys>: user.diagonal_walk(arrow_keys, 1)
toggle run: key(tab:down)
toggle (run off|walk): key(tab:up)

#specific long paths
winding path home: 
    key(tab:down)
    user.diagonal_walk("up", 32)
    user.diagonal_walk("left", 7)
    user.diagonal_walk("down left", 4)
    user.diagonal_walk("up left up", 3)
    user.diagonal_walk("up right", 4)
    user.diagonal_walk("up", 30)
    key(tab:up)
    sleep(500ms)
winding path back: 
    key(tab:down)
    user.diagonal_walk("down", 40)
    user.diagonal_walk("up right", 5)
    user.diagonal_walk("right", 5)
    user.diagonal_walk("down", 30)
    key(tab:up)
bedtime for bracers:
    key(tab:down)
    user.diagonal_walk("left", 3)
    user.diagonal_walk("up", 35)
    user.variable_walk("up right", 1)
    user.diagonal_walk("right up", 8)
    user.diagonal_walk("up left", 1)
    user.variable_walk("left up left", 2)
    user.variable_walk("up", 1)
    key(tab:up)
    user.variable_walk("right", 1)
    key(space:2)
wake time for bracers:
    key(tab:down)
    user.diagonal_walk("right", 5)
    user.diagonal_walk("down", 3)
    user.diagonal_walk("up right", 4)
    user.diagonal_walk("down left", 5)
    user.diagonal_walk("down", 3)
    sleep(1000ms)
    key(x)
    user.diagonal_walk("down", 33)
    key(tab:up)
    sleep(500ms)