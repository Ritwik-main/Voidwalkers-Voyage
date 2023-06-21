# This happens every 5 seconds btw

playsound block.beacon.ambient block @a ~ ~ ~ .4 0
execute if predicate stellarity:utils/chance/10percent run playsound minecraft:entity.ender_dragon.growl block @a ~ ~ ~ 0.0026 1
execute if predicate stellarity:utils/chance/25percent run playsound block.portal.ambient block @a ~ ~ ~ .2 .75

scoreboard players reset @s stellarity.misc
