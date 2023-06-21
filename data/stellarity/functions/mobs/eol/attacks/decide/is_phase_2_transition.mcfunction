execute if score @s[tag=stellarity.eol.spawn_anim_finished,tag=!stellarity.eol.phase_2_animation_finished,tag=!stellarity.eol.phase_2_animation] stellarity.eol.health matches ..400 run tag @s add stellarity.eol.phase_2_animation

tag @s[scores={stellarity.eol.health=401..},tag=stellarity.eol.phase_1] add stellarity.eol.attack_ready
tag @s[tag=stellarity.eol.phase_2] add stellarity.eol.attack_ready
