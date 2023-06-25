## Triggers every 5 seconds

# Buffs relevant ONLY to Illagers
execute as @e[type=#raiders,predicate=stellarity:locations/in_stronghold,tag=!stellarity.stronghold.buffed] run function stellarity:mobs/stronghold/illager_semi_switch_case

# Buff ALL mobs inside Strongholds
execute as @e[type=!#stellarity:invalid_targets_with_player,predicate=stellarity:locations/in_stronghold,tag=!stellarity.stronghold_enemy_buffed] unless entity @s[type=creeper] run function stellarity:mobs/stronghold/buff_enemies
