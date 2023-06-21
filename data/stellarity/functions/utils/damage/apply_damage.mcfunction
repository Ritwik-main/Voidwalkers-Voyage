############################################################
# Damages a player for one heart
############################################################

attribute @s[scores={stellarity.misc=8192..}] minecraft:generic.max_health modifier add 2-0-3-3-14 "damage_8192" -819.2 add
scoreboard players remove @s[scores={stellarity.misc=8192..}] stellarity.misc 8192

attribute @s[scores={stellarity.misc=4096..}] minecraft:generic.max_health modifier add 2-0-3-3-13 "damage_4096" -409.6 add
scoreboard players remove @s[scores={stellarity.misc=4096..}] stellarity.misc 4096

attribute @s[scores={stellarity.misc=4096..}] minecraft:generic.max_health modifier add 2-0-3-3-12 "damage_4096" -409.6 add
scoreboard players remove @s[scores={stellarity.misc=4096..}] stellarity.misc 4096

attribute @s[scores={stellarity.misc=2048..}] minecraft:generic.max_health modifier add 2-0-3-3-11 "damage_2048" -204.8 add
scoreboard players remove @s[scores={stellarity.misc=2048..}] stellarity.misc 2048

attribute @s[scores={stellarity.misc=1024..}] minecraft:generic.max_health modifier add 2-0-3-3-10 "damage_1024" -102.4 add
scoreboard players remove @s[scores={stellarity.misc=1024..}] stellarity.misc 1024

attribute @s[scores={stellarity.misc=512..}] minecraft:generic.max_health modifier add 2-0-3-3-9 "damage_512" -51.2 add
scoreboard players remove @s[scores={stellarity.misc=512..}] stellarity.misc 512

attribute @s[scores={stellarity.misc=256..}] minecraft:generic.max_health modifier add 2-0-3-3-8 "damage_256" -25.6 add
scoreboard players remove @s[scores={stellarity.misc=256..}] stellarity.misc 256

attribute @s[scores={stellarity.misc=128..}] minecraft:generic.max_health modifier add 2-0-3-3-7 "damage_128" -12.8 add
scoreboard players remove @s[scores={stellarity.misc=128..}] stellarity.misc 128

attribute @s[scores={stellarity.misc=64..}] minecraft:generic.max_health modifier add 2-0-3-3-6 "damage_64" -6.4 add
scoreboard players remove @s[scores={stellarity.misc=64..}] stellarity.misc 64

attribute @s[scores={stellarity.misc=32..}] minecraft:generic.max_health modifier add 2-0-3-3-5 "damage_32" -3.2 add
scoreboard players remove @s[scores={stellarity.misc=32..}] stellarity.misc 32

attribute @s[scores={stellarity.misc=16..}] minecraft:generic.max_health modifier add 2-0-3-3-4 "damage_16" -1.6 add
scoreboard players remove @s[scores={stellarity.misc=16..}] stellarity.misc 16

attribute @s[scores={stellarity.misc=8..}] minecraft:generic.max_health modifier add 2-0-3-3-3 "damage_8" -0.8 add
scoreboard players remove @s[scores={stellarity.misc=8..}] stellarity.misc 8

attribute @s[scores={stellarity.misc=4..}] minecraft:generic.max_health modifier add 2-0-3-3-2 "damage_4" -0.4 add
scoreboard players remove @s[scores={stellarity.misc=4..}] stellarity.misc 4

attribute @s[scores={stellarity.misc=2..}] minecraft:generic.max_health modifier add 2-0-3-3-1 "damage_2" -0.2 add
scoreboard players remove @s[scores={stellarity.misc=2..}] stellarity.misc 2

attribute @s[scores={stellarity.misc=1..}] minecraft:generic.max_health modifier add 2-0-3-3-0 "damage_1" -0.1 add
scoreboard players remove @s[scores={stellarity.misc=1..}] stellarity.misc 1

scoreboard players set @s stellarity.misc 0

# Red Flashing
execute at @s run function stellarity:utils/damage/hurt_effects

tag @s add stellarity.scheduled.remove_attributes
schedule function stellarity:utils/damage/remove_attributes/scheduled 2t replace
