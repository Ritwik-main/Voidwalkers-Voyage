tag @s remove stellarity.eol.attack_ready

scoreboard players add @s stellarity.eol.attack_cycle 1
execute if score @s stellarity.eol.attack_cycle matches 17 run scoreboard players set @s stellarity.eol.attack_cycle 1

scoreboard players reset @s stellarity.eol.attack_duration


execute if score @s stellarity.eol.attack_cycle matches 1 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 2 run function stellarity:mobs/eol/attacks/ethereal_lance_2
execute if score @s stellarity.eol.attack_cycle matches 3 run function stellarity:mobs/eol/attacks/prismatic_bolts
execute if score @s stellarity.eol.attack_cycle matches 4 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 5 run function stellarity:mobs/eol/attacks/dash
execute if score @s stellarity.eol.attack_cycle matches 6 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 7 run function stellarity:mobs/eol/attacks/everlasting_rainbow
execute if score @s stellarity.eol.attack_cycle matches 8 run function stellarity:mobs/eol/attacks/prismatic_bolts
#execute if score @s stellarity.eol.attack_cycle matches 9 at @p run function stellarity:mobs/eol/attacks/teleport
#execute if score @s stellarity.eol.attack_cycle matches 10 run function stellarity:mobs/eol/attacks/sun_dance
execute if score @s stellarity.eol.attack_cycle matches 9 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 10 run function stellarity:mobs/eol/attacks/dash
execute if score @s stellarity.eol.attack_cycle matches 11 run function stellarity:mobs/eol/attacks/ethereal_lance
execute if score @s stellarity.eol.attack_cycle matches 12 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 13 run function stellarity:mobs/eol/attacks/dash
execute if score @s stellarity.eol.attack_cycle matches 14 run function stellarity:mobs/eol/attacks/prismatic_bolts_2
