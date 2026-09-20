execute as @a[tag=callmath] at @s run summon armor_stand ~ ~ ~ {CustomName:'"1"',CustomNameVisible:1b,Tags:['math-armor'],NoGravity:1b,Invisible:1b}

execute as @a[tag=callmath] at @s store result entity @n[tag=math-armor] Rotation[0] float 100 run scoreboard players get @s trigoin1
execute as @a[tag=callmath] at @s store result entity @n[tag=math-armor] Rotation[1] float 100 run scoreboard players get @s trigoin2

execute as @e[tag=math-armor] at @s store result score @a[tag=callmath] temp1 run data get entity @s Pos[0] 100
execute as @e[tag=math-armor] at @s store result score @a[tag=callmath] temp2 run data get entity @s Pos[1] 100
execute as @e[tag=math-armor] at @s store result score @a[tag=callmath] temp3 run data get entity @s Pos[2] 100

execute as @n[tag=math-armor] at @s run summon armor_stand ^ ^ ^1 {CustomName:'"2"',CustomNameVisible:1b,Tags:['math-armor2'],NoGravity:1b}

execute as @e[tag=math-armor] at @s run particle composter ^ ^ ^1 1 1 1 0 4 normal

execute as @n[tag=math-armor2] at @s store result score @a[tag=callmath] trigoout1 run data get entity @s Pos[0] 100
execute as @n[tag=math-armor2] at @s store result score @a[tag=callmath] trigoout2 run data get entity @s Pos[1] 100
execute as @n[tag=math-armor2] at @s store result score @a[tag=callmath] trigoout3 run data get entity @s Pos[2] 100

tellraw @a {"score":{"name":"@s", "objective":"trigoout1"}}
tellraw @a {"score":{"name":"@s", "objective":"trigoout2"}}
tellraw @a {"score":{"name":"@s", "objective":"trigoout3"}}

tellraw @a {"score":{"name":"@s", "objective":"temp1"}}
tellraw @a {"score":{"name":"@s", "objective":"temp2"}}
tellraw @a {"score":{"name":"@s", "objective":"temp3"}}

kill @e[tag=math-armor]
kill @e[tag=math-armor2]

scoreboard players operation @a[tag=callmath] trigoout1 -= @a[tag=callmath] temp1
scoreboard players operation @a[tag=callmath] trigoout2 -= @a[tag=callmath] temp2
scoreboard players operation @a[tag=callmath] trigoout3 -= @a[tag=callmath] temp3