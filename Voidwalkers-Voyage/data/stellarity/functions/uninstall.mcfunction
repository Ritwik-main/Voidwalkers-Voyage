scoreboard objectives remove stellarity.config.join_message
scoreboard objectives remove stellarity.config.always_generate_egg
scoreboard objectives remove stellarity.config.dragon_health
scoreboard objectives remove stellarity.eol.animation
scoreboard objectives remove stellarity.eol.health
scoreboard objectives remove stellarity.eol.hurt_time
scoreboard objectives remove stellarity.eol.attack_cycle
scoreboard objectives remove stellarity.eol.attack_duration
scoreboard objectives remove stellarity.eol.attack_cooldown
scoreboard objectives remove stellarity.eol.projectile_age
scoreboard objectives remove stellarity.phantom.size
scoreboard objectives remove stellarity.mechanics.void_fishing_length
scoreboard objectives remove stellarity.mechanics.crystal_count
scoreboard objectives remove stellarity.mechanics.end_music
scoreboard objectives remove stellarity.misc
scoreboard objectives remove stellarity.misc2
scoreboard objectives remove stellarity.misc.end_portal_animation
scoreboard objectives remove stellarity.misc.end_portal_bg_loop
scoreboard objectives remove stellarity.misc.shot_bow
scoreboard objectives remove stellarity.misc.used_ender_pearl
scoreboard objectives remove stellarity.misc.flight_speed
scoreboard objectives remove stellarity.misc.respawn_detection
scoreboard objectives remove stellarity.misc.time_since_rest 
scoreboard objectives remove stellarity.misc.motion.x1
scoreboard objectives remove stellarity.misc.motion.x2
scoreboard objectives remove stellarity.misc.motion.y1
scoreboard objectives remove stellarity.misc.motion.y2
scoreboard objectives remove stellarity.misc.motion.z1
scoreboard objectives remove stellarity.misc.motion.z2

scoreboard players reset #stellarity.is_installed stellarity.misc

team remove stellarity.purple_glow

bossbar remove stellarity:crystal_count
bossbar remove stellarity:eol

schedule clear stellarity:loops/2_tick
schedule clear stellarity:loops/3_tick
schedule clear stellarity:loops/1_second
schedule clear stellarity:loops/5_second

scoreboard objectives remove stellarity.dot.dark_decay.time
scoreboard objectives remove stellarity.dot.dark_decay.damage
scoreboard objectives remove stellarity.dot.dark_decay.delay
scoreboard objectives remove stellarity.dot.dark_decay.progress
scoreboard objectives remove stellarity.dot.frostburn.time
scoreboard objectives remove stellarity.dot.frostburn.damage
scoreboard objectives remove stellarity.dot.frostburn.delay
scoreboard objectives remove stellarity.dot.frostburn.progress
scoreboard objectives remove stellarity.dot.prismatic_inferno.time
scoreboard objectives remove stellarity.dot.prismatic_inferno.damage
scoreboard objectives remove stellarity.dot.prismatic_inferno.delay
scoreboard objectives remove stellarity.dot.prismatic_inferno.progress

scoreboard objectives remove fe.health
scoreboard objectives remove fe.variable
scoreboard objectives remove fe.count

scoreboard objectives remove fe.timer

bossbar remove fe:ender_dragon
