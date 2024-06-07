app: MSYS2 terminal
tag: terminal
-

user: 'cd C:\\\\Users\\\\Charly\\\\AppData\\\\Roaming\\\\talon\\\\user'
custom: "cd C:\\\\Users\\\\Charly\\\\AppData\\\\Roaming\\\\talon\\\\user\\\\custom"

(get|git) (ad|add) [dot]: "git add ."
(get|git) status: "git status"
(get|git) commit: 
    'git commit -am ""'
    key(left)  
(get|git) push:
    "git push"
    key(enter)