execute store result score @s motion_y1 run data get entity @s Pos[1] 1000

tp @s ~ ~0.01 ~

execute store result score @s motion_y2 run data get entity @s Pos[1] 1000

execute store result entity @s Motion[1] double 0.3 run scoreboard players operation @s motion_y2 -= @s motion_y1

tag @s add motion_added