particle minecraft:cloud ~ ~ ~ 0 0 0 0.5 500 force
playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 6 .7

# Drops Ender Insignia and makes it slowly glide downwards
# The gilde took way longer than the code for the item
loot spawn ~ ~ ~ loot stellarity:mobs/ender_dragon
execute as @e[type=item,distance=..1] run data merge entity @s {Motion:[0.0d,-0.6d,0.0d],NoGravity:1b,Glowing:1b}
execute as @e[type=item,distance=..1] run team join stellarity.purple_glow @s

kill @s
