tag @s remove stellarity.eol.phase_1
tag @s add stellarity.eol.phase_2

particle explosion_emitter ~ ~1 ~

playsound minecraft:entity.allay.item_given hostile @a ~ ~1 ~ 2.2 0.8
playsound minecraft:entity.generic.explode hostile @a ~ ~1 ~ 2.2 1
playsound minecraft:item.trident.riptide_3 hostile @a ~ ~1 ~ 2.2 0.7

execute if entity @s[tag=stellarity.eol.daytime] run function stellarity:mobs/eol/animations/phase2/time/day
execute if entity @s[tag=stellarity.eol.nighttime] run function stellarity:mobs/eol/animations/phase2/time/night
