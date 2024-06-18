#extra system and engine specifications to assert override
speech.engine: wav2letter
mode: sleep
not mode: sleep
not speech.engine: dragon
-
# The optional <phrase> afterwards allows these to match even if you say arbitrary text
# after this command, without having to wait for the speech timeout.

# This is handy because you often need to put Talon asleep in order to immediately
# talk to humans, and it's annoying to have to say "sleep all", wait for the timeout,
# and then resume your conversation.

# With this, you can say "sleep all hey bob" and Talon will immediately go to
# sleep and ignore "hey bob". Note that subtitles will show "sleep all hey bob",
# because it's part of the rule definition, but "hey bob" will be ignored, because
# we don't do anything with the <phrase> in the body of the command.

# Because this is a custom override, talon will use these sleep commands instead of the community ones.
# Currently the only difference is the extra commands to disable flex grid.

^go to sleep [<phrase>]$: 
    user.flex_grid_deactivate()
    speech.disable()
^talon sleep [<phrase>]$: 
    user.flex_grid_deactivate()
    speech.disable()

^sleep all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()

discord (return|mute): 
    user.talon_mode()
    user.switcher_focus("Discord")
    user.discord_mute()
    
<user.app_return> return: 
    user.talon_mode()
    user.try_mute()
    user.switcher_focus(user.app_return)