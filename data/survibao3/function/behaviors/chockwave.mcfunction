playsound minecraft:entity.wind_charge.wind_burst player @s ~ ~ ~ 1 1 0
execute as @n[tag=hited_bp] at @s run particle dust{color:[1.0, 0.0, 0.0],scale:1} ~ ~ ~ 1 1 1 0.1 25 normal

execute as @s store result score @s trgip run data get entity @s Rotation[0] 100
execute as @s store result score @s trgiy run data get entity @s Rotation[1] 100

scoreboard players remove @s trgiy 2250

function survibao3:operations/trigonometry

scoreboard players set @s gm 3

scoreboard players operation @s trgx *= @s gm
scoreboard players operation @s trgy *= @s gm
scoreboard players operation @s trgz *= @s gm

execute as @s at @s store result entity @n[tag=hited_bp] Motion[0] double 0.01 run scoreboard players get @s trgx
execute as @s at @s store result entity @n[tag=hited_bp] Motion[1] double 0.01 run scoreboard players get @s trgy
execute as @s at @s store result entity @n[tag=hited_bp] Motion[2] double 0.01 run scoreboard players get @s trgz

execute as @n[tag=hited_bp] run effect give @s slowness 15 1 false
execute if entity @n[tag=hited_bp,type=player] run effect give @n[tag=hited_bp] minecraft:levitation 1 25