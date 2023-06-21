tellraw @s [{"text":"F","color":"#f100f1"},{"text":"o","color":"#eb00eb"},{"text":"k","color":"#e600e6"},{"text":"a","color":"#e000e0"},{"text":"S","color":"#db00db"},{"text":"t","color":"#d600d6"},{"text":"u","color":"#d000d0"},{"text":"d","color":"#cb00cb"},{"text":"i","color":"#c500c5"},{"text":"o","color":"#c000c0"},{"text":"'","color":"#bb00bb"},{"text":"s ","color":"#b500b5"},{"text":"E","color":"#b000b0"},{"text":"n","color":"#aa00aa"},{"text":"d","color":"#a500a5"},{"text":"e","color":"#a000a0"},{"text":"r ","color":"#9a009a"},{"text":"E","color":"#950095"},{"text":"x","color":"#8f008f"},{"text":"p","color":"#8a008a"},{"text":"a","color":"#850085"},{"text":"n","color":"#7f007f"},{"text":"s","color":"#7a007a"},{"text":"i","color":"#740074"},{"text":"o","color":"#6f006f"},{"text":"n","color":"#6a006a"},{"text":"'s","color":"white"}," ",{"text":"Configuration","color":"white"}]

tellraw @s ["\n",{"text":"1","color":"green"},{"text":" stands for ","color":"white"},{"text":"Enabled","color":"green"},{"text":",\nwhile ","color":"white"},{"text":"0","color":"red"},{"text":" is ","color":"white"},{"text":"Disabled","color":"red"},"\n\n",{"text":"Click config entries' names to edit them","color":"white"}]

# TEMPLATE
#tellraw @s {"text":"","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "stellarity.config.X","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"},"\n",{"text":"Default: ","color":"#C8ADD6"},{"text":"Enabled/Disabled","color":"#91FF7B/#FF7B7B"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set #stellarity.config stellarity.config.X "}}
#tellraw @s {"text":"","color":"#C8ADD6"}
#execute if score #stellarity.config stellarity.config.X matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
#execute if score #stellarity.config stellarity.config.X matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
#tellraw @s " "

tellraw @s {"text":"Join Message","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "stellarity.config.join_message","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"},"\n",{"text":"Default: ","color":"#C8ADD6"},{"text":"Enabled","color":"#91FF7B"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set #stellarity.config stellarity.config.join_message "}}
tellraw @s [{"text":"Whether to send a short message about Stellarity being loaded properly upon entering this world","color":"#C8ADD6"}]
execute if score #stellarity.config stellarity.config.join_message matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score #stellarity.config stellarity.config.join_message matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "

tellraw @s {"text":"Always Generate Egg","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "stellarity.config.always_generate_egg","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"},"\n",{"text":"Default: ","color":"#C8ADD6"},{"text":"Disabled","color":"#FF7B7B"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set #stellarity.config stellarity.config.always_generate_egg "}}
tellraw @s {"text":"Whether to generate Dragon Egg only once upon first kill, or to always generate it regardless","color":"#C8ADD6"}
execute if score #stellarity.config stellarity.config.always_generate_egg matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score #stellarity.config stellarity.config.always_generate_egg matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "

execute unless score #stellarity.is_fabric stellarity.misc matches 1 unless score #stellarity.is_forge stellarity.misc matches 1 run tellraw @s {"text":"Custom End Music","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "stellarity.config.custom_music","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"},"\n",{"text":"Default: ","color":"#C8ADD6"},{"text":"Disabled","color":"#FF7B7B"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set #stellarity.config stellarity.config.custom_music "}}
execute unless score #stellarity.is_fabric stellarity.misc matches 1 unless score #stellarity.is_forge stellarity.misc matches 1 run tellraw @s {"text":"Replaces default End Music with custom one. Requires a resource pack that I am still yet to make, so this setting is useless for now","color":"#C8ADD6"}
execute unless score #stellarity.is_fabric stellarity.misc matches 1 unless score #stellarity.is_forge stellarity.misc matches 1 run execute if score #stellarity.config stellarity.config.custom_music matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute unless score #stellarity.is_fabric stellarity.misc matches 1 unless score #stellarity.is_forge stellarity.misc matches 1 run execute if score #stellarity.config stellarity.config.custom_music matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
execute unless score #stellarity.is_fabric stellarity.misc matches 1 unless score #stellarity.is_forge stellarity.misc matches 1 run tellraw @s " "

tellraw @s " "
tellraw @s " "
tellraw @s {"text":"Scroll to the top for a short tutorial on how to configurate some parts of this Datapack!","color":"#E0ACE9"}
