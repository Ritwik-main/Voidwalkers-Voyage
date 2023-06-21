function stellarity:utils/damage/operations/get_protection/player/prot

execute if score #damage_type stellarity.misc matches 1 run function stellarity:utils/damage/operations/get_protection/player/fire_prot
execute if score #damage_type stellarity.misc matches 2 run function stellarity:utils/damage/operations/get_protection/player/projectile_prot
execute if score #damage_type stellarity.misc matches 3 run function stellarity:utils/damage/operations/get_protection/player/blast_prot
