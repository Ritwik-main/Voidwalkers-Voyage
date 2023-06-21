tag @s add stellarity.wt_extra_end_trades

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 7
function stellarity:utils/rng/range

execute if score out stellarity.misc matches 1 run data modify entity @s Offers.Recipes append value {maxUses:6,buy:{id:emerald,Count:21},sell:{id:chorus_fruit,Count:1}}
execute if score out stellarity.misc matches 2 run data modify entity @s Offers.Recipes append value {maxUses:1,buy:{id:emerald,Count:52},sell:{id:chorus_flower,Count:1}}
execute if score out stellarity.misc matches 3 run data modify entity @s Offers.Recipes append value {maxUses:5,buy:{id:emerald,Count:18},sell:{id:end_stone,Count:8}}
execute if score out stellarity.misc matches 4 run data modify entity @s Offers.Recipes append value {maxUses:4,buy:{id:emerald,Count:6},sell:{id:ender_pearl,Count:1}}
execute if score out stellarity.misc matches 5 run data modify entity @s Offers.Recipes append value {maxUses:6,buy:{id:emerald,Count:11},sell:{id:obsidian,Count:1}}
execute if score out stellarity.misc matches 6 run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:emerald,Count:9},sell:{id:ender_eye,Count:1}}
execute if score out stellarity.misc matches 7 run data modify entity @s Offers.Recipes append value {maxUses:4,buy:{id:emerald,Count:14},sell:{id:crying_obsidian,Count:1}}

scoreboard players reset out stellarity.misc
scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 6
execute if predicate stellarity:utils/chance/50percent run function stellarity:utils/rng/range

execute if score out stellarity.misc matches 1 run data modify entity @s Offers.Recipes append value {maxUses:6,buy:{id:emerald,Count:9},sell:{id:end_rod,Count:1}}
execute if score out stellarity.misc matches 2 run data modify entity @s Offers.Recipes append value {maxUses:8,buy:{id:emerald,Count:10},sell:{id:popped_chorus_fruit,Count:1}}
execute if score out stellarity.misc matches 3 run data modify entity @s Offers.Recipes append value {maxUses:4,buy:{id:emerald,Count:15},sell:{id:purpur_block,Count:3}}
execute if score out stellarity.misc matches 4 run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:emerald,Count:18},sell:{id:blaze_powder,Count:2}}
execute if score out stellarity.misc matches 5 run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:emerald,Count:18},sell:{id:magenta_banner,Count:2,tag:{display:{Name:'{"translate":"stellarity.mobs.wandering_trader.mysterious_banner","fallback":"Mysterious Banner","italic":"false","color":"yellow"}'},BlockEntityTag:{id:"minecraft:banner",Patterns:[{Pattern:"gru",Color:10},{Pattern:"bt",Color:15},{Pattern:"tt",Color:15},{Pattern:"moj",Color:0},{Pattern: "moj",Color:15}]}}}}
execute if score out stellarity.misc matches 6 run data modify entity @s Offers.Recipes append value {maxUses:4,buy:{id:emerald,Count:6},sell:{id:phantom_membrane,Count:2}}
