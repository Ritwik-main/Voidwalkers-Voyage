# #damage stellarity.misc: damage to add to entity, to 1 decimal place
# #armor_penetration stellarity.misc: how much damage (%) should ignore armor

# Set variables to default values if they are not present
execute unless score #ignore_iframes stellarity.misc matches ..2147483647 run scoreboard players set #ignore_iframes stellarity.misc 0
execute unless score #ignore_resistance stellarity.misc matches ..2147483647 run scoreboard players set #ignore_resistance stellarity.misc 0
execute unless score #damage_type stellarity.misc matches ..2147483647 run scoreboard players set #damage_type stellarity.misc 0
execute unless score #damage_effect stellarity.misc matches ..2147483647 run scoreboard players set #damage_effect stellarity.misc 0

## Insert Armor Values (Not part of formula)
execute store result score #armor stellarity.misc run attribute @s minecraft:generic.armor get 10
execute store result score #armor_toughness stellarity.misc run attribute @s minecraft:generic.armor_toughness get 10

# Constants
scoreboard players set #5 stellarity.misc 5
scoreboard players set #4 stellarity.misc 4
scoreboard players set #25 stellarity.misc 25
scoreboard players set #10 stellarity.misc 10
scoreboard players set #100 stellarity.misc 100

# Remove Holy Protection if a player has it
execute if entity @s[type=player,tag=stellarity.holy_protection] run function stellarity:items/armors/hallowed_armor/holy_protection/off

# Calculate Armor after Armor Penetration
# Set to 0 (no armor pen) if scoreboard is not set
execute unless score #armor_penetration stellarity.misc matches 0..100 run scoreboard players set #armor_penetration stellarity.misc 0
execute unless score #armor stellarity.misc matches 0 unless score #armor_penetration stellarity.misc matches 0 run function stellarity:utils/damage/operations/armor_penetration

execute unless score #armor stellarity.misc matches 0 unless score #armor_penetration stellarity.misc matches 100 run function stellarity:utils/damage/operations/armor
execute unless score #armor stellarity.misc matches 0 unless score #armor_penetration stellarity.misc matches 100 run function stellarity:utils/damage/operations/protection
execute unless score #ignore_resistance stellarity.misc matches 1 if data entity @s ActiveEffects[{Id:11}] if score #damage stellarity.misc matches 1.. run function stellarity:utils/damage/operations/resistance
function stellarity:utils/damage/calculate_attributes

execute unless entity @s[tag=stellarity.dead] run function stellarity:utils/damage/apply_damage
tag @s remove stellarity.dead

tag @s remove stellarity.damage.example_cause
tag @s remove stellarity.damage.sharanga_explosion
tag @s remove stellarity.damage.eol.ethereal_lance
tag @s remove stellarity.damage.eol.prismatic_bolt
tag @s remove stellarity.damage.eol.dash
tag @s remove stellarity.damage.carcanet
tag @s remove stellarity.damage.spirit_dagger
tag @s remove stellarity.damage.dragonblade
tag @s remove stellarity.damage.tamaris_execute
tag @s remove stellarity.damage.natures_wrath
tag @s remove stellarity.damage.dot.dark_decay
tag @s remove stellarity.damage.dot.prismatic_inferno
tag @s remove stellarity.damage.dot.frostburn
tag @s remove stellarity.damage.kaleidoscope

tag @e[tag=stellarity.damage.attacker] remove stellarity.damage.attacker

scoreboard players reset #armor_penetration stellarity.misc
scoreboard players reset #ignore_iframes stellarity.misc
scoreboard players reset #ignore_resistance stellarity.misc
scoreboard players reset #damage_type stellarity.misc
scoreboard players reset #damage_effect stellarity.misc
