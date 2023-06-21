scoreboard players add @s stellarity.eol.attack_duration 1

execute if entity @s[tag=stellarity.eol.dash] run function stellarity:mobs/eol/attacks/code/dash/move

execute if entity @s[tag=stellarity.eol.dash] unless block ^ ^ ^3 #stellarity:non_solid run function stellarity:mobs/eol/attacks/code/dash/found_block
execute if score @s stellarity.eol.attack_duration matches 21.. run tag @s remove stellarity.eol.dash
execute if score @s stellarity.eol.attack_duration matches 21.. run tag @s remove stellarity.eol.no_rotate
