tag @s add torrado
playsound minecraft:entity.dragon_fireball.explode ambient @a ~ ~ ~ 1 0.5
playsound entity.breeze.wind_burst ambient @a ~ ~ ~ 1 0.5
playsound item.mace.smash_ground_heavy ambient @a ~ ~ ~ 1 0.5
particle explosion ~ ~ ~ 10 0 10 0.5 100
execute if entity @e[tag=hited_bp,type=player,distance=..10,tag=!torrado] run effect give @e[tag=hited_bp,distance=..8] minecraft:levitation 1 25
execute as @e[distance=..10,tag=!torrado] run data modify entity @s Motion[1] set value 2
tag @s remove torrado