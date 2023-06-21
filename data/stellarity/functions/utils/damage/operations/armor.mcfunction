############################################################
# Calculates armor into the damage formula
############################################################

# #damage stellarity.misc: damage to add to entity, to 1 decimal place (x10)


  ## https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/0e/ArmorDamageFormula.svg/revision/latest/scale-to-width-down/668?cb=20190728042948
  ## FORMULA:
  ## damage = damage * (1 - (min(20,max(armor ÷ 5 , ATF))) ÷ 25)


  # Create value for first portion of max(armor ÷ 5, ATF)
  # This leads to armor ÷ 5 being stored in #temp_2

scoreboard players operation #temp_0 stellarity.misc = #armor stellarity.misc
scoreboard players operation #temp_2 stellarity.misc = #temp_0 stellarity.misc
scoreboard players operation #temp_2 stellarity.misc /= #5 stellarity.misc


 ##### SEPARATOR SO YOUR BRAIN DOESN'T MELT

  # Create values for second portion of max(armor ÷ 5, ATF) (ATF)
  # This is the armor toughness formula calculation. It is nasty.
  # It is equal to: (armor - damage ÷ (2 + (toughness ÷ 4)))



  # Assign Temporary Values from the semi-permanent values.

  # Armor
scoreboard players operation #temp_3 stellarity.misc = #temp_0 stellarity.misc
  # Damage
scoreboard players operation #temp_4 stellarity.misc = #damage stellarity.misc
  # Armor Toughness
scoreboard players operation #temp_5 stellarity.misc = #armor_toughness stellarity.misc


  # Divide by 4 (working inside -> out), so (toughness ÷ 4) first.
  # #4 always has the value of 4.

scoreboard players operation #temp_5 stellarity.misc /= #4 stellarity.misc


  # Then we add 2 to that, again working inside -> out. (2 + (toughness ÷ 4))

scoreboard players add #temp_5 stellarity.misc 20


  # Then, divide the damage by that value. (damage ÷ (2 + (toughness ÷ 4)))

scoreboard players operation #temp_4 stellarity.misc /= #temp_5 stellarity.misc
scoreboard players operation #temp_4 stellarity.misc *= #10 stellarity.misc

  # Then subtract that value from armor, and you have the final result of the armor toughness formula.

scoreboard players operation #temp_3 stellarity.misc -= #temp_4 stellarity.misc

 ##### SEPARATOR SO YOUR BRAIN DOESN'T MELT



 # The next portion of this massive garbage heap of a formula. The max(armor ÷ 5, ATF). We've already calculated both, so we can just put them in here, and take the greatest one.
 # #temp_2 = armor ÷ 5
 # #temp_3 = Armor Toughness Formula results

execute if score #temp_3 stellarity.misc > #temp_2 stellarity.misc run scoreboard players operation #temp_2 stellarity.misc = #temp_3 stellarity.misc


 # Then the next part, the min(20, max(whatever was in last step)). If >20, it equals 20.
 # #temp_2 = The results from last step, carried over.

execute if score #temp_2 stellarity.misc matches 200.. run scoreboard players set #temp_2 stellarity.misc 200



 # The REALLY MESSY MATH

  # Multiply by 10 to maintain precision
scoreboard players operation #temp_2 stellarity.misc *= #10 stellarity.misc
  # Divide by 25 per the formula
scoreboard players operation #temp_2 stellarity.misc /= #25 stellarity.misc

  # Then subtract it all from 1 (100)

scoreboard players set #temp_0 stellarity.misc 100
scoreboard players operation #temp_0 stellarity.misc -= #temp_2 stellarity.misc

  # Multiply the damage by the end result, then divide by 100 to get proper precision back.
scoreboard players operation #damage stellarity.misc *= #temp_0 stellarity.misc
scoreboard players operation #damage stellarity.misc /= #100 stellarity.misc
