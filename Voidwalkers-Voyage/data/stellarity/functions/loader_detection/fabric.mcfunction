execute store success score #stellarity.is_fabric stellarity.misc run datapack disable "Fabric Mods"
execute unless score #stellarity.is_fabric stellarity.misc matches 1.. store success score #stellarity.is_fabric stellarity.misc run datapack enable "Fabric Mods"

execute if score #stellarity.is_fabric stellarity.misc matches 1.. run function stellarity:loader_detection/effects/fabric
