# Cria o armor stand
execute as @s at @s run summon armor_stand ^ ^ ^1 {CustomName:'1',CustomNameVisible:1b,Tags:['trigarmor'],NoGravity:1b, Invisible:1b}

# Rotaciona o armor stand
execute as @s store result entity @n[tag=trigarmor] Rotation[0] float 0.01 run scoreboard players get @s trgiy
execute as @s store result entity @n[tag=trigarmor] Rotation[1] float 0.01 run scoreboard players get @s trgip

# Guarda a posição do armor stand
execute as @s store result score @s trgx run data get entity @n[tag=trigarmor] Pos[0] 100
execute as @s store result score @s trgy run data get entity @n[tag=trigarmor] Pos[1] 100
execute as @s store result score @s trgz run data get entity @n[tag=trigarmor] Pos[2] 100

# Guarda a posição do jogador
execute as @s store result score @s slot001 run data get entity @s Pos[0] 100
execute as @s store result score @s slot002 run data get entity @s Pos[1] 100
execute as @s store result score @s slot003 run data get entity @s Pos[2] 100

# Elimina o armor stand
kill @e[tag=trigarmor]

# Calcula a diferença entre o armor stand e o jogador
scoreboard players operation @s trgx -= @s slot001
scoreboard players operation @s trgy -= @s slot002
scoreboard players operation @s trgz -= @s slot003