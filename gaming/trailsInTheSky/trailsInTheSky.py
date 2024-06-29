from talon import Module, Context, actions

module = Module()
context = Context()
module.mode("trails_mode", desc="custom limited multitasking mode to minimize mishearings")

@module.action_class
class Actions:
    def keep_going(number: int):
        """hit space X times"""
        #very important limiter
        if number > 30: number = 30
        for i in range(number):
            actions.key("space")
            actions.user.variable_wait(500)
            
    def click_and_act(x: int, y: int):
        """click at the coordinates and then do an interact action"""
        actions.user.long_click_at_location(x, y)
        actions.key("space")

    def interact_command_maker(name: str):
        """create a click and act command based on the current mouse coordinates"""
        actions.user.command_writer(name, "user.click_and_act")
    
    def choose_list_item_from_menu(name: str, dictionary: dict, key: str):
        """
        Given a user-selected string, the dictionary to look in, and the key for the relevant nested information, parse and click on the coordinates.
        """
        coordinates = dictionary[name][key]
        actions.user.long_click_at_location(coordinates[0], coordinates[1])
        
    def choose_character_from_menu(name: str):
        """associate character name with the correct dictionary and key for coordinate parsing"""
        actions.user.choose_list_item_from_menu(name, trails_character_list, "menu_location")
        
    def choose_equipment_from_menu(slot: str):
        """associate equipment slot with the correct dictionary and key for coordinate parsing"""
        actions.user.choose_list_item_from_menu(slot, trails_equipment_list, "menu_location")
    
    def use_item_on_character(name: str):
        """from inventory, use selected item on character"""
        actions.key("space:2")
        actions.user.variable_wait(200)
        actions.user.choose_character_from_menu(name)
        actions.key("space")

    def winding_path_home():
        """walk home on the winding path"""
        actions.key("tab:down")
        actions.user.diagonal_walk("up", 32)
        actions.user.diagonal_walk("left", 7)
        actions.user.diagonal_walk("down left", 4)
        actions.user.diagonal_walk("up left up", 3)
        actions.user.diagonal_walk("up right", 4)
        actions.user.diagonal_walk("up", 30)
        actions.key("tab:up")
        actions.user.variable_wait(500)

    def winding_path_back():
        """walk back towards town on the winding path"""
        actions.key("tab:down")
        actions.user.diagonal_walk("down", 40)
        actions.user.diagonal_walk("up right", 5)
        actions.user.diagonal_walk("right", 5)
        actions.user.diagonal_walk("down", 30)
        actions.user.diagonal_walk("right", 20)
        actions.key("tab:up")
        
    def bedtime_for_bracers():
        """go home to bed"""
        actions.key("tab:down")
        actions.user.diagonal_walk("left", 3)
        actions.user.diagonal_walk("up", 35)
        actions.user.variable_walk("up right", 2)
        actions.user.diagonal_walk("right up", 8)
        actions.user.diagonal_walk("up left", 2)
        actions.user.variable_walk("left up left", 2)
        actions.user.variable_walk("up", 1)
        actions.key("tab:up")
        actions.user.variable_walk("right", 1)
        actions.key("space:2")

    def wake_time_for_bracers():
        """get out of bed and go back to the path"""
        actions.key("tab:down")
        actions.user.diagonal_walk("right", 5)
        actions.user.diagonal_walk("down", 3)
        actions.user.diagonal_walk("up right", 4)
        actions.user.diagonal_walk("down left", 5)
        actions.user.diagonal_walk("down", 3)
        actions.user.variable_wait(1000)
        actions.key("x")
        actions.user.diagonal_walk("down", 33)
        actions.key("tab:up")
        actions.user.variable_wait(500)

trails_character_list = {
    "Estelle": {"menu_location": (200, 200)},
    "Joshua": {"menu_location": (200, 350)},
    "Schera": {"menu_location": (200, 500)},
    "Olivier": {"menu_location": (200, 650)},
}
context.lists["user.trails_characters"] = list(trails_character_list.keys()) 
module.list("trails_characters", desc="List of party characters and trails in the sky linked to information dictionaries") 
@module.capture(rule=("{user.trails_characters}"))
def trails_characters(m) -> str:
    return str(m) #return just the character name because the dictionary will be parsed in another python script anyway

trails_equipment_list = {
    "weapon": {"menu_location": (1370, 195)},
    "armor": {"menu_location": (1370, 230)},
    "boots": {"menu_location": (1370, 265)},
    "one": {"menu_location": (1370, 300)},
    "two": {"menu_location": (1370, 335)},
}

context.lists["user.trails_equipment"] = list(trails_equipment_list.keys()) 
module.list("trails_equipment", desc="list of trails in the sky equipment in order for easy access") 
@module.capture(rule=("{user.trails_equipment}"))
def trails_equipment(m) -> str: 
    return str(m)