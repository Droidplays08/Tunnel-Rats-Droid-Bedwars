scoreboard objectives add droid_tunnel_rat_addition_data dummy

scoreboard players set droid.fireball_and_bridge_map droid_tunnel_rat_addition_data 0
scoreboard players set droid.bedwars_map droid_tunnel_rat_addition_data 0
scoreboard players set droid.tnt_no_block_damage droid_tunnel_rat_addition_data 0

scoreboard objectives add got_chain_upper dummy
scoreboard objectives add got_chain_lower dummy
scoreboard objectives add got_iron_upper dummy
scoreboard objectives add got_iron_lower dummy
scoreboard objectives add got_diamond_upper dummy
scoreboard objectives add got_diamond_lower dummy

scoreboard objectives add hunger food

scoreboard objectives add have_sword dummy
scoreboard objectives add have_helmet dummy
scoreboard objectives add have_chestplate dummy
scoreboard objectives add have_leggings dummy
scoreboard objectives add have_boots dummy

scoreboard players set droid.run_bedwars droid_tunnel_rat_addition_data 0
scoreboard players set droid.finish_bedwars droid_tunnel_rat_addition_data 1

schedule function droid_tunnel_rat_addition:z/delay_load 5s

tellraw @a {"text":"Loaded Droid Tunnel Rat Addition!"}