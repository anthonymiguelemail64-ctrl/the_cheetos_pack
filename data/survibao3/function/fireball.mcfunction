summon fireball ^ ^1.5 ^1 {Tags:["bola1"],ExplosionPower:0b}

tag @s add callmath

execute as @s store result score @s trigoin1 run scoreboard players get @s prr
execute as @s store result score @s trigoin2 run scoreboard players get @s pry

function survibao3:trigonometria

tag @s remove callmath


execute as @s at @s store result entity @n[tag=bola1] Motion[0] float 0.01 run scoreboard players get @s trigoout1
execute as @s at @s store result entity @n[tag=bola1] Motion[1] float 0.01 run scoreboard players get @s trigoout2
execute as @s at @s store result entity @n[tag=bola1] Motion[2] float 0.01 run scoreboard players get @s trigoout3

tellraw @a {"score":{"name":"@s", "objective":"trigoout1"}}
tellraw @a {"score":{"name":"@s", "objective":"trigoout2"}}
tellraw @a {"score":{"name":"@s", "objective":"trigoout3"}}