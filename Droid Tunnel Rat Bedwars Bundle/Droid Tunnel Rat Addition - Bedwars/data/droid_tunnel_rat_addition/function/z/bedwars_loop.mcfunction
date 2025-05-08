clear @a bucket
clear @a glass_bottle
clear @a #minecraft:beds
kill @e[type=chicken]

execute as @a if score @s hunger matches 20 run effect give @s hunger 2 9 true
execute as @a if score @s hunger matches ..18 run effect give @s saturation 1 0 true

execute as @a store result score @s have_sword run clear @s #minecraft:swords 0
execute as @a[scores={have_sword=0}] run give @s minecraft:wooden_sword[minecraft:unbreakable={show_in_tooltip:false},minecraft:enchantments={levels:{vanishing_curse:1},show_in_tooltip:false},minecraft:enchantment_glint_override=false]
execute as @a[scores={have_sword=2..}] run clear @s wooden_sword

execute as @a store result score @s have_helmet run clear @s #minecraft:head_armor 0
execute as @a[scores={have_helmet=0}] run item replace entity @s armor.head with leather_helmet[minecraft:unbreakable={show_in_tooltip:false},minecraft:enchantments={levels:{vanishing_curse:1},show_in_tooltip:false},minecraft:enchantment_glint_override=false]
execute as @a[scores={have_helmet=2..}] run clear @s leather_helmet
execute as @a store result score @s have_chestplate run clear @s #minecraft:chest_armor 0
execute as @a[scores={have_chestplate=0}] run item replace entity @s armor.chest with leather_chestplate[minecraft:unbreakable={show_in_tooltip:false},minecraft:enchantments={levels:{vanishing_curse:1},show_in_tooltip:false},minecraft:enchantment_glint_override=false]
execute as @a[scores={have_chestplate=2..}] run clear @s leather_chestplate
execute as @a store result score @s have_leggings run clear @s #minecraft:leg_armor 0
execute as @a[scores={have_leggings=0}] run item replace entity @s armor.legs with leather_leggings[minecraft:unbreakable={show_in_tooltip:false},minecraft:enchantments={levels:{vanishing_curse:1,blast_protection:10},show_in_tooltip:false},minecraft:enchantment_glint_override=false]
execute as @a[scores={have_leggings=2..}] run clear @s leather_leggings
execute as @a store result score @s have_boots run clear @s #minecraft:foot_armor 0
execute as @a[scores={have_boots=0}] run item replace entity @s armor.feet with leather_boots[minecraft:unbreakable={show_in_tooltip:false},minecraft:enchantments={levels:{vanishing_curse:1,feather_falling:2},show_in_tooltip:false},minecraft:enchantment_glint_override=false]
execute as @a[scores={have_boots=2..}] run clear @s leather_boots

tp @e[type=chest_minecart,tag=team_chest_1] @n[type=marker,tag=team_chest_marker_1]
tp @e[type=chest_minecart,tag=team_chest_2] @n[type=marker,tag=team_chest_marker_2]

kill @e[type=item,nbt={Item:{id:"minecraft:wooden_sword"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_helmet"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_leggings"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}}]

execute as @e[type=marker,tag=extra_base_generator_marker] at @s if score @s time_lived matches 3600.. run setblock ~ ~ ~ air
execute as @e[type=marker,tag=extra_emerald_generator_marker] at @s if score @s time_lived matches 6000.. run setblock ~ ~ ~ air

execute as @e[type=marker,tag=extra_generator_marker] at @s unless block ~ ~ ~ spawner run kill @s

execute as @e[type=egg,nbt={Item:{id:"minecraft:egg",count:1,components:{"minecraft:custom_data":{bridge_egg:1b}}},HasBeenShot:1b},tag=!bridge_egg] run function droid_tunnel_rat_addition:z/tag_bridge_egg
execute as @e[type=egg,tag=bridge_egg] at @s run function droid_tunnel_rat_addition:z/bridge_egg_loop
execute as @e[type=marker,tag=bridge_egg_tracer] at @s if score @s time_lived matches 5.. run fill ~1 ~-1 ~ ~-1 ~-1 ~ warped_wart_block replace air
execute as @e[type=marker,tag=bridge_egg_tracer] at @s if score @s time_lived matches 5.. run fill ~ ~-1 ~1 ~ ~-1 ~-1 warped_wart_block replace air
execute as @e[type=marker,tag=bridge_egg_tracer] at @s if score @s time_lived matches 5.. run kill @s

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{bedbug:1b}}},HasBeenShot:1b},tag=!bedbug_snowball] at @s run function droid_tunnel_rat_addition:z/tag_bedbug_snowball
execute as @e[type=snowball,tag=bedbug_snowball] at @s run tp @n[type=marker,tag=bedbug_snowball_marker] @s
execute as @e[type=marker,tag=bedbug_snowball_marker] at @s unless entity @n[type=snowball,tag=bedbug_snowball,distance=..5] run function droid_tunnel_rat_addition:z/spawn_bedbug
execute as @e[type=silverfish,tag=bedbug] if score @s time_lived matches 800.. run kill @s

execute as @e[type=item] at @s if block ~ ~-1 ~ reinforced_deepslate if entity @s[nbt=!{Item:{id:"minecraft:emerald"}}] if entity @s[nbt=!{Item:{id:"minecraft:diamond"}}] if entity @s[nbt=!{Item:{id:"minecraft:miner_pottery_sherd"}}] run kill @s

execute as @e[type=item] at @s if block ~ ~-1 ~ reinforced_deepslate run tp @s 0 3 0

execute as @e[type=ender_pearl] at @s if block ~ ~-1 ~ reinforced_deepslate run kill @s
execute as @e[type=ender_pearl] at @s if block ~ ~-2 ~ reinforced_deepslate run kill @s

execute as @e[type=egg] at @s if block ~ ~-1 ~ reinforced_deepslate run kill @s
execute as @e[type=egg] at @s if block ~ ~-2 ~ reinforced_deepslate run kill @s

execute as @e[type=snowball] at @s if block ~ ~-1 ~ reinforced_deepslate run kill @s
execute as @e[type=snowball] at @s if block ~ ~-2 ~ reinforced_deepslate run kill @s

fill -94 49 -49 94 -48 -49 air destroy
fill 94 49 49 -94 -48 49 air destroy
fill -94 -48 49 94 -48 -49 air destroy
fill -94 -47 49 94 -47 -49 air destroy
