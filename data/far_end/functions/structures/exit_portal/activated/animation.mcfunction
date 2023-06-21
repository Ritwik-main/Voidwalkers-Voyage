### Timer ###
scoreboard players add @s fe.timer 1

# - bossbar disable
execute if score @s fe.timer matches ..200 run bossbar set stellarity:crystal_count players
# - save dragon kill count
execute if score @s fe.timer matches 1 as @s run scoreboard players add @s fe.variable 1

# - death delay
execute if score @s fe.timer matches 200.. run function stellarity:mobs/dragon/death_finish

# stellarity's sound effects and bonus particles
execute as @e[type=marker,tag=stellarity.dragon_marker] at @s run tp @s ~ ~0.125 ~

execute as @e[type=marker,tag=stellarity.dragon_marker] at @s if predicate stellarity:utils/chance/33percent run execute as @e[type=marker,tag=stellarity.dragon_marker] at @s run particle flash ~ ~ ~ 3.5 3.5 3.5 0 2 force
execute as @e[type=marker,tag=stellarity.dragon_marker] at @s if predicate stellarity:utils/chance/9percent run playsound entity.generic.explode master @a ~ ~ ~ 2.5 1
