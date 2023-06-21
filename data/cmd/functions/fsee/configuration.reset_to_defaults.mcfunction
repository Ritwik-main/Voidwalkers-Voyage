scoreboard players set #stellarity.config stellarity.config.custom_music 0
scoreboard players set #stellarity.config stellarity.config.join_message 1
scoreboard players set #stellarity.config stellarity.config.enter_end_effects.flavor_text 1
scoreboard players set #stellarity.config stellarity.config.enter_end_effects.sounds 1
scoreboard players set #stellarity.config stellarity.config.auto_butcher.phantoms 0
scoreboard players set #stellarity.config stellarity.config.auto_butcher.silverfish 0
scoreboard players set #stellarity.config stellarity.config.change_gamerules 0
scoreboard players set #stellarity.config stellarity.config.always_generate_egg 0

tellraw @s ["\n",{"translate":"stellarity.messages.cmd.reset_config_to_default","fallback":"All configs were reset to default!","color":"#DD6AFF","bold":true},"\n"]
