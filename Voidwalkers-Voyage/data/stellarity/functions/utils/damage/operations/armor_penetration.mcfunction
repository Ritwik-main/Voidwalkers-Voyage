# Calculation: (100*armor - armor * apen)/100
# This is basically (armor * (apen/100)) but dum dum mojang didn't allow for decimals in scoreboards

# 100x
scoreboard players operation #temp stellarity.misc = #armor stellarity.misc
scoreboard players operation #temp stellarity.misc *= #100 stellarity.misc
# yx
scoreboard players operation #temp2 stellarity.misc = #armor_penetration stellarity.misc
scoreboard players operation #temp2 stellarity.misc *= #armor stellarity.misc
# 100x - yx
scoreboard players operation #temp stellarity.misc -= #temp2 stellarity.misc
# /100
scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc
scoreboard players operation #armor stellarity.misc = #temp stellarity.misc


##########################################
# And repeat for armor toughness as well #
##########################################

# 100x
scoreboard players operation #temp stellarity.misc = #armor_toughness stellarity.misc
scoreboard players operation #temp stellarity.misc *= #100 stellarity.misc
# yx
scoreboard players operation #temp2 stellarity.misc = #armor_penetration stellarity.misc
scoreboard players operation #temp2 stellarity.misc *= #armor_toughness stellarity.misc
# 100x - yx
scoreboard players operation #temp stellarity.misc -= #temp2 stellarity.misc
# /100
scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc
scoreboard players operation #armor_toughness stellarity.misc = #temp stellarity.misc