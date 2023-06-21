scoreboard players set #stellarity.is_spigot stellarity.misc 0
scoreboard players set #stellarity.is_forge stellarity.misc 0
scoreboard players set #stellarity.is_fabric stellarity.misc 0

function stellarity:loader_detection/spigot
function stellarity:loader_detection/forge
function stellarity:loader_detection/fabric

scoreboard players operation #reload stellarity.misc = #stellarity.is_spigot stellarity.misc
scoreboard players operation #reload stellarity.misc += #stellarity.is_forge stellarity.misc
scoreboard players operation #reload stellarity.misc += #stellarity.is_fabric stellarity.misc
schedule function stellarity:loader_detection/reset_reload 2t
