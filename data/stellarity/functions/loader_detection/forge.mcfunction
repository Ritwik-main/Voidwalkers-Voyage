execute store success score #stellarity.is_forge stellarity.misc run datapack disable "mod:forge"
execute unless score #stellarity.is_forge stellarity.misc matches 1.. store success score #stellarity.is_forge stellarity.misc run datapack enable "mod:forge"

execute if score #stellarity.is_forge stellarity.misc matches 1.. run function stellarity:loader_detection/effects/forge
