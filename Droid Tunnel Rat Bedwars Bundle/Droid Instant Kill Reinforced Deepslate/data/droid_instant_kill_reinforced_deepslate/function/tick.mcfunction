execute as @e[type=item,tag=!motion_added] at @s if block ~ ~-1 ~ reinforced_deepslate run function droid_instant_kill_reinforced_deepslate:apply_motion_up
execute as @e[type=item,tag=motion_added] at @s if block ~ ~-1 ~ air run tag @s remove motion_added

function droid_instant_kill_reinforced_deepslate:rd_damage
