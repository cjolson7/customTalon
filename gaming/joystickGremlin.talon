app: joystick_gremlin.exe
-

#activate
activate: user.move_and_click(52, 63)

#menus
file: user.move_and_click(17, 33) 
save:   
    user.move_and_click(17, 33)
    sleep(150ms)
    user.move_and_click(65, 118)
tools: user.move_and_click(117, 33)
input viewer: 
    user.move_and_click(117, 33)
    sleep(100ms)
    user.move_and_click(141, 145)
show virtual inputs:
    user.move_and_click(649, 887)
    sleep(100ms)
    user.move_and_click(656, 862)
show output: 
    user.move_and_click(646, 864)
    sleep(100ms)
    user.move_and_click(646, 884)

#controller selection 
adapt: user.move_and_click(250, 100)
flight: user.move_and_click(412, 100)
normal: user.move_and_click(602, 100)


#labelling
label: user.move_and_click(287, 137)
description: user.move_and_click(1462, 137)

#button commands
choose action: user.move_and_click(1037, 172)
add action: user.move_and_click(1187, 172)
choose type: user.move_and_click(1370, 172)
add type: user.move_and_click(1487, 172)
remove one: user.move_and_click(1837, 237)
choose button: user.move_and_click(1079, 377)
add key: user.move_and_click(773, 984)
tempo button: user.move_and_click(1172, 399)
condition tab: user.move_and_click(1835, 347)

#macros (still needs remapping to the full screen)
macro action: user.move_and_click(1443, 504)
macro add: user.move_and_click(1306, 467)
macro remove: user.move_and_click(1301, 498)
macro virtual button: user.move_and_click(1407, 567)
macro virtual press: user.move_and_click(1345, 597)
macro virtual release: user.move_and_click(1345, 622)
macro hat: user.move_and_click(1407, 597)
macro pause duration: user.move_and_click(1366, 546)
macro release: user.move_and_click(1348, 609)
macro setting: user.move_and_click(1398, 724)
macro delay: user.move_and_click(1448, 749)