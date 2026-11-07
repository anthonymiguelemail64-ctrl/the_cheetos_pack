playsound minecraft:block.amethyst_block.break ambient @a ~ ~ ~ 1 1.5
particle composter ~ ~1 ~ 0.1 0 0.1 0 10
tp @s ^ ^ ^-0.5
execute as @n[tag=cdm_estragado] run scoreboard players add @s emerald_loop 1

execute as @n[tag=!cdm_estragado,distance=..1,tag=!esmeralda] at @s run function survibao3:behaviors/esmerald_hit

execute as @n[tag=!cdm_estragado,distance=..1,tag=!esmeralda] run scoreboard players set @p[tag=cdm_estragado] emerald_loop 0
execute as @s at @s unless block ~ ~1 ~ air run scoreboard players set @p[tag=cdm_estragado] emerald_loop 0
execute as @n[tag=cdm_estragado] if score @s emerald_loop matches 20.. run scoreboard players set @s emerald_loop 0

execute if score @n[tag=cdm_estragado] emerald_loop matches ..0 run kill @s