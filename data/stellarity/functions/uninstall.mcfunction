# Remove bossbars

bossbar remove fe:ender_dragon
bossbar remove stellarity:crystal_count
bossbar remove stellarity:eol

# Remove all scoreboards
scoreboard objectives remove fe.count
scoreboard objectives remove fe.health
scoreboard objectives remove fe.timer
scoreboard objectives remove fe.variable

scoreboard objectives remove stellarity.config.custom_music
scoreboard objectives remove stellarity.config.join_message
scoreboard objectives remove stellarity.config.change_gamerules
scoreboard objectives remove stellarity.config.always_generate_egg
scoreboard objectives remove stellarity.eol.animation
scoreboard objectives remove stellarity.eol.health
scoreboard objectives remove stellarity.eol.attack_cycle
scoreboard objectives remove stellarity.eol.attack_duration
scoreboard objectives remove stellarity.eol.attack_cooldown
scoreboard objectives remove stellarity.eol.projectile_age
scoreboard objectives remove stellarity.mechanics.void_fishing_length
scoreboard objectives remove stellarity.mechanics.crystal_count
scoreboard objectives remove stellarity.mechanics.void_totem_protection_time
scoreboard objectives remove stellarity.mechanics.end_music
scoreboard objectives remove stellarity.misc
scoreboard objectives remove stellarity.misc2
scoreboard objectives remove stellarity.misc.end_portal_animation
scoreboard objectives remove stellarity.misc.shot_bow
scoreboard objectives remove stellarity.misc.thrown_trident
scoreboard objectives remove stellarity.misc.used_ender_pearl
scoreboard objectives remove stellarity.misc.hunger
scoreboard objectives remove stellarity.misc.invul_timer
scoreboard objectives remove stellarity.misc.flight_speed
scoreboard objectives remove stellarity.misc.respawn_detection

# Remove teams
team remove stellarity.purple_glow

# Clear schedules
schedule clear stellarity:loops/2_tick
schedule clear stellarity:loops/3_tick
schedule clear stellarity:loops/5_tick
schedule clear stellarity:loops/1_second
schedule clear stellarity:loops/5_second
schedule clear stellarity:loops/10_second

scoreboard players reset #stellarity.is_installed stellarity.misc

# Does not remove entities/clear worldgen/etc.
# Btw since you cannot remove worldgen datapacks withouth editing your
# level.dat file, I think this function is pointless
# But whatever, if I were to remove this file, you would just ask me to add it back, so ¯\_(ツ)_/¯
