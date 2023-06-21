execute unless predicate stellarity:music/in_end_music_biomes run stopsound @s music music.end

scoreboard players reset @s stellarity.mechanics.end_music

execute if predicate stellarity:music/in_basalt_deltas_music_biomes run playsound music.nether.basalt_deltas music @s
execute if predicate stellarity:music/in_crimson_forest_music_biomes run playsound music.nether.crimson_forest music @s
execute if predicate stellarity:music/in_lush_caves_music_biomes run playsound music.overworld.lush_caves music @s
execute if predicate stellarity:music/in_meadow_music_biomes run playsound music.overworld.meadow music @s
execute if predicate stellarity:music/in_nether_wastes_music_biomes run playsound music.nether.nether_wastes music @s
execute if predicate stellarity:music/in_end_music_biomes run playsound music.end music @s
execute if predicate stellarity:music/in_underwater_music_biomes run playsound music.under_water music @s
execute if predicate stellarity:music/in_creative_music_biomes run playsound music.creative music @s
execute if predicate stellarity:music/in_deep_dark_music_biomes run playsound music.overworld.deep_dark music @s

# This is far more simple than the custom music player xD 
