#navigation and management within the game's main menu

mode: user.trails_mode
-
settings():
    key_wait = 180
    
#menu
status: user.click_and_act(416, 45)
equip: user.click_and_act(586, 45)
orbment: user.click_and_act(756, 45)
items: user.click_and_act(936, 45)
tactics: user.click_and_act(1116, 45)
(option|options): user.click_and_act(1286, 45)
files: user.click_and_act(1456, 45)
equipment: 
    key(escape)
    sleep(200ms)
    user.click_and_act(586, 45)
inventory: 
    key(escape)
    sleep(200ms)
    user.click_and_act(936, 45)
healing items: 
    key(escape)
    sleep(200ms)
    user.long_click_at_location(936, 45)
    sleep(100ms)
    user.long_click_at_location(891, 187)
    key(s)

#menu navigation by character
use item: key(space:2)
choose <user.trails_characters>: user.choose_character_from_menu(user.trails_characters)
use item on <user.trails_characters>:
    key(space:2)
    sleep(200ms)
    user.choose_character_from_menu(user.trails_characters)
    key(space)