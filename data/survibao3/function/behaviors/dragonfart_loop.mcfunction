particle portal ~ ~ ~ 5 5 5 0 1250
effect give @e[distance=..10, tag=!cdm_mistico] instant_damage 1
playsound ambient.basalt_deltas.additions ambient @a ~ ~ ~ 1 1
execute if score @p[tag=cdm_mistico] fart_timer matches ..0 run kill @s