function droid_tunnel_rat_addition:z/throwable_fireball_supplier
execute as @e[type=armor_stand,tag=bedwars_base_generator] at @s run function droid_tunnel_rat_addition:z/bedwars_base_generator
execute as @e[type=armor_stand,tag=bedwars_diamond_generator] at @s run function droid_tunnel_rat_addition:z/bedwars_diamond_generator
execute as @e[type=armor_stand,tag=bedwars_emerald_generator] at @s run function droid_tunnel_rat_addition:z/bedwars_emerald_generator
execute as @e[type=armor_stand,tag=bedwars_mid_generator] at @s run function droid_tunnel_rat_addition:z/bedwars_mid_generator

execute if score droid.fireball_and_bridge_map droid_tunnel_rat_addition_data matches 1 run function droid_tunnel_rat_addition:z/fireball_and_bridge_loop
execute if score droid.bedwars_map droid_tunnel_rat_addition_data matches 1 run function droid_tunnel_rat_addition:z/bedwars_loop

execute if score droid.tnt_no_block_damage droid_tunnel_rat_addition_data matches 1 as @e[type=tnt,nbt={fuse:1s}] at @s run function droid_tunnel_rat_addition:z/replace_tnt_creeper

execute as @e[type=armor_stand,tag=waterlog_leaf_location] at @s run function droid_tunnel_rat_addition:z/place_waterlogged_leaf
execute as @e[type=marker,tag=waterlog_leaf] at @s unless block ~ ~ ~ oak_leaves run function droid_tunnel_rat_addition:z/break_waterlog_leaf
execute as @e[type=armor_stand,tag=extra_base_generator] at @s run function droid_tunnel_rat_addition:z/place_extra_base_generator
execute as @e[type=armor_stand,tag=extra_emerald_generator] at @s run function droid_tunnel_rat_addition:z/place_extra_emerald_generator

function droid_tunnel_rat_addition:z/got_armor_bundle

execute if score #game status matches 3 if data storage tr:settings {arena:{name:"Droid's Bedwars"}} if score droid.run_bedwars droid_tunnel_rat_addition_data matches 0 run function droid_tunnel_rat_addition:custom_level_function/bedwars
execute if score #game status matches 0 if data storage tr:settings {arena:{name:"Droid's Bedwars"}} if score droid.finish_bedwars droid_tunnel_rat_addition_data matches 0 run function droid_tunnel_rat_addition:reset
