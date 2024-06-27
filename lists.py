from talon import Module, Context, actions

module = Module()
context = Context()

#games I want togo back to and turn Talon on
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

@module.action_class
class Actions:
    def try_mute():
        """Tries to mute discord and moves on if discord is not focused."""
        try: actions.user.discord_mute()
        except: print("Discord not focused")