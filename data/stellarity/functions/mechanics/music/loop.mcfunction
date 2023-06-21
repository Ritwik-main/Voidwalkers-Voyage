scoreboard players add @s stellarity.mechanics.end_music 1

# By default plays every 10 seconds * 90 (900s = 15 minutes)
# Enough for all tracks to finish before playing again, as the longest End track is ~15 minutes or so
# Will make it configurable at some point in time
execute if score @s stellarity.mechanics.end_music matches 90.. run function stellarity:mechanics/music/decide
