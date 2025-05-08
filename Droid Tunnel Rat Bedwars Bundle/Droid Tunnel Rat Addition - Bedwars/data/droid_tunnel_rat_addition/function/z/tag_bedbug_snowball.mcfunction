tag @s add bedbug_snowball
summon marker ~ ~ ~ {Tags:["bedbug_snowball_marker"]}
execute as @n[type=marker,tag=bedbug_snowball_marker] at @s if entity @n[type=player,team=team1,distance=..5] run tag @s add team1
execute as @n[type=marker,tag=bedbug_snowball_marker] at @s if entity @n[type=player,team=team2,distance=..5] run tag @s add team2
