scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"carrot",Count:18,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"potato",Count:19,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"beetroot",Count:11,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"wheat",Count:16,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"pumpkin_pie",Count:5,tag:{}}}
data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"bread",Count:6,tag:{}}}
data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"chorus_fruit",Count:14,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}
data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:6,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"honey_bottle",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:7,rewardExp:1b,priceMultiplier:0.2,demand:7,specialPrice:0,buy:{id:"emerald",Count:3,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"golden_carrot",Count:4,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:4,rewardExp:1b,priceMultiplier:0.2,demand:4,specialPrice:0,buy:{id:"emerald",Count:8,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"golden_apple",Count:2,tag:{}}}
