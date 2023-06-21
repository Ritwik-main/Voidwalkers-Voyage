function stellarity:mobs/stronghold/main

# Moved from visuals/main
execute as @e[type=marker,tag=stellarity.altar_of_accursed,predicate=stellarity:utils/chance/3percent,tag=stellarity.aota_activated] at @s run function stellarity:visuals/altar_of_the_accursed/soul_escape

# Moved from far_end:structures/check
execute as @e[type=minecraft:end_crystal,predicate=stellarity:utils/exit_portal_crystal] at @s run function far_end:structures/replace/exit_portal

execute as @e[type=slime,tag=stellarity.gloop] at @s run function stellarity:mobs/gloop/main

# End Portal noises
execute as @e[type=marker,tag=stellarity.end_portal] at @s run function stellarity:visuals/end_portal_animation/ambient_sounds

schedule function stellarity:loops/5_second 5s
