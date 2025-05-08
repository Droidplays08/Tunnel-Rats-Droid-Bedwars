execute unless block ~ ~-1 ~ air run setblock ~ ~ ~ minecraft:oak_leaves[persistent=true,waterlogged=true]
execute if block ~ ~-1 ~ air run setblock ~ ~1 ~ minecraft:oak_leaves[persistent=true,waterlogged=true]
execute unless block ~ ~-1 ~ air run summon minecraft:marker ~ ~ ~ {Tags:["waterlog_leaf"]}
execute if block ~ ~-1 ~ air run summon minecraft:marker ~ ~1 ~ {Tags:["waterlog_leaf"]}
kill @s