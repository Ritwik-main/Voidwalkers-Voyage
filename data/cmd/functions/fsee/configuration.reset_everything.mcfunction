scoreboard players reset #stellarity.config stellarity.config.custom_music
scoreboard players reset #stellarity.config stellarity.config.join_message
scoreboard players reset #stellarity.config stellarity.config.enter_end_effects.flavor_text
scoreboard players reset #stellarity.config stellarity.config.enter_end_effects.sounds
scoreboard players reset #stellarity.config stellarity.config.auto_butcher.phantoms
scoreboard players reset #stellarity.config stellarity.config.auto_butcher.silverfish
scoreboard players reset #stellarity.config stellarity.config.change_gamerules
scoreboard players reset #stellarity.config stellarity.config.always_generate_egg

reload

tellraw @s ["\n",{"translate":"stellarity.messages.cmd.reset_config","fallback":"All configs were reset completely!","color":"#DD6AFF","bold":true},"\n"]
function stellarity:utils/send_command_feedback/off
