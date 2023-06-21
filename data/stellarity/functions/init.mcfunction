## Scoreboards creation
# Configuration
scoreboard objectives add stellarity.config.custom_music dummy
scoreboard objectives add stellarity.config.join_message dummy
scoreboard objectives add stellarity.config.change_gamerules dummy
scoreboard objectives add stellarity.config.always_generate_egg dummy

# Initialize config scoreboards that do not have a value at start,
# but require them to work properly (or at all)
# Freshly created scoreboards have no value (not even set to 0)
# The trick I used is checking whether a given scoreboard is SET TO A NUMBER
# 'null' is not a number, remember!
# *coughs in German*
function stellarity:config/init

## Mobs
# Empress of Light
scoreboard objectives add stellarity.eol.animation dummy "EoL Animation Progress"
scoreboard objectives add stellarity.eol.health dummy "EoL "
scoreboard objectives add stellarity.eol.attack_cycle dummy "EoL Attack Cycle"
scoreboard objectives add stellarity.eol.attack_duration dummy "EoL Attack Duration"
scoreboard objectives add stellarity.eol.attack_cooldown dummy "EoL Attack Cooldown"
scoreboard objectives add stellarity.eol.projectile_age dummy "EoL Projectile Age"

scoreboard objectives add stellarity.phantom.size dummy "Phantom Size"

## Mechanics
scoreboard objectives add stellarity.mechanics.void_fishing_length dummy "Void Fishing Length"
scoreboard objectives add stellarity.mechanics.crystal_count dummy "End Crystal Count"
scoreboard objectives add stellarity.mechanics.void_totem_protection_time dummy "Void Totem Protection Time"
scoreboard objectives add stellarity.mechanics.end_music dummy "End Music Timer"

## Misc
# Temporar variables OR things that don't need its own variable
scoreboard objectives add stellarity.misc dummy "Misc"
scoreboard objectives add stellarity.misc2 dummy "Misc 2"
scoreboard objectives add stellarity.misc.end_portal_animation dummy "End Portal Animation Progress"
scoreboard objectives add stellarity.misc.end_portal_eyes_consumed dummy "End Portal Animation Progress 2"
scoreboard objectives add stellarity.misc.end_portal_bg_loop dummy "End Portal Animation Progress 3"

scoreboard objectives add stellarity.misc.shot_bow minecraft.used:minecraft.bow "Events: Shot Bow"
scoreboard objectives add stellarity.misc.thrown_trident minecraft.used:minecraft.trident "Events: Thrown Trident"
scoreboard objectives add stellarity.misc.used_ender_pearl minecraft.used:minecraft.ender_pearl "Events: Thrown Ender Pearl"
scoreboard objectives add stellarity.misc.hunger food "Player: Saturation"
scoreboard objectives add stellarity.misc.invul_timer dummy "Player: Damage System Invulnerability Ticks"
scoreboard objectives add stellarity.misc.flight_speed minecraft.custom:minecraft.aviate_one_cm "Player: Elytra Current Flight Speed"
scoreboard objectives add stellarity.misc.respawn_detection minecraft.custom:minecraft.deaths "Player: Respawn Detection"
scoreboard objectives add stellarity.misc.time_since_rest minecraft.custom:minecraft.time_since_rest "Player: Time Since Last Rest"
scoreboard objectives add stellarity.misc.motion.x1 dummy "Motion Calc: X1"
scoreboard objectives add stellarity.misc.motion.x2 dummy "Motion Calc: X2"
scoreboard objectives add stellarity.misc.motion.y1 dummy "Motion Calc: Y1"
scoreboard objectives add stellarity.misc.motion.y2 dummy "Motion Calc: Y2"
scoreboard objectives add stellarity.misc.motion.z1 dummy "Motion Calc: Z1"
scoreboard objectives add stellarity.misc.motion.z2 dummy "Motion Calc: Z2"


# Hook for checking if Stellarity is installed
scoreboard players set #stellarity.is_installed stellarity.misc 1

# Detecting whether Stellarity is being used on a server, or as a mod
# Different things happen on different loaders
# This is executed only once on first pack load to avoid unnecessary lag!
execute unless score #reload stellarity.misc matches 1.. unless score #stellarity.config stellarity.config.join_message matches 0 run schedule function stellarity:tellraw 5t
execute unless score #reload stellarity.misc matches 1.. unless score #stellarity.is_spigot stellarity.misc matches 0.. unless score #stellarity.is_forge stellarity.misc matches 0.. unless score #stellarity.is_fabric stellarity.misc matches 0.. run schedule function stellarity:loader_detection/detect 1s

## Creating teams
# Currently only used for purple glow color
# of dropped Ender Insignia
team add stellarity.purple_glow
team modify stellarity.purple_glow color dark_purple

## Bossbars
# 'Crystals Left'
bossbar add stellarity:crystal_count {"text":"Crystals Left"}
bossbar set stellarity:crystal_count color purple
bossbar set stellarity:crystal_count visible true
bossbar set stellarity:crystal_count players
bossbar set stellarity:crystal_count max 10
bossbar set stellarity:crystal_count style notched_10
# Empress of Light
bossbar add stellarity:eol {"text":"Empress of Light","color":"pink"}
bossbar set stellarity:eol color pink
bossbar set stellarity:eol visible true
bossbar set stellarity:eol players
bossbar set stellarity:eol max 800
bossbar set stellarity:eol style notched_10

# Scheduling loops that do not need
# to be executed every single tick
schedule function stellarity:loops/2_tick 2t append
schedule function stellarity:loops/3_tick 3t append
schedule function stellarity:loops/5_tick 5t append
schedule function stellarity:loops/6_tick 6t append
schedule function stellarity:loops/10_tick 10t append
schedule function stellarity:loops/1_second 1s append
schedule function stellarity:loops/5_second 5s append
schedule function stellarity:loops/10_second 10s append

# Initialize RNG
function stellarity:utils/rng/init

# Get world difficulty
execute store result score #difficulty stellarity.misc run difficulty

# Initialize all DOT related scoreboards
# Keeping them as separate files for the sake of readability
function #stellarity:dot/load
