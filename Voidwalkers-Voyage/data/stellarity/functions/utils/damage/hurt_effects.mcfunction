execute if score #damage_effects stellarity.misc matches 0 if entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/knockback by @e[limit=1,sort=nearest,tag=stellarity.damage.attacker]
execute if score #damage_effects stellarity.misc matches 0 unless entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/knockback

execute if score #damage_effects stellarity.misc matches 1 if entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/effects/burning by @e[limit=1,sort=nearest,tag=stellarity.damage.attacker]
execute if score #damage_effects stellarity.misc matches 1 unless entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/effects/burning

execute if score #damage_effects stellarity.misc matches 2 if entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/effects/drowning by @e[limit=1,sort=nearest,tag=stellarity.damage.attacker]
execute if score #damage_effects stellarity.misc matches 2 unless entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/effects/drowning

execute if score #damage_effects stellarity.misc matches 3 if entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/effects/freezing by @e[limit=1,sort=nearest,tag=stellarity.damage.attacker]
execute if score #damage_effects stellarity.misc matches 3 unless entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/effects/freezing

execute if score #damage_effects stellarity.misc matches 4 if entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/effects/poking by @e[limit=1,sort=nearest,tag=stellarity.damage.attacker]
execute if score #damage_effects stellarity.misc matches 4 unless entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/effects/poking

execute if score #damage_effects stellarity.misc matches 5 if entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/effects/thorns by @e[limit=1,sort=nearest,tag=stellarity.damage.attacker]
execute if score #damage_effects stellarity.misc matches 5 unless entity @e[tag=stellarity.damage.attacker] run damage @s 0.00001 stellarity:custom_damage/effects/thorns
