############################################################
# Calculates resistance into the damage formula
############################################################

# Get the amplifier
execute store result score #temp_0 stellarity.misc run data get entity @s ActiveEffects[{Id:11}].Amplifier
scoreboard players add #temp_0 stellarity.misc 1


# Subtract the amplifier from 5 to get the proper fraction (for example, 4 -> 1, or 1/5 damage amount)
scoreboard players set #temp_1 stellarity.misc 5
scoreboard players operation #temp_1 stellarity.misc -= #temp_0 stellarity.misc

scoreboard players operation #damage stellarity.misc *= #temp_1 stellarity.misc
scoreboard players operation #damage stellarity.misc /= #5 stellarity.misc
