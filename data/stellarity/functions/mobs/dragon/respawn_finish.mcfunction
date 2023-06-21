# Also moved from a function I do not remember at all
# I need to refactor the code from FE...
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force

execute as @e[type=marker,tag=stellarity.dragon_marker] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=marker,tag=stellarity.dragon_marker] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.5 500 force
execute as @e[type=marker,tag=stellarity.dragon_marker] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 1

kill @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal]
kill @e[type=marker,tag=stellarity.dragon_respawn.marker]
kill @e[type=marker,tag=stellarity.dragon_respawn.beam]

advancement grant @a[distance=..100,advancements={stellarity:dragons_den/final_showdown=true,minecraft:end/respawn_dragon=true}] only stellarity:dragons_den/third_times_the_charm
advancement grant @a[distance=..100,advancements={stellarity:dragons_den/final_showdown=true}] only minecraft:end/respawn_dragon
advancement grant @a[distance=..100] only stellarity:dragons_den/final_showdown

tag @s add fe.deactivated.spawn_dragon
tag @s remove fe.respawn
#tag @a remove fe.dragon_defeated

execute as @e[type=minecraft:end_crystal,predicate=stellarity:locations/in_the_end] at @s run function stellarity:visuals/dragon_respawn_animation/crystal_transition

execute in minecraft:the_end run setblock 0 63 0 bedrock

scoreboard players reset @s fe.timer
