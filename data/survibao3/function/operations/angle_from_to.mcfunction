execute as @s at @s run summon armor_stand ~ ~ ~ {CustomName:'"1"',CustomNameVisible:1b,Tags:['trigarmor1', 'survb_work'],NoGravity:1b, Invisible:1b}
execute as @s at @s run summon armor_stand ~ ~ ~ {CustomName:'"2"',CustomNameVisible:1b,Tags:['trigarmor2', 'survb_work'],NoGravity:1b, Invisible:1b}

execute as @s at @s store result entity @n[tag=trigarmor1] Pos[0] float 0.01 run scoreboard players get @s trgx
execute as @s at @s store result entity @n[tag=trigarmor1] Pos[1] float 0.01 run scoreboard players get @s trgy
execute as @s at @s store result entity @n[tag=trigarmor1] Pos[2] float 0.01 run scoreboard players get @s trgz

execute as @s at @s store result entity @n[tag=trigarmor2] Pos[0] float 0.01 run scoreboard players get @s trgx2
execute as @s at @s store result entity @n[tag=trigarmor2] Pos[1] float 0.01 run scoreboard players get @s trgy2
execute as @s at @s store result entity @n[tag=trigarmor2] Pos[2] float 0.01 run scoreboard players get @s trgz2

execute as @n[tag=trigarmor1] at @s run rotate @s facing entity @n[tag=trigarmor2] eyes

execute as @s at @s store result score @s trgip run data get entity @n[tag=trigarmor1] Rotation[0] 100
execute as @s at @s store result score @s trgiy run data get entity @n[tag=trigarmor1] Rotation[1] 100

kill @e[tag=trigarmor1]
kill @e[tag=trigarmor2]