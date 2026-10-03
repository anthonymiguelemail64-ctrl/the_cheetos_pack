# Sumona uma bola de neve na frente do jogador
summon snowball ^ ^1.5 ^1 {Tags:["proj"]}

# Pré enche os parametros com o ângulo atual do jogador
execute as @s store result score @s trgip run data get entity @s Rotation[0] 100
execute as @s store result score @s trgiy run data get entity @s Rotation[1] 100

# Função de trigonometria
function survibao3:math/trig

# Multiplica o vetor pela velocidade desejada
scoreboard players set @s slot004 1
scoreboard players operation @s trgx *= @s slot004
scoreboard players operation @s trgy *= @s slot004
scoreboard players operation @s trgz *= @s slot004

scoreboard players list @s

# Aplica o vetor na bolinha de neve
execute as @n[tag=proj] at @s store result entity @s Motion[0] double 0.01 run scoreboard players get @p trgx
execute as @n[tag=proj] at @s store result entity @s Motion[1] double 0.01 run scoreboard players get @p trgy
execute as @n[tag=proj] at @s store result entity @s Motion[2] double 0.01 run scoreboard players get @p trgz
