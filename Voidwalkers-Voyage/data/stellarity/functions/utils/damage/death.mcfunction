############################################################
# Kills the player if their health is too low
############################################################

tag @s add stellarity.dead
tag @s remove stellarity.tag
tag @s[predicate=stellarity:utils/totem/holding] add stellarity.tag
scoreboard players reset @s stellarity.misc
execute store result score @s stellarity.misc run gamerule showDeathMessages
execute if entity @s[tag=!stellarity.tag,scores={stellarity.misc=1}] if data entity @s Owner run gamerule showDeathMessages false
execute if entity @s[tag=!stellarity.tag,scores={stellarity.misc=1},type=player] run gamerule showDeathMessages false

effect give @s[type=!#stellarity:undead,tag=stellarity.tag] instant_damage 1 100 true
effect give @s[type=#stellarity:undead,tag=stellarity.tag] instant_health 1 100 true

kill @s[tag=!stellarity.tag]

execute if entity @s[tag=stellarity.tag,tag=stellarity.damage.tamaris_execute] as @p[tag=stellarity.items.tamaris.doing_execute] at @s run function stellarity:items/tamaris/execute/fail
execute if entity @s[type=player,tag=stellarity.holy_protection,tag=stellarity.damage.tamaris_execute] as @p[tag=stellarity.items.tamaris.doing_execute] at @s run function stellarity:items/tamaris/execute/fail

scoreboard players set #show_death_message stellarity.misc 0
execute if data entity @s Owner run scoreboard players set #show_death_message stellarity.misc 1
execute if entity @s[type=player] run scoreboard players set #show_death_message stellarity.misc 1

# Debug
# Uncomment this line when needed
# VVVVV
#scoreboard players set #show_death_message stellarity.misc 1

execute if entity @s[tag=!stellarity.tag,scores={stellarity.misc=1}] if score #show_death_message stellarity.misc matches 1 run function stellarity:utils/damage/death_messages

tag @s remove stellarity.tag

execute if score @s stellarity.misc matches 1 run gamerule showDeathMessages true
