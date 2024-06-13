from talon import Module, Context, actions

module = Module()
context = Context()
context.matches = r"""
app: Discord.exe 
"""

@module.action_class
class Actions:
    def custom_navigator(type: str, destination: str):
        """Auto navigates to a specific server, user, channel, or other discord location based on custom user input."""
        actions.user.discord_quick_switcher(type, destination)
        actions.sleep("200ms")
        actions.key("enter")

reactions_list = {
    'tada': 'tada', 
    'one hundred': 'hundred'
}
context.lists["user.custom_reactions"] = list(reactions_list.keys()) #provide key list to talon for commands

module.list("custom_reactions", desc="Common reactions that are provided to talon for easier discord recognition")
@module.capture(rule=("{user.custom_reactions}"))
def custom_reactions(m) -> str:
    return (reactions_list[str(m)])

#custom server, user, etc lists
servers_list = {
    "tiny server": "generic server name",
    "tiny": "generic server name",
    "friend": "More Friends",
    "friends": "More Friends",
    "phoenix": "rose and ",
    "remark": "unremarkable discord server",
    "unremarkable": "unremarkable discord server",
    "big server": "hote support group",
    "support": "hote support group",
    "accidental": "accidental optimism",
    "optimism": "accidental optimism",
    "reck room": "rec room",
    "rec room": "rec room",
    "room": "rec room",
    "clock": "clockie talkie",
    "clocky": "clockie talkie",
    "clockie talkie": "clockie talkie",
    "dragon": "dragon car",
    "layer": "dragon's lair",
    "lair": "dragon's lair",
}
context.lists["user.discord_servers"] = list(servers_list.keys()) 
module.list("discord_servers", desc="Common names for discord servers")
@module.capture(rule=("{user.discord_servers}"))
def discord_servers(m) -> str:
    return (servers_list[str(m)])

users_list = {  
   "Gene": "GeneM" ,
   "generic": "generic",
   "verity": "algebrainz"
}
context.lists["user.discord_users"] = list(users_list.keys()) 
module.list("discord_users", desc="Common names for discord users")
@module.capture(rule=("{user.discord_users}"))
def discord_users(m) -> str:
    return (users_list[str(m)])

channels_list = {
   "wiki": "wiki-discussion",
   "bookclub": "bookclub-discussions"
}
context.lists["user.discord_channels"] = list(channels_list.keys()) 
module.list("discord_channels", desc="Common names for discord users")
@module.capture(rule=("{user.discord_channels}"))
def discord_channels(m) -> str:
    return (channels_list[str(m)])

voice_list = {
   "clocky": "general clockie",
   "clocky talky": "general clockie",
   "tiny": "general generic server name",
   "support": "Voice Chat support"
}
context.lists["user.discord_voice_channels"] = list(voice_list.keys()) 
module.list("discord_voice_channels", desc="Common names for discord users")
@module.capture(rule=("{user.discord_voice_channels}"))
def discord_voice_channels(m) -> str:
    return (voice_list[str(m)])

generic_list = {
   "wind spirit": "wind spirit support group",
   "skeleton organizing": "skeleton organizing"
}
context.lists["user.discord_generic_destinations"] = list(generic_list.keys()) 
module.list("discord_generic_destinations", desc="Common names for discord users")
@module.capture(rule=("{user.discord_generic_destinations}"))
def discord_generic_destinations(m) -> str:
    return (generic_list[str(m)])