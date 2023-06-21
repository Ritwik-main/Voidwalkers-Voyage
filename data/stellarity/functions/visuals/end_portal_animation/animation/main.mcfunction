scoreboard players add @s stellarity.misc.end_portal_animation 1

execute if score @s stellarity.misc.end_portal_animation matches 26 run function stellarity:visuals/end_portal_animation/animation/flash

execute if score @s stellarity.misc.end_portal_animation matches 36 run function stellarity:visuals/end_portal_animation/animation/flash
execute if score @s stellarity.misc.end_portal_animation matches 42 run function stellarity:visuals/end_portal_animation/animation/finish
