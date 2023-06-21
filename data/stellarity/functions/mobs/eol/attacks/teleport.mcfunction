summon minecraft:area_effect_cloud ~ ~ ~ {Age: 0, Duration: 1, WaitTime: -2147483648, Tags: ["stellarity.eol.teleport"]}
execute as @e[type=area_effect_cloud,tag=stellarity.eol.teleport,limit=1,sort=nearest] at @s rotated as @p rotated ~ 0 run tp ~ ~ ~

execute as @e[type=area_effect_cloud,tag=stellarity.eol.teleport,limit=1,sort=nearest] at @s run tp @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] ^ ^4 ^7.5

execute as @s at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# Attack cooldown
execute if entity @s[tag=stellarity.eol.nighttime] run scoreboard players set @s stellarity.eol.attack_cooldown 15
execute if entity @s[tag=stellarity.eol.daytime] run scoreboard players set @s stellarity.eol.attack_cooldown 6
