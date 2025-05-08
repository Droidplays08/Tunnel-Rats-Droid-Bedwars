execute as @e[tag=motion_medium,tag=!motion_added] at @s rotated as @p run function droid_throwable_projectile:apply_motion_medium

scoreboard players add @e[tag=time_lived] time_lived 1
execute as @e[tag=time_lived,tag=time_lived_400] if score @s time_lived matches 400.. run kill @s

execute as @e[type=fireball,tag=throwable_fireball_strong] at @s run tp @n[type=marker,tag=throwable_fireball_strong_tag] @s
execute as @e[type=marker,tag=throwable_fireball_strong_tag] at @s unless entity @n[type=fireball,tag=throwable_fireball_strong,distance=..2] run function droid_throwable_projectile:fireball_strong_impact