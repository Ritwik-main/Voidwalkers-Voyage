############################################################
# Calculates protection into the damage formula
############################################################

# Get all armor values and add them together
execute if entity @s[type=player] run function stellarity:utils/damage/operations/get_protection/player
execute if entity @s[type=!player] run function stellarity:utils/damage/operations/get_protection/entity

# Armor Penetration calculations
# 100x
scoreboard players operation #temp stellarity.misc = #temp_1 stellarity.misc
scoreboard players operation #temp stellarity.misc *= #100 stellarity.misc
# yx
scoreboard players operation #temp2 stellarity.misc = #armor_penetration stellarity.misc
scoreboard players operation #temp2 stellarity.misc *= #temp_1 stellarity.misc
# 100x - yx
scoreboard players operation #temp stellarity.misc -= #temp2 stellarity.misc
# /100
scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc
scoreboard players operation #temp_1 stellarity.misc = #temp stellarity.misc

# Make the damage number based on that

  # Multiply by 100 to maintain precision
scoreboard players operation #temp_1 stellarity.misc *= #100 stellarity.misc
  # Divide by 25 per the formula
scoreboard players operation #temp_1 stellarity.misc /= #25 stellarity.misc

  # Then subtract it all from 1 (100)

scoreboard players set #temp_0 stellarity.misc 100
scoreboard players operation #temp_0 stellarity.misc -= #temp_1 stellarity.misc

  # Multiply the damage by the end result, then divide by 100 to get proper precision back.
scoreboard players operation #damage stellarity.misc *= #temp_0 stellarity.misc
scoreboard players operation #damage stellarity.misc /= #100 stellarity.misc
