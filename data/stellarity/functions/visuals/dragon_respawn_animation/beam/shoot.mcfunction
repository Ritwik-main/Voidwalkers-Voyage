summon marker ~ ~ ~ {Tags:["stellarity.dragon_respawn.beam"]}

execute positioned 0 66 0 run particle minecraft:cloud ~ ~.15 ~ 0 0 0 .1 35

playsound minecraft:entity.shulker.shoot block @a ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 1 1.25
playsound block.beacon.activate block @a ~ ~ ~ 1 2
