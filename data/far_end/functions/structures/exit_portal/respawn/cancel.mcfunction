execute if entity @e[tag=stellarity.aota_activated] run function far_end:structures/exit_portal/activated/generate
execute unless entity @e[tag=stellarity.aota_activated] run function far_end:structures/exit_portal/deactivated/generate

execute as @e[type=end_crystal,predicate=stellarity:locations/in_the_end] at @s run function stellarity:visuals/dragon_respawn_animation/crystal_transition

scoreboard players reset @s fe.timer
tag @s remove fe.respawn

kill @e[type=marker,tag=stellarity.dragon_respawn.marker]
kill @e[type=marker,tag=stellarity.dragon_respawn.beam]

setblock 0 63 0 bedrock 
