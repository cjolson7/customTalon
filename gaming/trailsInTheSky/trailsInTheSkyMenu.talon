#navigation and management within the game's main menu

mode: user.trails_mode
-
settings():
    key_wait = 180
    
#menu
open menu:
    key(escape)
    user.variable_wait(100)
menu <user.trails_menu>:
    user.choose_menu_tab(user.trails_menu)
    key(space)
open menu <user.trails_menu>:
    key(escape)
    user.variable_wait(100)
    user.choose_menu_tab(user.trails_menu)
    key(space)
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
name <user.trails_characters>: user.choose_character_from_menu(user.trails_characters)
loadout <user.trails_characters>:
    user.choose_character_from_menu(user.trails_characters)
    key(space)
loadout <user.trails_characters> <user.trails_equipment>:
    user.choose_character_from_menu(user.trails_characters)
    key(space)
    sleep(100ms)
    user.choose_equipment_from_menu(user.trails_equipment)
    key(space)
use item on <user.trails_characters>: user.use_item_on_character(user.trails_characters)
use item on <user.trails_characters> and <user.trails_characters>:
    user.use_item_on_character(user.trails_characters_1)
    user.use_item_on_character(user.trails_characters_2)

#orbment
slot up [<number>]:
    key(escape)
    user.key_repeat("whave', number or 1)
    key(space)
slot down [<number>]:
    key(escape)
    user.key_repeat("s', number or 1)
    key(space)