execute in minecraft:the_end run function stellarity:mechanics/gamerules/change

execute if score #stellarity.config stellarity.config.join_message matches 1 run tellraw @a ["\n",{"translate":"stellarity.messages.load.spigot","fallback":"Spigot/Paper detected!\nAutomatically changing certain gamerules in The End!","color":"#FFD25B"},"\n"]
