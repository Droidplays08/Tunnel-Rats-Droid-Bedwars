scoreboard players set droid.fireball_and_bridge_map droid_tunnel_rat_addition_data 0
scoreboard players set droid.bedwars_map droid_tunnel_rat_addition_data 0

execute as @a[tag=admin] run function droid_tunnel_rat_addition:custom_settings/tnt_no_block_damage_off

setblock 104 -4 0 bedrock
setblock -104 -4 0 bedrock
setblock 10 -5 -6 bedrock
setblock -10 -5 6 bedrock
setblock -9 -5 -38 bedrock
setblock 9 -5 38 bedrock
fill 2 2 2 -2 2 -2 bedrock


execute as @e[type=marker,tag=extra_base_generator_marker] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=extra_emerald_generator_marker] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=extra_generator_marker] at @s unless block ~ ~ ~ spawner run kill @s

kill @e[type=chest_minecart,tag=team_chest]
kill @e[type=marker,tag=bedwars_team_chest_marker]
kill @e[type=villager,tag=bedwars_shop]
kill @e[type=item]

clear @a
execute as @a run attribute @s minecraft:explosion_knockback_resistance base reset

scoreboard players set droid.run_bedwars droid_tunnel_rat_addition_data 0
scoreboard players set droid.finish_bedwars droid_tunnel_rat_addition_data 1
