# Void Fishing
execute as @e[type=fishing_bobber,predicate=stellarity:locations/in_the_end,tag=!stellarity.checked_bobber,predicate=!stellarity:locations/in_dragons_den] at @s if entity @a[distance=20..23,limit=1,sort=nearest,x_rotation=0..90] run function stellarity:mechanics/void_fishing/start
execute as @e[type=area_effect_cloud,tag=stellarity.void_fishing_aec] at @s run function stellarity:mechanics/void_fishing/aec_tick

execute as @e[type=marker,tag=stellarity.altar_of_the_light] at @s unless block ~ ~-1 ~ lodestone run function stellarity:mechanics/altar_of_light/drop_self