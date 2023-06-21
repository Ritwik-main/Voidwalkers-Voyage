scoreboard players operation #damage stellarity.misc = @s stellarity.dot.prismatic_inferno.damage

scoreboard players set #armor_penetration stellarity.misc 30

scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #ignore_resistance stellarity.misc 0
scoreboard players set #damage_type stellarity.misc 1
scoreboard players set #damage_effects stellarity.misc 3

scoreboard players reset @s stellarity.dot.prismatic_inferno.progress

particle dust 0.98 0.243 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.98 0.686 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.98 0.871 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.6 0.98 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.243 0.894 0.98 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.318 0.243 0.98 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.98 0.243 0.918 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.647 0.243 0.98 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]

particle minecraft:flame ~ ~1 ~ .3 .55 .3 0.01 10 force @a[distance=..32]

playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~


# Damage cause
tag @s add stellarity.damage.dot.prismatic_inferno

function stellarity:utils/damage/calculate
