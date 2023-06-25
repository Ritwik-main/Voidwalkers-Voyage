function stellarity:utils/rng/lcg

scoreboard players operation #temp stellarity.misc = out stellarity.misc
scoreboard players operation out stellarity.misc %= #range stellarity.misc
scoreboard players operation #temp stellarity.misc -= out stellarity.misc
scoreboard players operation #temp stellarity.misc += #m1 stellarity.misc
execute if score #temp stellarity.misc matches ..-1 run function stellarity:utils/rng/zprivate/next_int
