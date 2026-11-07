summon armor_stand ^ ^1 ^ {CustomName:'"ray"',CustomNameVisible:1b,Tags:['ray', 'survb_work'],NoGravity:1b, Invisible:1b}
execute as @s at @s store result entity @n[tag=ray] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @s at @s store result entity @n[tag=ray] Rotation[1] float 1 run data get entity @s Rotation[1]
scoreboard players set @s ray_step 0
tag @s add ray_exe

execute as @n[tag=ray] at @s run function survibao3:operations/ray_step