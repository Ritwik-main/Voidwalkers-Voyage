execute if entity @s[tag=stellarity.eol.daytime] run summon marker ~ ~1 ~ {Tags:["stellarity.eol.sun_dance","stellarity.eol.daytime"]}
execute if entity @s[tag=stellarity.eol.nighttime] run summon marker ~ ~1 ~ {Tags:["stellarity.eol.sun_dance","stellarity.eol.nighttime"]}

tag @s remove stellarity.eol.sun_dance_scheduled
