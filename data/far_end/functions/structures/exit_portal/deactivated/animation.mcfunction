summon ender_dragon 0 128 0 {DragonPhase:4,Tags:["fe.mob","fe.boss","fe.ender_dragon"],Health:300,Attributes:[{Name:"generic.max_health",Base:300.0}]}
summon marker 0 128 0 {Tags:["stellarity.dragon_marker"]}
execute positioned 0 128 0 run particle minecraft:explosion_emitter ~ ~ ~ 3 3 3 1 10 force
playsound minecraft:entity.ender_dragon.growl ambient @a 0 128 0 7 0.7
function far_end:structures/exit_portal/deactivated/generate
tag @s add fe.in_dragon_fight
tag @s remove fe.deactivated.spawn_dragon
