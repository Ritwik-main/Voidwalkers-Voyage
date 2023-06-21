scoreboard players remove @s[scores={stellarity.eol.attack_cooldown=1..}] stellarity.eol.attack_cooldown 1
execute if score @s stellarity.eol.attack_cooldown matches 0 run function stellarity:mobs/eol/attacks/decide/is_phase_2_transition

execute if entity @s[tag=stellarity.eol.dash] run function stellarity:mobs/eol/attacks/code/loops/dash
execute if entity @s[tag=stellarity.eol.prismatic_bolts] run function stellarity:mobs/eol/attacks/code/loops/prismatic_bolts
execute if entity @s[tag=stellarity.eol.ethereal_lance] run function stellarity:mobs/eol/attacks/code/loops/ethereal_lance
execute if entity @s[tag=stellarity.eol.sun_dance_scheduled,scores={stellarity.eol.attack_cooldown=271}] run function stellarity:mobs/eol/attacks/code/sun_dance/scheduled

execute if entity @s[tag=stellarity.eol.attack_ready] run function stellarity:mobs/eol/attacks/decide/decide

execute as @e[type=marker,tag=stellarity.eol.prismatic_bolt] at @s anchored eyes run function stellarity:mobs/eol/attacks/code/prismatic_bolts/loop
execute as @e[type=marker,tag=stellarity.eol.sun_dance] at @s anchored eyes run function stellarity:mobs/eol/attacks/code/loops/sun_dance
execute as @e[type=marker,tag=stellarity.eol.ethereal_lance] at @s anchored eyes run function stellarity:mobs/eol/attacks/code/ethereal_lance/sword_loop
