#Discord
os: windows
speech.engine: wav2letter
app.exe: Discord.exe
-

# general and custom reaction scripts
react [to] <user.no_spaces>: "+:{user.no_spaces}"
react [to] <user.custom_reactions>: "+:{user.custom_reactions}"

#basic location specific click scripts
disconnect: user.move_and_click(287, 917)
deafen: user.move_and_click(252, 1007)
stop streaming: user.move_and_click(287, 862)
#backup go live command for errors
go live: user.move_and_click(1137, 762)

#channel navigation
(nav|nave) up: key(alt-up)
(nav|nave) down: key(alt-down)

#channel search
server <user.discord_servers>: user.custom_navigator("*", user.discord_servers)
user <user.discord_users>: user.custom_navigator("@", user.discord_users)
voice <user.discord_voice_channels>: user.custom_navigator("!", user.discord_voice_channels)
channel <user.discord_channels>: user.custom_navigator("#", user.discord_channels)
<user.discord_generic_destinations>: user.custom_navigator("", user.discord_generic_destinations)
.
# tries to minimize and then return to discord to deal with loading issue
flicker: 
  key(win-m) 
  sleep(200ms)
  user.switcher_focus("Discord")

start streaming:
  mouse_move(287, 862)
  sleep(100ms)
  mouse_click(0)
  mouse_move(1137, 762)
  sleep(800ms)
  mouse_click(0)