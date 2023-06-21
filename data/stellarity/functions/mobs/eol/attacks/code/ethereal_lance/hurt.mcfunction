execute store result score #difficulty stellarity.misc run difficulty

execute if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage stellarity.misc 80
execute if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage stellarity.misc 120
execute if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage stellarity.misc 170

scoreboard players set #ignore_armor stellarity.misc 0
tag @s add stellarity.damage.eol.ethereal_lance

function stellarity:utils/damage/calculate
