execute as @n[tag=esmeralda] at @s run function survibao3:behaviors/esmerald_ring_loop1

scoreboard players add @s imposto 2

execute if score @s imposto matches 1800 run playsound entity.vex.charge ambient @a ~ ~ ~ 2
execute if score @s imposto matches 1800 run playsound minecraft:entity.item.break ambient @a ~ ~ ~ 1 1 0
execute if score @s imposto matches 1800 run particle angry_villager ~ ~ ~ 1 2 1 1 50
execute if score @s imposto matches 1800 unless items entity @s container.* emerald[!custom_data] run damage @s 2
execute if score @s imposto matches 1800 if items entity @s container.* emerald[!custom_data] run clear @s emerald[!minecraft:custom_data] 1
execute if score @s imposto matches 1800 run scoreboard players set @s imposto 0