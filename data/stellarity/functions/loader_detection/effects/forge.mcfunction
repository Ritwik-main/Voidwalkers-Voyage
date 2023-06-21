scoreboard players set #stellarity.config stellarity.config.custom_music 1

execute if score #stellarity.config stellarity.config.join_message matches 1 run tellraw @a ["\n",{"translate":"stellarity.messages.load.forge","fallback":"Forge Mod Loader detected!\nActivating custom music in The End automatically!","color":"#FFD25B"},"\n"]
