tp @s ^ ^ ^1.5

playsound minecraft:entity.firework_rocket.launch hostile @a ~ ~1 ~ 2.2 1.3

particle firework ~ ~1 ~ 1 1 1 0.07 7 force

execute as @a[distance=..2.5,tag=!stellarity.eol,tag=!stellarity.eol.as,scores={stellarity.misc.invul_timer=0}] run function stellarity:mobs/eol/attacks/dash/damage
