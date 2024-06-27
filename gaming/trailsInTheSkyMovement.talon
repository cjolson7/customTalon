mode: user.trails_mode
app: The Legend of Heroes: Trails in the Sky
-
#camera and minimap
(camera|rotate) left: "z"
(camera|rotate) right: "x"
camera spin: key(z:8)
[zoom] minimap: "v"

#wasd movements (diagonal default)
[walk] <user.arrow_keys> <number>: user.diagonal_walk(arrow_keys, number)
#long movements
walk <user.arrow_keys>: user.diagonal_walk(arrow_keys, 30)
#automatic run
run <user.arrow_keys>: 
    key(tab:down)
    user.diagonal_walk(arrow_keys, 30)
run <user.arrow_keys> [<number>]: 
    key(tab:down)
    user.diagonal_walk(arrow_keys, number)
#chain of small movements
bump <user.arrow_keys>: user.diagonal_walk(arrow_keys, 1)
toggle run: key(tab:down)
toggle (run off|walk): key(tab:up)

#specific long paths
winding path home: user.winding_path_home() 
winding path back: user.winding_path_back() 
bedtime for bracers: user.bedtime_for_bracers6()
wake time for bracers: user.wake_time_for_bracers()
#combination of the previous, sleep and wake up
long and winding path to bedtime: 
    user.winding_path_home()
    user.bedtime_for_bracers()
    sleep(6000ms)
    user.wake_time_for_bracers()
    user.winding_path_back()

