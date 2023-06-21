scoreboard players add @s stellarity.eol.attack_duration 1
scoreboard players add #sun_dance stellarity.misc 1

execute if score #sun_dance stellarity.misc matches 97.. run scoreboard players reset #sun_dance stellarity.misc

execute if score @s stellarity.eol.attack_duration matches 1 rotated ~ 0 run function stellarity:mobs/eol/attacks/code/sun_dance/telegraph 
execute if score @s stellarity.eol.attack_duration matches 1 rotated ~60 0 run function stellarity:mobs/eol/attacks/code/sun_dance/telegraph 
execute if score @s stellarity.eol.attack_duration matches 1 rotated ~120 0 run function stellarity:mobs/eol/attacks/code/sun_dance/telegraph 
execute if score @s stellarity.eol.attack_duration matches 1 rotated ~180 0 run function stellarity:mobs/eol/attacks/code/sun_dance/telegraph
execute if score @s stellarity.eol.attack_duration matches 1 rotated ~240 0 run function stellarity:mobs/eol/attacks/code/sun_dance/telegraph 
execute if score @s stellarity.eol.attack_duration matches 1 rotated ~300 0 run function stellarity:mobs/eol/attacks/code/sun_dance/telegraph

# Accelerating
execute if score @s stellarity.eol.attack_duration matches 41..50 run tp @s ~ ~ ~ ~0 ~
execute if score @s stellarity.eol.attack_duration matches 51..60 run tp @s ~ ~ ~ ~.4 ~
execute if score @s stellarity.eol.attack_duration matches 61..70 run tp @s ~ ~ ~ ~.8 ~
execute if score @s stellarity.eol.attack_duration matches 71..80 run tp @s ~ ~ ~ ~1.2 ~
execute if score @s stellarity.eol.attack_duration matches 81..90 run tp @s ~ ~ ~ ~1.6 ~
execute if score @s stellarity.eol.attack_duration matches 91..100 run tp @s ~ ~ ~ ~2 ~
execute if score @s stellarity.eol.attack_duration matches 101..110 run tp @s ~ ~ ~ ~2.4 ~
execute if score @s stellarity.eol.attack_duration matches 111..120 run tp @s ~ ~ ~ ~2.8 ~
execute if score @s stellarity.eol.attack_duration matches 121..130 run tp @s ~ ~ ~ ~3.2 ~
execute if score @s stellarity.eol.attack_duration matches 131..140 run tp @s ~ ~ ~ ~3.6 ~
# Max rotation speed
execute if score @s stellarity.eol.attack_duration matches 141..150 run tp @s ~ ~ ~ ~4 ~
# Deccelerating
execute if score @s stellarity.eol.attack_duration matches 151..160 run tp @s ~ ~ ~ ~3.6 ~
execute if score @s stellarity.eol.attack_duration matches 161..170 run tp @s ~ ~ ~ ~3.2 ~
execute if score @s stellarity.eol.attack_duration matches 171..180 run tp @s ~ ~ ~ ~2.8 ~
execute if score @s stellarity.eol.attack_duration matches 181..190 run tp @s ~ ~ ~ ~2.4 ~
execute if score @s stellarity.eol.attack_duration matches 191..200 run tp @s ~ ~ ~ ~2 ~
execute if score @s stellarity.eol.attack_duration matches 201..210 run tp @s ~ ~ ~ ~1.6 ~
execute if score @s stellarity.eol.attack_duration matches 211..220 run tp @s ~ ~ ~ ~1.2 ~
execute if score @s stellarity.eol.attack_duration matches 221..230 run tp @s ~ ~ ~ ~0.8 ~
execute if score @s stellarity.eol.attack_duration matches 231..240 run tp @s ~ ~ ~ ~0.4 ~
execute if score @s stellarity.eol.attack_duration matches 241..250 run tp @s ~ ~ ~ ~0 ~

# Rays
execute if score @s stellarity.eol.attack_duration matches 41.. rotated ~ 0 run function stellarity:mobs/eol/attacks/code/sun_dance/ray 
execute if score @s stellarity.eol.attack_duration matches 41.. rotated ~60 0 run function stellarity:mobs/eol/attacks/code/sun_dance/ray 
execute if score @s stellarity.eol.attack_duration matches 41.. rotated ~120 0 run function stellarity:mobs/eol/attacks/code/sun_dance/ray 
execute if score @s stellarity.eol.attack_duration matches 41.. rotated ~180 0 run function stellarity:mobs/eol/attacks/code/sun_dance/ray 
execute if score @s stellarity.eol.attack_duration matches 41.. rotated ~240 0 run function stellarity:mobs/eol/attacks/code/sun_dance/ray 
execute if score @s stellarity.eol.attack_duration matches 41.. rotated ~300 0 run function stellarity:mobs/eol/attacks/code/sun_dance/ray 

execute if score @s stellarity.eol.attack_duration matches 261.. run kill @s
execute if score @s stellarity.eol.attack_duration matches 261.. run scoreboard players reset #telegraph stellarity.misc

# Sounds
execute if score @s stellarity.eol.attack_duration matches 1 run playsound entity.shulker.shoot hostile @a ~ ~ ~ 3 1

execute if score @s stellarity.eol.attack_duration matches 40 run playsound block.beacon.activate hostile @a ~ ~ ~ 3 1
execute if score @s stellarity.eol.attack_duration matches 40 run playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1

execute if score @s stellarity.eol.attack_duration matches 40 run playsound block.beacon.ambient hostile @a ~ ~ ~ 3 1
execute if score @s stellarity.eol.attack_duration matches 100 run playsound block.beacon.ambient hostile @a ~ ~ ~ 3 1
execute if score @s stellarity.eol.attack_duration matches 160 run playsound block.beacon.ambient hostile @a ~ ~ ~ 3 1
