kill @e[type=ender_dragon]
scoreboard players reset @e[type=minecraft:marker,tag=fe.structure,tag=fe.exit_portal] fe.variable
scoreboard players reset #stellarity.exit_gateway_count stellarity.misc

tag @e[type=minecraft:marker,tag=fe.structure,tag=fe.exit_portal] add fe.deactivated.spawn_dragon

tellraw @s ["\n",{"translate":"stellarity.messages.cmd.hard_reset_dragon","fallback":"Completely reset the Ender Dragon, witness the horror!","color":"#DD6AFF","bold":true},"\n"]
function stellarity:utils/send_command_feedback/off
