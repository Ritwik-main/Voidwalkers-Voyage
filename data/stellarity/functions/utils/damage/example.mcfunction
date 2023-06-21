scoreboard players set #damage stellarity.misc 100

# Ignore X% of entity armor (default: 0)
scoreboard players set #armor_penetration stellarity.misc 100

# Whether to ignore I-frames (default: false)
scoreboard players set #ignore_iframes stellarity.misc 0

# Whether to ignore Resistance status effect (default:false)
scoreboard players set #ignore_resistance stellarity.misc 0
# What kind of Proteciton enchantment
# works best against this damage instance?
# 
# 0 - default (Protection)
# 1 - Fire Protection
# 2 - Projectile Protection
# 3 - Blast Protection
#
# Note that regular Protection enchantment still
# applies here, due to how vanilla damage reduction works.
# WIP
scoreboard players set #damage_type stellarity.misc 0

# Different damage sounds
#
# 0 - no special effects (default)
# 1 - burning
# 2 - drowning
# 3 - freezing
# 4 - poking
# 5 - thorns
scoreboard players set #damage_effects stellarity.misc 1

# Damage cause
tag @s add stellarity.damage.example_cause

# Entities with this tag will be the ones
# from whose direction knockback is going to come form
tag @s add stellarity.damage.attacker

function stellarity:utils/damage/calculate
