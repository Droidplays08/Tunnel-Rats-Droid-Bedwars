effect give @a[distance=..2] instant_health 1 0 true
effect give @a[distance=..2] absorption 1 0 true
summon tnt ~ ~ ~ {fuse:1}
fill ~ ~ ~ ~ ~ ~ water[level=8] replace air
fill ~ ~ ~ ~ ~ ~ water[level=8] replace fire
kill @s