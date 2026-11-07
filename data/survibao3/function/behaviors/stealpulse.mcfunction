particle item{item:{id:diamond}} ~ ~1 ~ 4 4 4 1 500
playsound minecraft:item.mace.smash_ground_heavy ambient @a ~ ~ ~ 1 0.8
playsound minecraft:item.trident.thunder ambient @a ~ ~ ~
playsound minecraft:entity.allay.ambient_with_item ambient @a ~ ~ ~ 1 0.6

scoreboard players set dummy copykill 2401

execute as @p[tag=!cdm_original,distance=..8] run playsound block.beacon.activate ambient @a ~ ~ ~ 1 0.8

execute if entity @p[tag=!cdm_original,distance=..8,tag=cdm_13] run function survibao3:behaviors/get_13c
execute if entity @p[tag=!cdm_original,distance=..8,tag=cdm_mistico] run function survibao3:behaviors/get_misticoc
execute if entity @p[tag=!cdm_original,distance=..8,tag=cdm_original] run function survibao3:behaviors/get_cmdc
execute if entity @p[tag=!cdm_original,distance=..8,tag=cdm_requeijao] run function survibao3:behaviors/get_requeic
execute if entity @p[tag=!cdm_original,distance=..8,tag=cdm_torrado] run function survibao3:behaviors/get_netheritec
execute if entity @p[tag=!cdm_original,distance=..8,tag=cdm_vencido] run function survibao3:behaviors/get_vencidoc
execute if entity @p[tag=!cdm_original,distance=..8,tag=cdm_ventoso] run function survibao3:behaviors/get_ventosoc
execute if entity @p[tag=!cdm_original,distance=..8,tag=cdm_estragado] run function survibao3:behaviors/get_estragadoc
