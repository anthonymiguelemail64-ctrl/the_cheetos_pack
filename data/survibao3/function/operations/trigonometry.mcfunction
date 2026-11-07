# CONSOME: {1, 2, 3}
execute as @s at @s run summon armor_stand ~ ~ ~ {CustomName:'"1"',CustomNameVisible:1b,Tags:['trigarmor1', 'survb_work'],NoGravity:1b}

execute as @s at @s store result entity @n[tag=trigarmor1] Rotation[0] float 0.01 run scoreboard players get @s trgip
execute as @s at @s store result entity @n[tag=trigarmor1] Rotation[1] float 0.01 run scoreboard players get @s trgiy

execute as @s at @s store result score @s gs1 run data get entity @n[tag=trigarmor1] Pos[0] 100
execute as @s at @s store result score @s gs2 run data get entity @n[tag=trigarmor1] Pos[1] 100
execute as @s at @s store result score @s gs3 run data get entity @n[tag=trigarmor1] Pos[2] 100

execute as @n[tag=trigarmor1] at @s run summon armor_stand ^ ^ ^1 {CustomName:'"2"',CustomNameVisible:1b,Tags:['trigarmor2', 'survb_work'],NoGravity:1b}

execute as @s at @s store result score @s trgx run data get entity @n[tag=trigarmor2] Pos[0] 100
execute as @s at @s store result score @s trgy run data get entity @n[tag=trigarmor2] Pos[1] 100
execute as @s at @s store result score @s trgz run data get entity @n[tag=trigarmor2] Pos[2] 100

kill @e[tag=survb_work]

scoreboard players operation @s trgx -= @s gs1
scoreboard players operation @s trgy -= @s gs2
scoreboard players operation @s trgz -= @s gs3