############################################################
# Calculates the damage a player has to have
############################################################

execute store result score @s stellarity.misc run attribute @s minecraft:generic.max_health get 10
execute store result score @s stellarity.misc2 run data get entity @s Health 10
execute if score #damage stellarity.misc >= @s stellarity.misc2 run function stellarity:utils/damage/death
scoreboard players operation @s stellarity.misc -= @s stellarity.misc2
scoreboard players operation @s stellarity.misc += #damage stellarity.misc
