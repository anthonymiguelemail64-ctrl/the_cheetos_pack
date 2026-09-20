# Sumona o armor stand primário
execute as @a[tag=callmath] at @s run summon armor_stand ~ ~ ~ {CustomName:'"1"',CustomNameVisible:1b,Tags:['math-armor'],NoGravity:1b}

# Aplica a rotação do jogador ao armor stand
execute as @a[tag=callmath] at @s store result entity @n[tag=math-armor] Rotation[0] float 0.01 run scoreboard players get @s trigoin1
execute as @a[tag=callmath] at @s store result entity @n[tag=math-armor] Rotation[1] float 0.01 run scoreboard players get @s trigoin2

# Armazena a posição do jogador
execute as @e[tag=math-armor] at @s store result score @a[tag=callmath] temp1 run data get entity @s Pos[0] 100
execute as @e[tag=math-armor] at @s store result score @a[tag=callmath] temp2 run data get entity @s Pos[1] 100
execute as @e[tag=math-armor] at @s store result score @a[tag=callmath] temp3 run data get entity @s Pos[2] 100

# Move o armor stand à 1 metro de onde o jogador está olhando
execute as @n[tag=math-armor] at @s run summon armor_stand ^ ^ ^1 {CustomName:'"2"',CustomNameVisible:1b,Tags:['math-armor2'],NoGravity:1b}

# Armazena a posição final do armor stand
execute as @n[tag=math-armor2] at @s store result score @a[tag=callmath] trigoout1 run data get entity @s Pos[0] 100
execute as @n[tag=math-armor2] at @s store result score @a[tag=callmath] trigoout2 run data get entity @s Pos[1] 100
execute as @n[tag=math-armor2] at @s store result score @a[tag=callmath] trigoout3 run data get entity @s Pos[2] 100

kill @e[tag=math-armor]
kill @e[tag=math-armor2]

scoreboard players operation @a[tag=callmath] trigoout1 -= @a[tag=callmath] temp1
scoreboard players operation @a[tag=callmath] trigoout2 -= @a[tag=callmath] temp2
scoreboard players operation @a[tag=callmath] trigoout3 -= @a[tag=callmath] temp3

#YEAH, CIÊNCE!