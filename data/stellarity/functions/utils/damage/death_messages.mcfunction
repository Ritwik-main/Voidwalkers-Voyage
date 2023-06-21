execute if entity @s[tag=stellarity.damage.example_cause] run tellraw @a {"translate":"stellarity.death_messages.example_cause","fallback":"%s died randomly due to an example of Stellarity's custom damage system","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.dot.dark_decay] run tellraw @a {"translate":"stellarity.death_messages.dot.dark_decay","fallback":"%1$s withered to ashes","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.dot.prismarine_inferno] run tellraw @a {"translate":"stellarity.death_messages.dot.prismarine_inferno","fallback":"%1$s was burned into a rainbow","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.dot.frostburn] run tellraw @a {"translate":"stellarity.death_messages.dot.frostburn","fallback":"%1$s was turned into an icicle","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.dot.natures_wrath] run tellraw @a {"translate":"stellarity.death_messages.dot.frostburn","fallback":"%1$s felt nature's revenge","with":[{"selector":"@s"}]}
