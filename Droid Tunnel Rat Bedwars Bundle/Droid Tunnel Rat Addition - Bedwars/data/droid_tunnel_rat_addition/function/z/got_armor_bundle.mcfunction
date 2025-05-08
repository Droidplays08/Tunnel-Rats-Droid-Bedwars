execute as @a store result score @s got_chain_upper run clear @s chainmail_helmet[minecraft:custom_data={chain_upper:1b}] 0
execute as @a[scores={got_chain_upper=1..}] run function droid_tunnel_rat_addition:z/bedwars_armor/chain_upper
execute as @a store result score @s got_chain_lower run clear @s chainmail_boots[minecraft:custom_data={chain_lower:1b}] 0
execute as @a[scores={got_chain_lower=1..}] run function droid_tunnel_rat_addition:z/bedwars_armor/chain_lower

execute as @a store result score @s got_iron_upper run clear @s iron_helmet[minecraft:custom_data={iron_upper:1b}] 0
execute as @a[scores={got_iron_upper=1..}] run function droid_tunnel_rat_addition:z/bedwars_armor/iron_upper
execute as @a store result score @s got_iron_lower run clear @s iron_boots[minecraft:custom_data={iron_lower:1b}] 0
execute as @a[scores={got_iron_lower=1..}] run function droid_tunnel_rat_addition:z/bedwars_armor/iron_lower

execute as @a store result score @s got_diamond_upper run clear @s diamond_helmet[minecraft:custom_data={diamond_upper:1b}] 0
execute as @a[scores={got_diamond_upper=1..}] run function droid_tunnel_rat_addition:z/bedwars_armor/diamond_upper
execute as @a store result score @s got_diamond_lower run clear @s diamond_boots[minecraft:custom_data={diamond_lower:1b}] 0
execute as @a[scores={got_diamond_lower=1..}] run function droid_tunnel_rat_addition:z/bedwars_armor/diamond_lower