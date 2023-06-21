scoreboard players add #telegraph stellarity.misc 1

particle firework ~ ~ ~ 0 0 0 0 1 force
execute if score #telegraph stellarity.misc matches 101.. run scoreboard players reset #telegraph stellarity.misc
execute unless block ^ ^ ^.4 air run scoreboard players reset #telegraph stellarity.misc
execute if score #telegraph stellarity.misc matches ..100 positioned ^ ^ ^.4 if block ^ ^ ^ air run function stellarity:mobs/eol/attacks/code/sun_dance/telegraph
