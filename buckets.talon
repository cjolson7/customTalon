ros: windows
app: Buckets
-

#check down: 
#    user.mouse_hop(0, 25)
#    mouse_click(0)
#check up: 
#    user.mouse_hop(0, -25)
#    mouse_click(0)
#check down <number>: 
#    user.mouse_hop(0, number*25)
#    mouse_click(0)
#check up <number>: 
#    user.mouse_hop(0, number*-25)
#    mouse_click(0)
check down [<number>]: user.check_next(number or 1, 1)
check up [<number>]: user.check_next(number or 1, 0)
category [<user.word>] [down] [<number>]: user.category_next(user.word or "invalid", number or 1, 1)
category [<user.word>] up [<number>]: user.category_next(user.word or "invalid", number or 1, 0)
category joint [<user.word>] [down] [<number>]: user.category_next("joint {user.word}" or "invalid", number or 1, 1)
category joint [<user.word>] up [<number>]: user.category_next("joint {user.word}" or "invalid", number or 1, 0)

make it so: user.move_and_click(1613, 197)
(last|prev|prove|previous) month: user.move_and_click(1470, 139)
next month: user.move_and_click(1630, 139)