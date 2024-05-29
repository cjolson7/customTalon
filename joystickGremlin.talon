app: joystick_gremlin.exe
-

#activate
activate: user.move_and_click(447, 193)

#menus
file: user.move_and_click(413, 165) 
save:   
    user.move_and_click(413, 165)
    sleep(50ms)
    user.move_and_click(436, 259)
tools: user.move_and_click(493, 169)
input viewer: 
    user.move_and_click(493, 169)
    user.move_and_click(493, 279)

#controller selection 
arcade: user.move_and_click(832, 240)
adapt: user.move_and_click(614, 243)
normal: user.move_and_click(1007, 240)
keyboard: user.move_and_click(1152, 237)

#labelling
label: user.move_and_click(554, 280)
description: user.move_and_click(1196, 281)

#button commands
choose action: user.move_and_click(861, 317)
add action: user.move_and_click(1012, 313)
choose type: user.move_and_click(1124, 315)
add type: user.move_and_click(1294, 316)
remove one: user.move_and_click(1565, 373)
remove two: user.move_and_click(1558, 632)
choose button: user.move_and_click(1239, 509)
add key: user.move_and_click(585, 915)
condition tab: user.move_and_click(1568, 476)
add condition: user.move_and_click(1424, 530)

#macros.
macro action: user.move_and_click(1443, 504)
macro add: user.move_and_click(1306, 467)
macro remove: user.move_and_click(1301, 498)
macro virtual button: user.move_and_click(1407, 567)
macro virtual press: user.move_and_click(1345, 597)
macro virtual release: user.move_and_click(1345, 622)
macro hat: user.move_and_click(1407, 597)