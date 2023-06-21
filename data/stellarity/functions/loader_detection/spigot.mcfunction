execute store success score #stellarity.is_spigot stellarity.misc run datapack disable "file/bukkit"
execute unless score #stellarity.is_spigot stellarity.misc matches 1.. store success score #stellarity.is_spigot stellarity.misc run datapack enable "file/bukkit"

execute if score #stellarity.is_spigot stellarity.misc matches 1.. run function stellarity:loader_detection/effects/spigot
