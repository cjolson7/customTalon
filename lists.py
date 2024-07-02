from talon import Module, Context, actions

module = Module()
context = Context()

#apps I want to go back to and then turn Talon on
apps_to_return_to = {
   "loathing": "Shadows Over Loathing.exe",
   "firefox": "Firefox",
   "gremlin": "joystick_gremlin.exe",
   "code": "Visual Studio Code"
}
context.lists["user.app_return"] = list(apps_to_return_to.keys()) 
module.list("app_return", desc="List of apps to recognize in a 'return and turn on' command")
@module.capture(rule=("{user.app_return}"))
def app_return(m) -> str:
    return (apps_to_return_to[str(m)])

syntax_list = {
    "sleep": "sleep(100ms)",
    "control": "ctrl",
    "command": "cmd",
    "death": "def",
    "def": "def",
    "integer": "int",
    "string": "str",
    "variable wait": "user.variable_wait(100)" 
}
context.lists["user.coding_syntax"] = list(syntax_list.keys()) 
module.list("coding_syntax", desc="List of coding syntax to be recognized while writing code")
@module.capture(rule=("{user.coding_syntax}"))
def coding_syntax(m) -> str:
    return (syntax_list[str(m)])


@module.action_class
class Actions:
    def try_mute():
        """Tries to mute discord and moves on if discord is not focused."""
        try: actions.user.discord_mute()
        except: print("Discord not focused")